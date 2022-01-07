
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct am_state {int msg_len; int msg; } ;


 struct strbuf STRBUF_INIT ;
 int assert (int) ;
 scalar_t__ read_state_file (struct strbuf*,struct am_state*,char*,int ) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int read_commit_msg(struct am_state *state)
{
 struct strbuf sb = STRBUF_INIT;

 assert(!state->msg);

 if (read_state_file(&sb, state, "final-commit", 0) < 0) {
  strbuf_release(&sb);
  return -1;
 }

 state->msg = strbuf_detach(&sb, &state->msg_len);
 return 0;
}
