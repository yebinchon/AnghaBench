
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int addtoincludepath (char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 char* strsep (char**,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
ensure_m4path(void)
{
 static int envpathdone = 0;
 char *envpath;
 char *sweep;
 char *path;

 if (envpathdone)
  return;
 envpathdone = TRUE;
 envpath = getenv("M4PATH");
 if (!envpath)
  return;

 envpath = xstrdup(envpath);
 for (sweep = envpath;
     (path = strsep(&sweep, ":")) != ((void*)0);)
     addtoincludepath(path);
 free(envpath);
}
