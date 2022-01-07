
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_state {int git_apply_opts; int msg; int author_date; int author_email; int author_name; int dir; } ;


 int argv_array_clear (int *) ;
 int free (int ) ;

__attribute__((used)) static void am_state_release(struct am_state *state)
{
 free(state->dir);
 free(state->author_name);
 free(state->author_email);
 free(state->author_date);
 free(state->msg);
 argv_array_clear(&state->git_apply_opts);
}
