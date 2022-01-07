
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
struct seeprom_descriptor {scalar_t__ sd_chip; int sd_MS; int sd_CS; int sd_DO; int sd_CK; int sd_DI; int sd_RDY; } ;
struct seeprom_cmd {int dummy; } ;


 scalar_t__ C46 ;
 scalar_t__ C56_66 ;
 int CLOCK_PULSE (struct seeprom_descriptor*,int ) ;
 int SEEPROM_DATA_INB (struct seeprom_descriptor*) ;
 int SEEPROM_OUTB (struct seeprom_descriptor*,int) ;
 int printf (char*,scalar_t__) ;
 int reset_seeprom (struct seeprom_descriptor*) ;
 struct seeprom_cmd seeprom_ewds ;
 struct seeprom_cmd seeprom_ewen ;
 struct seeprom_cmd seeprom_long_ewds ;
 struct seeprom_cmd seeprom_long_ewen ;
 struct seeprom_cmd seeprom_write ;
 int send_seeprom_cmd (struct seeprom_descriptor*,struct seeprom_cmd*) ;

int
ahc_write_seeprom(struct seeprom_descriptor *sd, uint16_t *buf,
    u_int start_addr, u_int count)
{
 struct seeprom_cmd *ewen, *ewds;
 uint16_t v;
 uint8_t temp;
 int i, k;


 if (sd->sd_chip == C46) {
  ewen = &seeprom_ewen;
  ewds = &seeprom_ewds;
 } else if (sd->sd_chip == C56_66) {
  ewen = &seeprom_long_ewen;
  ewds = &seeprom_long_ewds;
 } else {
  printf("ahc_write_seeprom: unsupported seeprom type %d\n",
         sd->sd_chip);
  return (0);
 }

 send_seeprom_cmd(sd, ewen);
 reset_seeprom(sd);


 temp = sd->sd_MS ^ sd->sd_CS;
 for (k = start_addr; k < count + start_addr; k++) {

  send_seeprom_cmd(sd, &seeprom_write);


  for (i = (sd->sd_chip - 1); i >= 0; i--) {
   if ((k & (1 << i)) != 0)
    temp ^= sd->sd_DO;
   SEEPROM_OUTB(sd, temp);
   CLOCK_PULSE(sd, sd->sd_RDY);
   SEEPROM_OUTB(sd, temp ^ sd->sd_CK);
   CLOCK_PULSE(sd, sd->sd_RDY);
   if ((k & (1 << i)) != 0)
    temp ^= sd->sd_DO;
  }


  v = buf[k - start_addr];
  for (i = 15; i >= 0; i--) {
   if ((v & (1 << i)) != 0)
    temp ^= sd->sd_DO;
   SEEPROM_OUTB(sd, temp);
   CLOCK_PULSE(sd, sd->sd_RDY);
   SEEPROM_OUTB(sd, temp ^ sd->sd_CK);
   CLOCK_PULSE(sd, sd->sd_RDY);
   if ((v & (1 << i)) != 0)
    temp ^= sd->sd_DO;
  }


  temp = sd->sd_MS;
  SEEPROM_OUTB(sd, temp);
  CLOCK_PULSE(sd, sd->sd_RDY);
  temp = sd->sd_MS ^ sd->sd_CS;
  do {
   SEEPROM_OUTB(sd, temp);
   CLOCK_PULSE(sd, sd->sd_RDY);
   SEEPROM_OUTB(sd, temp ^ sd->sd_CK);
   CLOCK_PULSE(sd, sd->sd_RDY);
  } while ((SEEPROM_DATA_INB(sd) & sd->sd_DI) == 0);

  reset_seeprom(sd);
 }


 send_seeprom_cmd(sd, ewds);
 reset_seeprom(sd);

 return (1);
}
