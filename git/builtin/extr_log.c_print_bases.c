
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct base_tree_info {int nr_patch_id; int base_commit; scalar_t__ alloc_patch_id; int * patch_id; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int free (int *) ;
 scalar_t__ is_null_oid (int *) ;
 char* oid_to_hex (int *) ;
 int oidclr (int *) ;

__attribute__((used)) static void print_bases(struct base_tree_info *bases, FILE *file)
{
 int i;


 if (is_null_oid(&bases->base_commit))
  return;


 fprintf(file, "\nbase-commit: %s\n", oid_to_hex(&bases->base_commit));


 for (i = bases->nr_patch_id - 1; i >= 0; i--)
  fprintf(file, "prerequisite-patch-id: %s\n", oid_to_hex(&bases->patch_id[i]));

 free(bases->patch_id);
 bases->nr_patch_id = 0;
 bases->alloc_patch_id = 0;
 oidclr(&bases->base_commit);
}
