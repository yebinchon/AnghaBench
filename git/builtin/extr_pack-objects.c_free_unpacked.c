
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpacked {scalar_t__ depth; int * entry; scalar_t__ data; int * index; } ;


 int FREE_AND_NULL (scalar_t__) ;
 scalar_t__ SIZE (int *) ;
 int free_delta_index (int *) ;
 unsigned long sizeof_delta_index (int *) ;

__attribute__((used)) static unsigned long free_unpacked(struct unpacked *n)
{
 unsigned long freed_mem = sizeof_delta_index(n->index);
 free_delta_index(n->index);
 n->index = ((void*)0);
 if (n->data) {
  freed_mem += SIZE(n->entry);
  FREE_AND_NULL(n->data);
 }
 n->entry = ((void*)0);
 n->depth = 0;
 return freed_mem;
}
