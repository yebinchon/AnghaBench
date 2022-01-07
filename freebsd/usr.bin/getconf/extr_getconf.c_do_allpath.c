
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_onepath ;
 int foreach_pathconf (int ,char const*) ;

__attribute__((used)) static void
do_allpath(const char *path)
{

 foreach_pathconf(do_onepath, path);
}
