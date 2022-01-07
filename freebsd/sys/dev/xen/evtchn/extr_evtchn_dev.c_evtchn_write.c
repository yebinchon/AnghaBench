
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_evtchn {int enabled; int port; } ;
struct uio {int uio_resid; } ;
struct per_user_data {int bind_mutex; } ;
struct cdev {int dummy; } ;
typedef int evtchn_port_t ;


 int EINVAL ;
 int M_EVTCHN ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int devfs_get_cdevpriv (void**) ;
 int evtchn_unmask_port (int ) ;
 struct user_evtchn* find_evtchn (struct per_user_data*,int ) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uiomove (int *,int,struct uio*) ;

__attribute__((used)) static int
evtchn_write(struct cdev *dev, struct uio *uio, int ioflag)
{
 int error, i, count;
 evtchn_port_t *kbuf;
 struct per_user_data *u;

 error = devfs_get_cdevpriv((void **)&u);
 if (error != 0)
  return (EINVAL);

 kbuf = malloc(PAGE_SIZE, M_EVTCHN, M_WAITOK);

 count = uio->uio_resid;

 count &= ~(sizeof(evtchn_port_t)-1);

 error = 0;
 if (count == 0)
  goto out;

 if (count > PAGE_SIZE)
  count = PAGE_SIZE;

 error = uiomove(kbuf, count, uio);
 if (error != 0)
  goto out;

 mtx_lock(&u->bind_mutex);

 for (i = 0; i < (count/sizeof(evtchn_port_t)); i++) {
  evtchn_port_t port = kbuf[i];
  struct user_evtchn *evtchn;

  evtchn = find_evtchn(u, port);
  if (evtchn && !evtchn->enabled) {
   evtchn->enabled = 1;
   evtchn_unmask_port(evtchn->port);
  }
 }

 mtx_unlock(&u->bind_mutex);
 error = 0;

out:
 free(kbuf, M_EVTCHN);
 return (error);
}
