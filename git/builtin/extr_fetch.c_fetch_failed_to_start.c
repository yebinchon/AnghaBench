
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct parallel_fetch_state {int result; } ;


 int _ (char*) ;
 int error (int ,char const*) ;

__attribute__((used)) static int fetch_failed_to_start(struct strbuf *out, void *cb, void *task_cb)
{
 struct parallel_fetch_state *state = cb;
 const char *remote = task_cb;

 state->result = error(_("Could not fetch %s"), remote);

 return 0;
}
