
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_iterator {struct gcov_info* info; } ;
struct gcov_info {int dummy; } ;



struct gcov_info *
gcov_iter_get_info(struct gcov_iterator *iter)
{
 return (iter->info);
}
