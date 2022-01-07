
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {int dummy; } ;


 int free_commit_list (struct commit_list*) ;
 struct commit_list* reduce_heads (struct commit_list*) ;

void reduce_heads_replace(struct commit_list **heads)
{
 struct commit_list *result = reduce_heads(*heads);
 free_commit_list(*heads);
 *heads = result;
}
