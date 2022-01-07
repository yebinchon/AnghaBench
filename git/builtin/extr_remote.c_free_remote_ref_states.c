
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_states {int push; int heads; int tracked; int stale; int new_refs; } ;


 int clear_push_info ;
 int string_list_clear (int *,int) ;
 int string_list_clear_func (int *,int ) ;

__attribute__((used)) static void free_remote_ref_states(struct ref_states *states)
{
 string_list_clear(&states->new_refs, 0);
 string_list_clear(&states->stale, 1);
 string_list_clear(&states->tracked, 0);
 string_list_clear(&states->heads, 0);
 string_list_clear_func(&states->push, clear_push_info);
}
