
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_entry {scalar_t__ suspect; scalar_t__ s_lno; } ;



__attribute__((used)) static int compare_blame_suspect(const void *p1, const void *p2)
{
 const struct blame_entry *s1 = p1, *s2 = p2;







 if (s1->suspect != s2->suspect)
  return (intptr_t)s1->suspect > (intptr_t)s2->suspect ? 1 : -1;
 if (s1->s_lno == s2->s_lno)
  return 0;
 return s1->s_lno > s2->s_lno ? 1 : -1;
}
