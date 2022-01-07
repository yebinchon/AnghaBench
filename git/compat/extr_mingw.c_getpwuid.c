
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int user_name ;
struct passwd {char* pw_name; char* pw_gecos; int * pw_dir; } ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int GetUserNameW (int *,int *) ;
 int NameDisplay ;
 char* get_extended_user_info (int ) ;
 struct passwd* xmalloc (int) ;
 scalar_t__ xwcstoutf (char*,int *,int) ;

struct passwd *getpwuid(int uid)
{
 static unsigned initialized;
 static char user_name[100];
 static struct passwd *p;
 wchar_t buf[100];
 DWORD len;

 if (initialized)
  return p;

 len = ARRAY_SIZE(buf);
 if (!GetUserNameW(buf, &len)) {
  initialized = 1;
  return ((void*)0);
 }

 if (xwcstoutf(user_name, buf, sizeof(user_name)) < 0) {
  initialized = 1;
  return ((void*)0);
 }

 p = xmalloc(sizeof(*p));
 p->pw_name = user_name;
 p->pw_gecos = get_extended_user_info(NameDisplay);
 if (!p->pw_gecos)
  p->pw_gecos = "unknown";
 p->pw_dir = ((void*)0);

 initialized = 1;
 return p;
}
