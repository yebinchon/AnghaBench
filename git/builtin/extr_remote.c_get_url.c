
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {char** pushurl; int pushurl_nr; char** url; int url_nr; } ;
struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_END () ;
 int _ (char*) ;
 int builtin_remote_geturl_usage ;
 int die (int ,char const*) ;
 int parse_options (int,char const**,int *,struct option*,int ,int ) ;
 int printf_ln (char*,char const*) ;
 struct remote* remote_get (char const*) ;
 int remote_is_configured (struct remote*,int) ;
 int usage_with_options (int ,struct option*) ;

__attribute__((used)) static int get_url(int argc, const char **argv)
{
 int i, push_mode = 0, all_mode = 0;
 const char *remotename = ((void*)0);
 struct remote *remote;
 const char **url;
 int url_nr;
 struct option options[] = {
  OPT_BOOL('\0', "push", &push_mode,
    N_("query push URLs rather than fetch URLs")),
  OPT_BOOL('\0', "all", &all_mode,
    N_("return all URLs")),
  OPT_END()
 };
 argc = parse_options(argc, argv, ((void*)0), options, builtin_remote_geturl_usage, 0);

 if (argc != 1)
  usage_with_options(builtin_remote_geturl_usage, options);

 remotename = argv[0];

 remote = remote_get(remotename);
 if (!remote_is_configured(remote, 1))
  die(_("No such remote '%s'"), remotename);

 url_nr = 0;
 if (push_mode) {
  url = remote->pushurl;
  url_nr = remote->pushurl_nr;
 }



 if (!url_nr) {
  url = remote->url;
  url_nr = remote->url_nr;
 }

 if (!url_nr)
  die(_("no URLs configured for remote '%s'"), remotename);

 if (all_mode) {
  for (i = 0; i < url_nr; i++)
   printf_ln("%s", url[i]);
 } else {
  printf_ln("%s", *url);
 }

 return 0;
}
