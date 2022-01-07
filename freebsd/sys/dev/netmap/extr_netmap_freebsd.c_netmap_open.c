
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct netmap_priv_d {int dummy; } ;
struct cdev {int dummy; } ;


 int ENOMEM ;
 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 int devfs_set_cdevpriv (struct netmap_priv_d*,int ) ;
 int netmap_dtor ;
 int netmap_priv_delete (struct netmap_priv_d*) ;
 struct netmap_priv_d* netmap_priv_new () ;

__attribute__((used)) static int
netmap_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct netmap_priv_d *priv;
 int error;

 (void)dev;
 (void)oflags;
 (void)devtype;
 (void)td;

 NMG_LOCK();
 priv = netmap_priv_new();
 if (priv == ((void*)0)) {
  error = ENOMEM;
  goto out;
 }
 error = devfs_set_cdevpriv(priv, netmap_dtor);
 if (error) {
  netmap_priv_delete(priv);
 }
out:
 NMG_UNLOCK();
 return error;
}
