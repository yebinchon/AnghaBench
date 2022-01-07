
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * val; } ;
struct statfs {int f_mntonname; TYPE_1__ f_fsid; } ;


 int MNT_BYFSID ;
 int MNT_FORCE ;
 int asprintf (char**,char*,int ,int ) ;
 int free (char*) ;
 int log_debugx (char*,int ,char*) ;
 int log_err (int,char*) ;
 int log_warn (char*,int ) ;
 int unmount (char*,int) ;

__attribute__((used)) static int
unmount_by_statfs(const struct statfs *sb, bool force)
{
 char *fsid_str;
 int error, ret, flags;

 ret = asprintf(&fsid_str, "FSID:%d:%d",
     sb->f_fsid.val[0], sb->f_fsid.val[1]);
 if (ret < 0)
  log_err(1, "asprintf");

 log_debugx("unmounting %s using %s", sb->f_mntonname, fsid_str);

 flags = MNT_BYFSID;
 if (force)
  flags |= MNT_FORCE;
 error = unmount(fsid_str, flags);
 free(fsid_str);
 if (error != 0)
  log_warn("cannot unmount %s", sb->f_mntonname);

 return (error);
}
