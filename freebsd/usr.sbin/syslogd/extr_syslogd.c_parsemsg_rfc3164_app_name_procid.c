
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strspn (char*,char*) ;

__attribute__((used)) static void
parsemsg_rfc3164_app_name_procid(char **msg, const char **app_name,
    const char **procid) {
 char *m, *app_name_begin, *procid_begin;
 size_t app_name_length, procid_length;

 m = *msg;


 app_name_begin = m;
 app_name_length = strspn(m,
     "abcdefghijklmnopqrstuvwxyz"
     "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
     "0123456789"
     "_-/");
 if (app_name_length == 0)
  goto bad;
 m += app_name_length;


 if (*m == '[') {
  procid_begin = ++m;
  procid_length = strspn(m, "0123456789");
  if (procid_length == 0)
   goto bad;
  m += procid_length;
  if (*m++ != ']')
   goto bad;
 } else {
  procid_begin = ((void*)0);
  procid_length = 0;
 }


 if (m[0] != ':' || m[1] != ' ')
  goto bad;


 app_name_begin[app_name_length] = '\0';
 if (procid_begin != 0)
  procid_begin[procid_length] = '\0';

 *msg = m + 2;
 *app_name = app_name_begin;
 *procid = procid_begin;
 return;
bad:
 *app_name = ((void*)0);
 *procid = ((void*)0);
}
