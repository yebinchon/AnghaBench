
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_registers {int dummy; } ;
struct re_pattern_buffer {int dummy; } ;


 int re_search_stub (struct re_pattern_buffer*,char const*,int,int,int ,int,struct re_registers*,int) ;

int
re_match (struct re_pattern_buffer *bufp,
   const char *string,
   int length,
   int start,
   struct re_registers *regs)
{
  return re_search_stub (bufp, string, length, start, 0, length, regs, 1);
}
