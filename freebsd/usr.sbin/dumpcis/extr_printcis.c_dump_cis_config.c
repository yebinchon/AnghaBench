
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tuple {int* data; int length; scalar_t__ code; } ;


 scalar_t__ CIS_CONFIG ;
 int CIS_FEAT_IRQ ;
 int CIS_FEAT_I_O ;
 scalar_t__ CIS_FEAT_MEMORY (int) ;
 int CIS_FEAT_MISC ;
 int CIS_FEAT_POWER (int) ;
 int CIS_FEAT_TIMING ;
 int CIS_READY_SCALE (int) ;
 int CIS_RESERVED_SCALE (int) ;
 int CIS_WAIT_SCALE (int) ;
 int print_ext_speed (int ,int) ;
 int* print_io_map (int*,int*) ;
 int* print_irq_map (int*,int*) ;
 int* print_mem_map (int,int*,int*) ;
 int print_pwr_desc (int*) ;
 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void
dump_cis_config(struct tuple *tp)
{
 u_char *p, *q, feat;
 int i, j;
 char c;

 p = tp->data;
 q = p + tp->length;
 printf("\tConfig index = 0x%x%s\n", *p & 0x3F,
        *p & 0x40 ? "(default)" : "");


 if (tp->code == CIS_CONFIG && (*p & 0x80)) {
  p++;
  printf("\tInterface byte = 0x%x ", *p);
  switch (*p & 0xF) {
  default:
   printf("(reserved)");
   break;
  case 0:
   printf("(memory)");
   break;
  case 1:
   printf("(I/O)");
   break;
  case 4:
  case 5:
  case 6:
  case 7:
  case 8:
   printf("(custom)");
   break;
  }
  c = ' ';
  if (*p & 0x10) {
   printf(" BVD1/2 active");
   c = ',';
  }
  if (*p & 0x20) {
   printf("%c card WP active", c);
   c = ',';
  }
  if (*p & 0x40) {
   printf("%c +RDY/-BSY active", c);
   c = ',';
  }
  if (*p & 0x80)
   printf("%c wait signal supported", c);
  printf("\n");
 }


 p++;
 feat = *p++;


 switch (CIS_FEAT_POWER(feat)) {
 case 0:
  break;
 case 1:
  printf("\tVcc pwr:\n");
  p += print_pwr_desc(p);
  break;
 case 2:
  printf("\tVcc pwr:\n");
  p += print_pwr_desc(p);
  printf("\tVpp pwr:\n");
  p += print_pwr_desc(p);
  break;
 case 3:
  printf("\tVcc pwr:\n");
  p += print_pwr_desc(p);
  printf("\tVpp1 pwr:\n");
  p += print_pwr_desc(p);
  printf("\tVpp2 pwr:\n");
  p += print_pwr_desc(p);
  break;
 }


 if (tp->code == CIS_CONFIG &&
     (feat & CIS_FEAT_TIMING)) {
  i = *p++;
  j = CIS_WAIT_SCALE(i);
  if (j != 3) {
   printf("\tWait scale ");
   print_ext_speed(*p++, j);
   printf("\n");
  }
  j = CIS_READY_SCALE(i);
  if (j != 7) {
   printf("\tRDY/BSY scale ");
   print_ext_speed(*p++, j);
   printf("\n");
  }
  j = CIS_RESERVED_SCALE(i);
  if (j != 7) {
   printf("\tExternal scale ");
   print_ext_speed(*p++, j);
   printf("\n");
  }
 }


 if (feat & CIS_FEAT_I_O) {
  if (tp->code == CIS_CONFIG)
   p = print_io_map(p, q);
  else {
   printf("\tI/O base:");
   for (i = 0; i < 8; i++)
    if (*p & (1 << i))
     printf(" %d", i);
   putchar('\n');
   p++;
  }
 }


 if (feat & CIS_FEAT_IRQ)
  p = print_irq_map(p, q);


 if (CIS_FEAT_MEMORY(feat)) {
  if (tp->code == CIS_CONFIG)
   p = print_mem_map(feat, p, q);
  else {
   printf("\tMemory base:");
   for (i = 0; i < 8; i++)
    if (*p & (1 << i))
     printf(" %d", i);
   putchar('\n');
   p++;
  }
 }


 if (feat & CIS_FEAT_MISC) {
  if (tp->code == CIS_CONFIG) {
   printf("\tMax twin cards = %d\n", *p & 7);
   printf("\tMisc attr:%s%s%s",
          (*p & 8) ? " (Audio-BVD2)" : "",
          (*p & 0x10) ? " (Read-only)" : "",
          (*p & 0x20) ? " (Power down supported)" : "");
   if (*p++ & 0x80) {
    printf(" (Ext byte = 0x%x)", *p);
    p++;
   }
   putchar('\n');
  }
  else {
   printf("\tMisc attr:");
   printf("%s%s%s%s%s%s%s",
          (*p & 1) ? " (Master)" : "",
          (*p & 2) ? " (Invalidate)" : "",
          (*p & 4) ? " (VGA palette)" : "",
          (*p & 8) ? " (Parity)" : "",
          (*p & 0x10) ? " (Wait)" : "",
          (*p & 0x20) ? " (Serr)" : "",
          (*p & 0x40) ? " (Fast back)" : "");
   if (*p++ & 0x80) {
    printf("%s%s",
           (*p & 1) ? " (Binary audio)" : "",
           (*p & 2) ? " (pwm audio)" : "");
    p++;
   }
   putchar('\n');
  }
 }
}
