
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit {TYPE_1__* parents; } ;
struct TYPE_2__ {scalar_t__ next; } ;



__attribute__((used)) static int is_a_merge(const struct commit *current_head)
{
 return !!(current_head->parents && current_head->parents->next);
}
