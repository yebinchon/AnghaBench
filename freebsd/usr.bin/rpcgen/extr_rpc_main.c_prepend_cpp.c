
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CPP ;
 char* CPPFLAGS ;
 int free (char*) ;
 char* getenv (char*) ;
 int insarg (int,char*) ;
 char* strsep (char**,char*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
prepend_cpp(void)
{
 int idx = 1;
 const char *var;
 char *dupvar, *s, *t;

 if (CPP != ((void*)0))
  insarg(0, CPP);
 else if ((var = getenv("RPCGEN_CPP")) == ((void*)0))
  insarg(0, "/usr/bin/cpp");
 else {

  dupvar = xstrdup(var);
  for (s = dupvar, idx = 0; (t = strsep(&s, " \t")) != ((void*)0); ) {
   if (t[0])
    insarg(idx++, t);
  }
  free(dupvar);
 }

 insarg(idx, CPPFLAGS);
}
