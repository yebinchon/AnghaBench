
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 int free (char*) ;
 int puts (char*) ;
 char* relative_url (char*,char const*,char const*) ;
 int strcmp (char const*,char*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int resolve_relative_url_test(int argc, const char **argv, const char *prefix)
{
 char *remoteurl, *res;
 const char *up_path, *url;

 if (argc != 4)
  die("resolve-relative-url-test only accepts three arguments: <up_path> <remoteurl> <url>");

 up_path = argv[1];
 remoteurl = xstrdup(argv[2]);
 url = argv[3];

 if (!strcmp(up_path, "(null)"))
  up_path = ((void*)0);

 res = relative_url(remoteurl, url, up_path);
 puts(res);
 free(res);
 free(remoteurl);
 return 0;
}
