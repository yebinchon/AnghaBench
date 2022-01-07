
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct ref_states {TYPE_2__ heads; } ;
struct option {int dummy; } ;
typedef int states ;
struct TYPE_3__ {char* string; } ;


 int GET_HEAD_NAMES ;
 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_END () ;
 int REF_NO_DEREF ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int builtin_remote_sethead_usage ;
 scalar_t__ create_symref (int ,int ,char*) ;
 scalar_t__ delete_ref (int *,int ,int *,int ) ;
 int error (int ,...) ;
 int fprintf (int ,char*,char const*,char*) ;
 int free (char*) ;
 int free_remote_ref_states (struct ref_states*) ;
 int get_remote_ref_states (char const*,struct ref_states*,int ) ;
 int memset (struct ref_states*,int ,int) ;
 int parse_options (int,char const**,int *,struct option*,int ,int ) ;
 int printf (char*,char const*,char*) ;
 int ref_exists (int ) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_release (struct strbuf*) ;
 int usage_with_options (int ,struct option*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int set_head(int argc, const char **argv)
{
 int i, opt_a = 0, opt_d = 0, result = 0;
 struct strbuf buf = STRBUF_INIT, buf2 = STRBUF_INIT;
 char *head_name = ((void*)0);

 struct option options[] = {
  OPT_BOOL('a', "auto", &opt_a,
    N_("set refs/remotes/<name>/HEAD according to remote")),
  OPT_BOOL('d', "delete", &opt_d,
    N_("delete refs/remotes/<name>/HEAD")),
  OPT_END()
 };
 argc = parse_options(argc, argv, ((void*)0), options, builtin_remote_sethead_usage,
        0);
 if (argc)
  strbuf_addf(&buf, "refs/remotes/%s/HEAD", argv[0]);

 if (!opt_a && !opt_d && argc == 2) {
  head_name = xstrdup(argv[1]);
 } else if (opt_a && !opt_d && argc == 1) {
  struct ref_states states;
  memset(&states, 0, sizeof(states));
  get_remote_ref_states(argv[0], &states, GET_HEAD_NAMES);
  if (!states.heads.nr)
   result |= error(_("Cannot determine remote HEAD"));
  else if (states.heads.nr > 1) {
   result |= error(_("Multiple remote HEAD branches. "
       "Please choose one explicitly with:"));
   for (i = 0; i < states.heads.nr; i++)
    fprintf(stderr, "  git remote set-head %s %s\n",
     argv[0], states.heads.items[i].string);
  } else
   head_name = xstrdup(states.heads.items[0].string);
  free_remote_ref_states(&states);
 } else if (opt_d && !opt_a && argc == 1) {
  if (delete_ref(((void*)0), buf.buf, ((void*)0), REF_NO_DEREF))
   result |= error(_("Could not delete %s"), buf.buf);
 } else
  usage_with_options(builtin_remote_sethead_usage, options);

 if (head_name) {
  strbuf_addf(&buf2, "refs/remotes/%s/%s", argv[0], head_name);

  if (!ref_exists(buf2.buf))
   result |= error(_("Not a valid ref: %s"), buf2.buf);
  else if (create_symref(buf.buf, buf2.buf, "remote set-head"))
   result |= error(_("Could not setup %s"), buf.buf);
  if (opt_a)
   printf("%s/HEAD set to %s\n", argv[0], head_name);
  free(head_name);
 }

 strbuf_release(&buf);
 strbuf_release(&buf2);
 return result;
}
