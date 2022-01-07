
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int CIS_IRQ_IRQN (int) ;
 int CIS_IRQ_LEVEL ;
 int CIS_IRQ_MASK ;
 int CIS_IRQ_PULSE ;
 int CIS_IRQ_SHARING ;
 int printf (char*,...) ;
 int putchar (char) ;
 int tpl16 (int*) ;

__attribute__((used)) static u_char *
print_irq_map(u_char *p, u_char *q)
{
 int i, j;
 u_char c;

 if (q <= p)
  goto err;
 printf("\t\tIRQ modes:");
 c = ' ';
 if (*p & CIS_IRQ_LEVEL) {
  printf(" Level");
  c = ',';
 }
 if (*p & CIS_IRQ_PULSE) {
  printf("%c Pulse", c);
  c = ',';
 }
 if (*p & CIS_IRQ_SHARING)
  printf("%c Shared", c);
 putchar('\n');


 if (*p & CIS_IRQ_MASK) {
  if (q - p < 3)
   goto err;
  i = tpl16(p + 1);
  printf("\t\tIRQs: ");
  if (*p & 1)
   printf(" NMI");
  if (*p & 0x2)
   printf(" IOCK");
  if (*p & 0x4)
   printf(" BERR");
  if (*p & 0x8)
   printf(" VEND");
  for (j = 0; j < 16; j++)
   if (i & (1 << j))
    printf(" %d", j);
  putchar('\n');
  p += 3;
 } else {
  printf("\t\tIRQ level = %d\n", CIS_IRQ_IRQN(*p));
  p++;
 }
 return p;

 err:
 printf("\tWrong length for IRQ sub-tuple\n");
 return p;
}
