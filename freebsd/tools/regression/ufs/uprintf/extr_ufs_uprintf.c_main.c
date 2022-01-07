
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ chdir (char*) ;
 int err (int,char*,...) ;
 int fill_blocks () ;
 int fill_inodes () ;

int
main(int argc, char *argv[])
{

 if (argc != 2)
  err(-1, "usage: ufs_uprintf /non_optional_path");

 if (chdir(argv[1]) < 0)
  err(-1, "chdir(%s)", argv[1]);

 fill_blocks();

 fill_inodes();

 return (0);
}
