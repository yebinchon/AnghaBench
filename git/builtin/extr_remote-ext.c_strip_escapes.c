
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*,...) ;
 char* git_req ;
 char* git_req_vhost ;
 int setenv (char*,char const*,int) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strbuf_addch (struct strbuf*,char const) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static char *strip_escapes(const char *str, const char *service,
 const char **next)
{
 size_t rpos = 0;
 int escape = 0;
 char special = 0;
 const char *service_noprefix = service;
 struct strbuf ret = STRBUF_INIT;

 skip_prefix(service_noprefix, "git-", &service_noprefix);


 setenv("GIT_EXT_SERVICE", service, 1);
 setenv("GIT_EXT_SERVICE_NOPREFIX", service_noprefix, 1);


 while (str[rpos] && (escape || str[rpos] != ' ')) {
  if (escape) {
   switch (str[rpos]) {
   case ' ':
   case '%':
   case 's':
   case 'S':
    break;
   case 'G':
   case 'V':
    special = str[rpos];
    if (rpos == 1)
     break;

   default:
    die("Bad remote-ext placeholder '%%%c'.",
     str[rpos]);
   }
   escape = 0;
  } else
   escape = (str[rpos] == '%');
  rpos++;
 }
 if (escape && !str[rpos])
  die("remote-ext command has incomplete placeholder");
 *next = str + rpos;
 if (**next == ' ')
  ++*next;





 rpos = special ? 2 : 0;
 escape = 0;
 while (str[rpos] && (escape || str[rpos] != ' ')) {
  if (escape) {
   switch (str[rpos]) {
   case ' ':
   case '%':
    strbuf_addch(&ret, str[rpos]);
    break;
   case 's':
    strbuf_addstr(&ret, service_noprefix);
    break;
   case 'S':
    strbuf_addstr(&ret, service);
    break;
   }
   escape = 0;
  } else
   switch (str[rpos]) {
   case '%':
    escape = 1;
    break;
   default:
    strbuf_addch(&ret, str[rpos]);
    break;
   }
  rpos++;
 }
 switch (special) {
 case 'G':
  git_req = strbuf_detach(&ret, ((void*)0));
  return ((void*)0);
 case 'V':
  git_req_vhost = strbuf_detach(&ret, ((void*)0));
  return ((void*)0);
 default:
  return strbuf_detach(&ret, ((void*)0));
 }
}
