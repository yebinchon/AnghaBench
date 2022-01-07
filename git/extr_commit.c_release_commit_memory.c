
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parsed_object_pool {int dummy; } ;
struct TYPE_2__ {scalar_t__ parsed; } ;
struct commit {TYPE_1__ object; int parents; scalar_t__ index; } ;


 int free_commit_buffer (struct parsed_object_pool*,struct commit*) ;
 int free_commit_list (int ) ;
 int set_commit_tree (struct commit*,int *) ;

void release_commit_memory(struct parsed_object_pool *pool, struct commit *c)
{
 set_commit_tree(c, ((void*)0));
 free_commit_buffer(pool, c);
 c->index = 0;
 free_commit_list(c->parents);

 c->object.parsed = 0;
}
