
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sline {unsigned long* p_lno; } ;


 int printf (char*,unsigned long,unsigned long) ;

__attribute__((used)) static void show_parent_lno(struct sline *sline, unsigned long l0, unsigned long l1, int n, unsigned long null_context)
{
 l0 = sline[l0].p_lno[n];
 l1 = sline[l1].p_lno[n];
 printf(" -%lu,%lu", l0, l1-l0-null_context);
}
