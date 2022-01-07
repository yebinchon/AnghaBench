
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_dev_data {int watches; int transactions; int lock; } ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int M_WAITOK ;
 int M_XENSTORE ;
 int M_ZERO ;
 int devfs_set_cdevpriv (struct xs_dev_data*,int ) ;
 int free (struct xs_dev_data*,int ) ;
 struct xs_dev_data* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int xs_dev_dtor ;

__attribute__((used)) static int
xs_dev_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct xs_dev_data *u;
 int error;

 u = malloc(sizeof(*u), M_XENSTORE, M_WAITOK|M_ZERO);
 mtx_init(&u->lock, "xsdev_lock", ((void*)0), MTX_DEF);
 LIST_INIT(&u->transactions);
 LIST_INIT(&u->watches);
 error = devfs_set_cdevpriv(u, xs_dev_dtor);
 if (error != 0)
  free(u, M_XENSTORE);

 return (error);
}
