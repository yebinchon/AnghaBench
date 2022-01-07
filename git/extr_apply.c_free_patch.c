
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {struct patch* result; struct patch* new_name; struct patch* old_name; struct patch* def_name; int fragments; } ;


 int free (struct patch*) ;
 int free_fragment_list (int ) ;

__attribute__((used)) static void free_patch(struct patch *patch)
{
 free_fragment_list(patch->fragments);
 free(patch->def_name);
 free(patch->old_name);
 free(patch->new_name);
 free(patch->result);
 free(patch);
}
