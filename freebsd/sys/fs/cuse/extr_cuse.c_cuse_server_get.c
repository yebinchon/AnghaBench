
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_server {scalar_t__ is_closing; } ;


 int EINVAL ;
 int cuse_lock () ;
 int cuse_unlock () ;
 int devfs_get_cdevpriv (void**) ;

__attribute__((used)) static int
cuse_server_get(struct cuse_server **ppcs)
{
 struct cuse_server *pcs;
 int error;

 error = devfs_get_cdevpriv((void **)&pcs);
 if (error != 0) {
  *ppcs = ((void*)0);
  return (error);
 }

 cuse_lock();
 if (pcs->is_closing) {
  cuse_unlock();
  *ppcs = ((void*)0);
  return (EINVAL);
 }
 cuse_unlock();
 *ppcs = pcs;
 return (0);
}
