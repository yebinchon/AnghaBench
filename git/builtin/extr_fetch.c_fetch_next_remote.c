
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct parallel_fetch_state {scalar_t__ next; int argv; TYPE_2__* remotes; } ;
struct child_process {int git_cmd; int args; } ;
struct TYPE_4__ {scalar_t__ nr; TYPE_1__* items; } ;
struct TYPE_3__ {char* string; } ;


 char* _ (char*) ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushv (int *,int ) ;
 int printf (char*,char*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int fetch_next_remote(struct child_process *cp, struct strbuf *out,
        void *cb, void **task_cb)
{
 struct parallel_fetch_state *state = cb;
 char *remote;

 if (state->next < 0 || state->next >= state->remotes->nr)
  return 0;

 remote = state->remotes->items[state->next++].string;
 *task_cb = remote;

 argv_array_pushv(&cp->args, state->argv);
 argv_array_push(&cp->args, remote);
 cp->git_cmd = 1;

 if (verbosity >= 0)
  printf(_("Fetching %s\n"), remote);

 return 1;
}
