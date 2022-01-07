
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int PRNTSTYL_COMP ;
 int TIDTYPE_TCB ;
 int chip_id ;
 int htonl (scalar_t__) ;
 int parse_n_display_xcb (unsigned char*) ;
 int printf (char*,...) ;
 int set_print_style (int ) ;
 int set_tcb_info (int ,int ) ;
 int swizzle_tcb (unsigned char*) ;

__attribute__((used)) static void
show_tcb(uint32_t *buf, uint32_t len)
{
 unsigned char *tcb = (unsigned char *)buf;
 const char *s;
 int i, n = 8;

 while (len) {
  for (i = 0; len && i < n; i++, buf++, len -= 4) {
   s = i ? " " : "";
   printf("%s%08x", s, htonl(*buf));
  }
  printf("\n");
 }
 set_tcb_info(TIDTYPE_TCB, chip_id);
 set_print_style(PRNTSTYL_COMP);
 swizzle_tcb(tcb);
 parse_n_display_xcb(tcb);
}
