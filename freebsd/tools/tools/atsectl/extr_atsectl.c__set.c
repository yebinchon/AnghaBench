
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;
typedef int MD5_CTX ;


 int ALTERA_ETHERNET_OPTION_BITS_OFF ;
 int KENV_GET ;
 int MD5Final (int*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int*,int) ;
 int* block ;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ gflag ;
 int kenv (int ,char*,int*,int) ;
 int print_eaddr () ;
 int printf (char*) ;
 int read_block () ;
 int warnx (char*,...) ;
 int write_block () ;

__attribute__((used)) static void
_set(uint8_t *eaddr)
{
 uint8_t buf[32];
 MD5_CTX ctx;
 int rc;

 printf("Original:\n");
 read_block();
 print_eaddr();

 if (eaddr == ((void*)0)) {

  rc = kenv(KENV_GET, "cfi0.factory_ppr", buf, sizeof(buf));
  if (rc == -1)
   err(1, "Could not find Intel flash PPR serial\n");

  MD5Init(&ctx);
  MD5Update(&ctx, buf+2, 16);
  MD5Final(buf, &ctx);


  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 7] =
      buf[14] << 4 | buf[13] >> 4;
  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 8] =
      buf[13] << 4 | buf[12] >> 4;
  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 9] = buf[12] << 4;

  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 9] &= ~0x0f;


  if (gflag == 0)
   block[ALTERA_ETHERNET_OPTION_BITS_OFF + 4] |= 2;
  else
   block[ALTERA_ETHERNET_OPTION_BITS_OFF + 4] &= ~2;

  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 4] &= ~1;
 } else {
  int e;

  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 4] = eaddr[0];
  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 5] = eaddr[1];
  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 6] = eaddr[2];
  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 7] = eaddr[3];
  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 8] = eaddr[4];
  block[ALTERA_ETHERNET_OPTION_BITS_OFF + 9] = eaddr[5];

  e = 0;
  if ((eaddr[5] & 0xf) != 0x0) {
   e++;
   warnx("WARN: Selected Ethernet Address is "
       "not multi-MAC compatible.\n");
  }
  if (gflag == 0 && ((eaddr[0] & 0x2) == 0x0)) {
   e++;
   warnx("WARN: Locally administered bit not set.\n");
  }
  if ((eaddr[0] & 0x1) != 0x0) {
   e++;
   warnx("WARN: You are setting a Multicast address.\n");
  }
  if (e != 0)
   warnx("Suggesting to re-run with: "
       "%02x:%02x:%02x:%02x:%02x:%02x",
       (eaddr[0] & 0xfe) | 0x2,
       eaddr[1], eaddr[2], eaddr[3], eaddr[4],
       eaddr[5] & 0xf0);
 }


 block[ALTERA_ETHERNET_OPTION_BITS_OFF + 0] = 0xfe;
 block[ALTERA_ETHERNET_OPTION_BITS_OFF + 1] = 0x5a;
 block[ALTERA_ETHERNET_OPTION_BITS_OFF + 2] = 0x00;
 block[ALTERA_ETHERNET_OPTION_BITS_OFF + 3] = 0x00;

 write_block();

 printf("Updated to:\n");
 read_block();
 print_eaddr();
 exit(0);
}
