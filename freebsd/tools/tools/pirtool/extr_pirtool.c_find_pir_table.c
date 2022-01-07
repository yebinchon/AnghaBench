
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int major; scalar_t__ minor; int size; } ;
typedef TYPE_1__ pir_table_t ;


 int PIR_SIZE ;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ strncmp (unsigned char*,char*,int) ;

pir_table_t *
find_pir_table(unsigned char *base)
{
 unsigned int csum = 0;
 unsigned char *p, *pend;
 pir_table_t *pir = ((void*)0);
 pend = base + PIR_SIZE;
 for (p = base; p < pend; p += 16) {
  if (strncmp(p, "$PIR", 4) == 0) {
   pir = (pir_table_t *)p;
   break;
  }
 }







 if (pir && (pir->major == 1) && (pir->minor == 0) &&
     (pir->size > 32) && ((pir->size % 16) == 0)) {
  p = (unsigned char *)pir;
  pend = p + pir->size;

  while (p < pend)
   csum += *p++;

  if ((csum % 256) != 0)
   fprintf(stderr,
       "WARNING: PIR table checksum is invalid.\n");
 }

 return ((pir_table_t *)pir);
}
