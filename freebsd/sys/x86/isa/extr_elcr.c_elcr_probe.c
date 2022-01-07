
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELCR_MASK (int) ;
 scalar_t__ ELCR_PORT ;
 int ENXIO ;
 scalar_t__ bootverbose ;
 int elcr_found ;
 int elcr_status ;
 int inb (scalar_t__) ;
 int printf (char*,...) ;
 scalar_t__ resource_disabled (char*,int ) ;

int
elcr_probe(void)
{
 int i;

 elcr_status = inb(ELCR_PORT) | inb(ELCR_PORT + 1) << 8;
 if ((elcr_status & (ELCR_MASK(0) | ELCR_MASK(1) | ELCR_MASK(2) |
     ELCR_MASK(8) | ELCR_MASK(13))) != 0)
  return (ENXIO);
 if (bootverbose) {
  printf("ELCR Found.  ISA IRQs programmed as:\n");
  for (i = 0; i < 16; i++)
   printf(" %2d", i);
  printf("\n");
  for (i = 0; i < 16; i++)
   if (elcr_status & ELCR_MASK(i))
    printf("  L");
   else
    printf("  E");
  printf("\n");
 }
 if (resource_disabled("elcr", 0))
  return (ENXIO);
 elcr_found = 1;
 return (0);
}
