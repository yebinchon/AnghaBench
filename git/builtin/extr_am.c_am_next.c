
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct am_state {int cur; int orig_commit; scalar_t__ msg_len; int msg; int author_date; int author_email; int author_name; } ;


 int FREE_AND_NULL (int ) ;
 int REF_NO_DEREF ;
 int am_path (struct am_state*,char*) ;
 int delete_ref (int *,char*,int *,int ) ;
 int get_oid (char*,struct object_id*) ;
 char* oid_to_hex (struct object_id*) ;
 int oidclr (int *) ;
 int unlink (int ) ;
 int write_state_count (struct am_state*,char*,int ) ;
 int write_state_text (struct am_state*,char*,char*) ;

__attribute__((used)) static void am_next(struct am_state *state)
{
 struct object_id head;

 FREE_AND_NULL(state->author_name);
 FREE_AND_NULL(state->author_email);
 FREE_AND_NULL(state->author_date);
 FREE_AND_NULL(state->msg);
 state->msg_len = 0;

 unlink(am_path(state, "author-script"));
 unlink(am_path(state, "final-commit"));

 oidclr(&state->orig_commit);
 unlink(am_path(state, "original-commit"));
 delete_ref(((void*)0), "REBASE_HEAD", ((void*)0), REF_NO_DEREF);

 if (!get_oid("HEAD", &head))
  write_state_text(state, "abort-safety", oid_to_hex(&head));
 else
  write_state_text(state, "abort-safety", "");

 state->cur++;
 write_state_count(state, "next", state->cur);
}
