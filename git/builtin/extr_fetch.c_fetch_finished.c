
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct parallel_fetch_state {int result; } ;


 int _ (char*) ;
 int strbuf_addf (struct strbuf*,int ,char const*,int) ;

__attribute__((used)) static int fetch_finished(int result, struct strbuf *out,
     void *cb, void *task_cb)
{
 struct parallel_fetch_state *state = cb;
 const char *remote = task_cb;

 if (result) {
  strbuf_addf(out, _("could not fetch '%s' (exit code: %d)\n"),
       remote, result);
  state->result = -1;
 }

 return 0;
}
