
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct automounted_fs {int af_mountpoint; int af_fsid; int af_mount_time; } ;
typedef int fsid_t ;


 int TAILQ_INSERT_TAIL (int *,struct automounted_fs*,int ) ;
 int af_next ;
 int automounted ;
 struct automounted_fs* calloc (int,int) ;
 int log_err (int,char*) ;
 int strlcpy (int ,char const*,int) ;
 int time (int *) ;

__attribute__((used)) static struct automounted_fs *
automounted_add(fsid_t fsid, const char *mountpoint)
{
 struct automounted_fs *af;

 af = calloc(1, sizeof(*af));
 if (af == ((void*)0))
  log_err(1, "calloc");
 af->af_mount_time = time(((void*)0));
 af->af_fsid = fsid;
 strlcpy(af->af_mountpoint, mountpoint, sizeof(af->af_mountpoint));

 TAILQ_INSERT_TAIL(&automounted, af, af_next);

 return (af);
}
