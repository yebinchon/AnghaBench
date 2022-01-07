
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {int item; } ;


 int commit_weight ;
 int** commit_weight_at (int *,int ) ;

__attribute__((used)) static inline void weight_set(struct commit_list *elem, int weight)
{
 **commit_weight_at(&commit_weight, elem->item) = weight;
}
