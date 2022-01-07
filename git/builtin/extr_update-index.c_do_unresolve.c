
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* prefix_path (char const*,int,char const*) ;
 int read_head_pointers () ;
 int unresolve_one (char*) ;

__attribute__((used)) static int do_unresolve(int ac, const char **av,
   const char *prefix, int prefix_length)
{
 int i;
 int err = 0;




 read_head_pointers();

 for (i = 1; i < ac; i++) {
  const char *arg = av[i];
  char *p = prefix_path(prefix, prefix_length, arg);
  err |= unresolve_one(p);
  free(p);
 }
 return err;
}
