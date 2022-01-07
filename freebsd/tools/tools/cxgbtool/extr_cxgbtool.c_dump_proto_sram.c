
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ch_eeprom {int* data; int len; int offset; } ;
typedef int buf ;


 int CHELSIO_GET_EEPROM ;
 int PROTO_SRAM_EEPROM_ADDR ;
 int PROTO_SRAM_LINES ;
 int PROTO_SRAM_LINE_NIBBLES ;
 int PROTO_SRAM_SIZE ;
 int bzero (int*,int) ;
 scalar_t__ doit (char const*,int ,struct ch_eeprom*) ;
 int err (int,char*) ;
 int printf (char*,int) ;
 int putchar (char) ;

__attribute__((used)) static int
dump_proto_sram(const char *iff_name)
{
 int i, j;
 uint8_t buf[PROTO_SRAM_SIZE];
 struct ch_eeprom ee;
 uint8_t *p = buf;

 bzero(buf, sizeof(buf));
 ee.offset = PROTO_SRAM_EEPROM_ADDR;
 ee.data = p;
 ee.len = sizeof(buf);
 if (doit(iff_name, CHELSIO_GET_EEPROM, &ee))
  err(1, "show protocol sram");

 for (i = 0; i < PROTO_SRAM_LINES; i++) {
  for (j = PROTO_SRAM_LINE_NIBBLES - 1; j >= 0; j--) {
   int nibble_idx = i * PROTO_SRAM_LINE_NIBBLES + j;
   uint8_t nibble = p[nibble_idx / 2];

   if (nibble_idx & 1)
    nibble >>= 4;
   else
    nibble &= 0xf;
   printf("%x", nibble);
  }
  putchar('\n');
 }
 return 0;
}
