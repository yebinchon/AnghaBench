
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_query_disk {int devname; } ;
typedef int path ;
typedef int U8 ;


 int ENOENT ;
 int MAXPATHLEN ;
 int O_RDWR ;
 char* _PATH_DEV ;
 int errno ;
 int mpt_query_disk (int ,int ,struct mpt_query_disk*) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char*,int ) ;
 int warn (char*,int ) ;
 int warnc (int,char*) ;

int
mpt_lock_volume(U8 VolumeBus, U8 VolumeID)
{
 char path[MAXPATHLEN];
 struct mpt_query_disk qd;
 int error, vfd;

 error = mpt_query_disk(VolumeBus, VolumeID, &qd);
 if (error == ENOENT)





  return (0);
 if (error) {
  warnc(error, "Unable to lookup volume device name");
  return (error);
 }
 snprintf(path, sizeof(path), "%s%s", _PATH_DEV, qd.devname);
 vfd = open(path, O_RDWR);
 if (vfd < 0) {
  error = errno;
  warn("Unable to lock volume %s", qd.devname);
  return (error);
 }
 return (0);
}
