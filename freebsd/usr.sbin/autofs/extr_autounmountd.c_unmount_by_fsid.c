
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * val; } ;
typedef TYPE_1__ fsid_t ;


 scalar_t__ EBUSY ;
 int MNT_BYFSID ;
 int MNT_NONBUSY ;
 int asprintf (char**,char*,int ,int ) ;
 scalar_t__ errno ;
 int free (char*) ;
 int log_debugx (char*,char const*,char*,int ) ;
 int log_err (int,char*) ;
 int log_warn (char*,char const*,char*) ;
 int strerror (scalar_t__) ;
 int unmount (char*,int) ;

__attribute__((used)) static int
unmount_by_fsid(const fsid_t fsid, const char *mountpoint)
{
 char *fsid_str;
 int error, ret;

 ret = asprintf(&fsid_str, "FSID:%d:%d", fsid.val[0], fsid.val[1]);
 if (ret < 0)
  log_err(1, "asprintf");

 error = unmount(fsid_str, MNT_NONBUSY | MNT_BYFSID);
 if (error != 0) {
  if (errno == EBUSY) {
   log_debugx("cannot unmount %s (%s): %s",
       mountpoint, fsid_str, strerror(errno));
  } else {
   log_warn("cannot unmount %s (%s)",
       mountpoint, fsid_str);
  }
 }

 free(fsid_str);

 return (error);
}
