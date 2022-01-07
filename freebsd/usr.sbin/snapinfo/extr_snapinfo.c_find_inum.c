
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int FTW_MOUNT ;
 int FTW_PHYS ;
 int compare_function ;
 int exit (int) ;
 int nftw (char*,int ,int,int) ;
 int perror (char*) ;

__attribute__((used)) static void
find_inum(char *path)
{
 int ret;

 ret = nftw(path, compare_function, 1, FTW_PHYS|FTW_MOUNT);
 if (ret != EEXIST && ret != 0) {
  perror("ftw");
  exit(ret);
 }
}
