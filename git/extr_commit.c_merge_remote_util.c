
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_remote_desc {int dummy; } ;
struct commit {int dummy; } ;


 int merge_desc_slab ;
 struct merge_remote_desc** merge_desc_slab_at (int *,struct commit*) ;

struct merge_remote_desc *merge_remote_util(struct commit *commit)
{
 return *merge_desc_slab_at(&merge_desc_slab, commit);
}
