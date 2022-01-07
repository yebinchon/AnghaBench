
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ nfs_diskless_valid ;
 int nfs_setup_diskless () ;
 char** rootdevnames ;

__attribute__((used)) static void
nfs_rootconf(void)
{

 nfs_setup_diskless();
 if (nfs_diskless_valid)
  rootdevnames[0] = "nfs:";
}
