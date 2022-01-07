
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct remote {char** pushurl; int pushurl_nr; char** url; int url_nr; } ;
struct option {int dummy; } ;
typedef int regex_t ;


 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_END () ;
 int PARSE_OPT_KEEP_ARGV0 ;
 int REG_EXTENDED ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int builtin_remote_seturl_usage ;
 int die (int ,...) ;
 int git_config_set (int ,char const*) ;
 int git_config_set_multivar (int ,char const*,char const*,int) ;
 int parse_options (int,char const**,int *,struct option*,int ,int ) ;
 scalar_t__ regcomp (int *,char const*,int ) ;
 int regexec (int *,char const*,int ,int *,int ) ;
 int regfree (int *) ;
 struct remote* remote_get (char const*) ;
 int remote_is_configured (struct remote*,int) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int usage_with_options (int ,struct option*) ;

__attribute__((used)) static int set_url(int argc, const char **argv)
{
 int i, push_mode = 0, add_mode = 0, delete_mode = 0;
 int matches = 0, negative_matches = 0;
 const char *remotename = ((void*)0);
 const char *newurl = ((void*)0);
 const char *oldurl = ((void*)0);
 struct remote *remote;
 regex_t old_regex;
 const char **urlset;
 int urlset_nr;
 struct strbuf name_buf = STRBUF_INIT;
 struct option options[] = {
  OPT_BOOL('\0', "push", &push_mode,
    N_("manipulate push URLs")),
  OPT_BOOL('\0', "add", &add_mode,
    N_("add URL")),
  OPT_BOOL('\0', "delete", &delete_mode,
       N_("delete URLs")),
  OPT_END()
 };
 argc = parse_options(argc, argv, ((void*)0), options, builtin_remote_seturl_usage,
        PARSE_OPT_KEEP_ARGV0);

 if (add_mode && delete_mode)
  die(_("--add --delete doesn't make sense"));

 if (argc < 3 || argc > 4 || ((add_mode || delete_mode) && argc != 3))
  usage_with_options(builtin_remote_seturl_usage, options);

 remotename = argv[1];
 newurl = argv[2];
 if (argc > 3)
  oldurl = argv[3];

 if (delete_mode)
  oldurl = newurl;

 remote = remote_get(remotename);
 if (!remote_is_configured(remote, 1))
  die(_("No such remote '%s'"), remotename);

 if (push_mode) {
  strbuf_addf(&name_buf, "remote.%s.pushurl", remotename);
  urlset = remote->pushurl;
  urlset_nr = remote->pushurl_nr;
 } else {
  strbuf_addf(&name_buf, "remote.%s.url", remotename);
  urlset = remote->url;
  urlset_nr = remote->url_nr;
 }


 if ((!oldurl && !delete_mode) || add_mode) {
  if (add_mode)
   git_config_set_multivar(name_buf.buf, newurl,
             "^$", 0);
  else
   git_config_set(name_buf.buf, newurl);
  goto out;
 }


 if (regcomp(&old_regex, oldurl, REG_EXTENDED))
  die(_("Invalid old URL pattern: %s"), oldurl);

 for (i = 0; i < urlset_nr; i++)
  if (!regexec(&old_regex, urlset[i], 0, ((void*)0), 0))
   matches++;
  else
   negative_matches++;
 if (!delete_mode && !matches)
  die(_("No such URL found: %s"), oldurl);
 if (delete_mode && !negative_matches && !push_mode)
  die(_("Will not delete all non-push URLs"));

 regfree(&old_regex);

 if (!delete_mode)
  git_config_set_multivar(name_buf.buf, newurl, oldurl, 0);
 else
  git_config_set_multivar(name_buf.buf, ((void*)0), oldurl, 1);
out:
 strbuf_release(&name_buf);
 return 0;
}
