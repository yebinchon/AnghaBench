
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {int next; } ;


 int gcov_info_head ;

void
gcov_info_unlink(struct gcov_info *prev, struct gcov_info *info)
{
 if (prev)
  prev->next = info->next;
 else
  gcov_info_head = info->next;
}
