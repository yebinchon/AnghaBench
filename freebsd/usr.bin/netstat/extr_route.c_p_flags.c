
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bits {int b_mask; int b_name; } ;


 struct bits* bits ;
 int fmt_flags (int) ;
 int xo_close_list (char*) ;
 int xo_emit (char const*,int ) ;
 int xo_open_list (char*) ;

__attribute__((used)) static void
p_flags(int f, const char *format)
{
 struct bits *p;

 xo_emit(format, fmt_flags(f));

 xo_open_list("flags_pretty");
 for (p = bits; p->b_mask; p++)
  if (p->b_mask & f)
   xo_emit("{le:flags_pretty/%s}", p->b_name);
 xo_close_list("flags_pretty");
}
