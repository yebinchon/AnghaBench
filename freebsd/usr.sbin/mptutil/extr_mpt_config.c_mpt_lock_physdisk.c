
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_standalone_disk {int devname; } ;
typedef int path ;


 int MAXPATHLEN ;
 int O_RDWR ;
 char* _PATH_DEV ;
 int errno ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char*,int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static int
mpt_lock_physdisk(struct mpt_standalone_disk *disk)
{
 char path[MAXPATHLEN];
 int dfd, error;

 snprintf(path, sizeof(path), "%s%s", _PATH_DEV, disk->devname);
 dfd = open(path, O_RDWR);
 if (dfd < 0) {
  error = errno;
  warn("Unable to lock disk %s", disk->devname);
  return (error);
 }
 return (0);
}
