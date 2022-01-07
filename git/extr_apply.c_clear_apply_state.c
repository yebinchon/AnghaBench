
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apply_state {int root; int symlink_changes; int limit_by_name; } ;


 int strbuf_release (int *) ;
 int string_list_clear (int *,int ) ;

void clear_apply_state(struct apply_state *state)
{
 string_list_clear(&state->limit_by_name, 0);
 string_list_clear(&state->symlink_changes, 0);
 strbuf_release(&state->root);


}
