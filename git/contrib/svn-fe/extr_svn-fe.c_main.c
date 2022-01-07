
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int svndump_deinit () ;
 scalar_t__ svndump_init (int *) ;
 int svndump_read (char*,char*,char*) ;
 int svndump_reset () ;

int main(int argc, char **argv)
{
 if (svndump_init(((void*)0)))
  return 1;
 svndump_read((argc > 1) ? argv[1] : ((void*)0), "refs/heads/master",
   "refs/notes/svn/revs");
 svndump_deinit();
 svndump_reset();
 return 0;
}
