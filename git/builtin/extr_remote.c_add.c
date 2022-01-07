
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int buf; } ;
struct remote {int dummy; } ;
struct option {char* member_2; unsigned int* member_3; char* member_4; int member_6; int member_7; int member_5; int member_1; int member_0; } ;
struct TYPE_2__ {int string; } ;


 unsigned int MIRROR_FETCH ;
 unsigned int MIRROR_NONE ;
 unsigned int MIRROR_PUSH ;
 int N_ (char*) ;
 int OPTION_CALLBACK ;
 struct option OPT_BOOL (float,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_SET_INT (int ,char*,int*,int ,int) ;
 struct option OPT_STRING (char,char*,char const**,int ,int ) ;
 struct option OPT_STRING_LIST (char,char*,struct string_list*,int ,int ) ;
 int PARSE_OPT_COMP_ARG ;
 int PARSE_OPT_OPTARG ;
 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int TAGS_DEFAULT ;
 int TAGS_SET ;
 int TAGS_UNSET ;
 int _ (char*) ;
 int add_branch (int ,int ,char const*,unsigned int,struct strbuf*) ;
 int builtin_remote_add_usage ;
 scalar_t__ create_symref (int ,int ,char*) ;
 int die (int ,...) ;
 int error (int ,char const*) ;
 scalar_t__ fetch_remote (char const*) ;
 int git_config_set (int ,char const*) ;
 int parse_mirror_opt ;
 int parse_options (int,char const**,int *,struct option*,int ,int ) ;
 struct remote* remote_get (char const*) ;
 scalar_t__ remote_is_configured (struct remote*,int) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int string_list_append (struct string_list*,char*) ;
 int string_list_clear (struct string_list*,int ) ;
 int usage_with_options (int ,struct option*) ;
 int valid_fetch_refspec (int ) ;

__attribute__((used)) static int add(int argc, const char **argv)
{
 int fetch = 0, fetch_tags = TAGS_DEFAULT;
 unsigned mirror = MIRROR_NONE;
 struct string_list track = STRING_LIST_INIT_NODUP;
 const char *master = ((void*)0);
 struct remote *remote;
 struct strbuf buf = STRBUF_INIT, buf2 = STRBUF_INIT;
 const char *name, *url;
 int i;

 struct option options[] = {
  OPT_BOOL('f', "fetch", &fetch, N_("fetch the remote branches")),
  OPT_SET_INT(0, "tags", &fetch_tags,
       N_("import all tags and associated objects when fetching"),
       TAGS_SET),
  OPT_SET_INT(0, ((void*)0), &fetch_tags,
       N_("or do not fetch any tag at all (--no-tags)"), TAGS_UNSET),
  OPT_STRING_LIST('t', "track", &track, N_("branch"),
    N_("branch(es) to track")),
  OPT_STRING('m', "master", &master, N_("branch"), N_("master branch")),
  { OPTION_CALLBACK, 0, "mirror", &mirror, "(push|fetch)",
   N_("set up remote as a mirror to push to or fetch from"),
   PARSE_OPT_OPTARG | PARSE_OPT_COMP_ARG, parse_mirror_opt },
  OPT_END()
 };

 argc = parse_options(argc, argv, ((void*)0), options, builtin_remote_add_usage,
        0);

 if (argc != 2)
  usage_with_options(builtin_remote_add_usage, options);

 if (mirror && master)
  die(_("specifying a master branch makes no sense with --mirror"));
 if (mirror && !(mirror & MIRROR_FETCH) && track.nr)
  die(_("specifying branches to track makes sense only with fetch mirrors"));

 name = argv[0];
 url = argv[1];

 remote = remote_get(name);
 if (remote_is_configured(remote, 1))
  die(_("remote %s already exists."), name);

 strbuf_addf(&buf2, "refs/heads/test:refs/remotes/%s/test", name);
 if (!valid_fetch_refspec(buf2.buf))
  die(_("'%s' is not a valid remote name"), name);

 strbuf_addf(&buf, "remote.%s.url", name);
 git_config_set(buf.buf, url);

 if (!mirror || mirror & MIRROR_FETCH) {
  strbuf_reset(&buf);
  strbuf_addf(&buf, "remote.%s.fetch", name);
  if (track.nr == 0)
   string_list_append(&track, "*");
  for (i = 0; i < track.nr; i++) {
   add_branch(buf.buf, track.items[i].string,
       name, mirror, &buf2);
  }
 }

 if (mirror & MIRROR_PUSH) {
  strbuf_reset(&buf);
  strbuf_addf(&buf, "remote.%s.mirror", name);
  git_config_set(buf.buf, "true");
 }

 if (fetch_tags != TAGS_DEFAULT) {
  strbuf_reset(&buf);
  strbuf_addf(&buf, "remote.%s.tagopt", name);
  git_config_set(buf.buf,
          fetch_tags == TAGS_SET ? "--tags" : "--no-tags");
 }

 if (fetch && fetch_remote(name))
  return 1;

 if (master) {
  strbuf_reset(&buf);
  strbuf_addf(&buf, "refs/remotes/%s/HEAD", name);

  strbuf_reset(&buf2);
  strbuf_addf(&buf2, "refs/remotes/%s/%s", name, master);

  if (create_symref(buf.buf, buf2.buf, "remote add"))
   return error(_("Could not setup master '%s'"), master);
 }

 strbuf_release(&buf);
 strbuf_release(&buf2);
 string_list_clear(&track, 0);

 return 0;
}
