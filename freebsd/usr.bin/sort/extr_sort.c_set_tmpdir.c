
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int sort_strdup (char*) ;
 int tmpdir ;

__attribute__((used)) static void
set_tmpdir(void)
{
 char *td;

 td = getenv("TMPDIR");
 if (td != ((void*)0))
  tmpdir = sort_strdup(td);
}
