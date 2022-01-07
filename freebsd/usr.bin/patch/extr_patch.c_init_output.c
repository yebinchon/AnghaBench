
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fopen (char const*,char*) ;
 int * ofp ;
 int pfatal (char*,char const*) ;

__attribute__((used)) static void
init_output(const char *name)
{
 ofp = fopen(name, "w");
 if (ofp == ((void*)0))
  pfatal("can't create %s", name);
}
