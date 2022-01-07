
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*) ;
 int free (char*) ;
 char* get_default_remote () ;
 scalar_t__ git_config_get_string (int ,char**) ;
 int puts (char*) ;
 char* relative_url (char*,char const*,char const*) ;
 int strbuf_addf (struct strbuf*,char*,char*) ;
 char* xgetcwd () ;

__attribute__((used)) static int resolve_relative_url(int argc, const char **argv, const char *prefix)
{
 char *remoteurl = ((void*)0);
 char *remote = get_default_remote();
 const char *up_path = ((void*)0);
 char *res;
 const char *url;
 struct strbuf sb = STRBUF_INIT;

 if (argc != 2 && argc != 3)
  die("resolve-relative-url only accepts one or two arguments");

 url = argv[1];
 strbuf_addf(&sb, "remote.%s.url", remote);
 free(remote);

 if (git_config_get_string(sb.buf, &remoteurl))

  remoteurl = xgetcwd();

 if (argc == 3)
  up_path = argv[2];

 res = relative_url(remoteurl, url, up_path);
 puts(res);
 free(res);
 free(remoteurl);
 return 0;
}
