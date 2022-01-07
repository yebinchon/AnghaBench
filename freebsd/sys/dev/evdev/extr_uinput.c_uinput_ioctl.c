
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct uinput_cdev_state {int dummy; } ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;


 int UINPUT_LOCK (struct uinput_cdev_state*) ;
 int UINPUT_UNLOCK (struct uinput_cdev_state*) ;
 int debugf (struct uinput_cdev_state*,char*,int ,int ) ;
 int devfs_get_cdevpriv (void**) ;
 int uinput_ioctl_sub (struct uinput_cdev_state*,int ,int ) ;

__attribute__((used)) static int
uinput_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 struct uinput_cdev_state *state;
 int ret;

 ret = devfs_get_cdevpriv((void **)&state);
 if (ret != 0)
  return (ret);

 debugf(state, "ioctl called: cmd=0x%08lx, data=%p", cmd, data);

 UINPUT_LOCK(state);
 ret = uinput_ioctl_sub(state, cmd, data);
 UINPUT_UNLOCK(state);

 return (ret);
}
