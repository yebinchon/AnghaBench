
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int
g_label_is_name_ok(const char *label)
{
 const char *s;


 if (strncmp(label, "../", 3) == 0)
  return (0);

 if (strstr(label, "/../") != ((void*)0))
  return (0);

 if ((s = strstr(label, "/..")) != ((void*)0) && s[3] == '\0')
  return (0);
 return (1);
}
