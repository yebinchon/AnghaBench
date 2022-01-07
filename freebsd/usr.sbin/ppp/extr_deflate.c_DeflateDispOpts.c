
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsm_opt {int* data; } ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char *
DeflateDispOpts(struct fsm_opt *o)
{
  static char disp[7];

  sprintf(disp, "win %d", (o->data[0]>>4) + 8);
  return disp;
}
