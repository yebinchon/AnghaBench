
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fopen (char const*,char*) ;
 int pfatal (char*,char const*) ;
 int * rejfp ;

__attribute__((used)) static void
init_reject(const char *name)
{
 rejfp = fopen(name, "w");
 if (rejfp == ((void*)0))
  pfatal("can't create %s", name);
}
