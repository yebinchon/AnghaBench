
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_registers {int dummy; } ;
struct re_pattern_buffer {int dummy; } ;


 int re_search_2_stub (struct re_pattern_buffer*,char const*,int,char const*,int,int,int,struct re_registers*,int,int ) ;

int
re_search_2 (struct re_pattern_buffer *bufp,
      const char *string1, int length1,
      const char *string2, int length2, int start,
      int range, struct re_registers *regs, int stop)
{
  return re_search_2_stub (bufp, string1, length1, string2, length2,
      start, range, regs, stop, 0);
}
