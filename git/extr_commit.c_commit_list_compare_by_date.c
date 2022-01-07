
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ timestamp_t ;
struct commit_list {TYPE_1__* item; } ;
struct TYPE_2__ {scalar_t__ date; } ;



__attribute__((used)) static int commit_list_compare_by_date(const void *a, const void *b)
{
 timestamp_t a_date = ((const struct commit_list *)a)->item->date;
 timestamp_t b_date = ((const struct commit_list *)b)->item->date;
 if (a_date < b_date)
  return 1;
 if (a_date > b_date)
  return -1;
 return 0;
}
