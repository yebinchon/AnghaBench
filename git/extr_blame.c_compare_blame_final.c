
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_entry {scalar_t__ lno; } ;



__attribute__((used)) static int compare_blame_final(const void *p1, const void *p2)
{
 return ((struct blame_entry *)p1)->lno > ((struct blame_entry *)p2)->lno
  ? 1 : -1;
}
