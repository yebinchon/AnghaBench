
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int sbuf_printf (struct sbuf*,char*,char const*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void
mem_region_show(struct sbuf *sb, const char *name, unsigned int from,
    unsigned int to)
{
 unsigned int size;

 if (from == to)
  return;

 size = to - from + 1;
 if (size == 0)
  return;


 sbuf_printf(sb, "%-15s %#x-%#x [%u]\n", name, from, to, size);
}
