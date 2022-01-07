
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* fs_fsmnt; scalar_t__* fs_snapinum; } ;
struct uufsd {char* d_name; TYPE_1__ d_fs; } ;
struct statfs {int f_mntonname; int f_mntfromname; } ;


 int FSMAXSNAP ;
 int find_inum (int ) ;
 scalar_t__ inode ;
 int perror (char*) ;
 int printf (char*,...) ;
 int ufs_disk_fillout (struct uufsd*,int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
find_snapshot(struct statfs *sfs)
{
 struct uufsd disk;
 int j, snapcount = 0;

 if (ufs_disk_fillout(&disk, sfs->f_mntfromname) == -1)
  perror("ufs_disk_fillout");

 if (verbose)
  printf("%s mounted on %s\n", disk.d_name, disk.d_fs.fs_fsmnt);

 for (j = 0; j < FSMAXSNAP; j++) {
  if (disk.d_fs.fs_snapinum[j]) {
   inode = disk.d_fs.fs_snapinum[j];
   find_inum(sfs->f_mntonname);
   snapcount++;
  }
 }

 if (!snapcount && verbose)
  printf("\tno snapshots found\n");

 return 0;
}
