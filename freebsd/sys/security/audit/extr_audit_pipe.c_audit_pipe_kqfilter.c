
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {scalar_t__ kn_filter; struct audit_pipe* kn_hook; int * kn_fop; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct audit_pipe {TYPE_1__ ap_selinfo; } ;


 int AUDIT_PIPE_LOCK (struct audit_pipe*) ;
 int AUDIT_PIPE_UNLOCK (struct audit_pipe*) ;
 int EINVAL ;
 scalar_t__ EVFILT_READ ;
 int audit_pipe_read_filterops ;
 int devfs_get_cdevpriv (void**) ;
 int knlist_add (int *,struct knote*,int) ;

__attribute__((used)) static int
audit_pipe_kqfilter(struct cdev *dev, struct knote *kn)
{
 struct audit_pipe *ap;
 int error;

 error = devfs_get_cdevpriv((void **)&ap);
 if (error != 0)
  return (error);
 if (kn->kn_filter != EVFILT_READ)
  return (EINVAL);

 kn->kn_fop = &audit_pipe_read_filterops;
 kn->kn_hook = ap;

 AUDIT_PIPE_LOCK(ap);
 knlist_add(&ap->ap_selinfo.si_note, kn, 1);
 AUDIT_PIPE_UNLOCK(ap);
 return (0);
}
