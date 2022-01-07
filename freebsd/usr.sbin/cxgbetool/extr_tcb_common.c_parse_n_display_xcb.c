
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_got_fcb ;
 scalar_t__ g_got_scb ;
 int parse_n_display_fcb (unsigned char*) ;
 int parse_n_display_scb (unsigned char*) ;
 int parse_n_display_tcb (unsigned char*) ;

void
parse_n_display_xcb(unsigned char *buf)
{
  if (g_got_scb) parse_n_display_scb(buf);
  else if (g_got_fcb) parse_n_display_fcb(buf);
  else parse_n_display_tcb(buf);
}
