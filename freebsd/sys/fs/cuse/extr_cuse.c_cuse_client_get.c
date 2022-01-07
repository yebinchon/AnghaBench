
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cuse_client {TYPE_1__* server; } ;
struct TYPE_2__ {scalar_t__ is_closing; } ;


 scalar_t__ CUSE_CLIENT_CLOSING (struct cuse_client*) ;
 int EINVAL ;
 int cuse_lock () ;
 int cuse_unlock () ;
 int devfs_get_cdevpriv (void**) ;

__attribute__((used)) static int
cuse_client_get(struct cuse_client **ppcc)
{
 struct cuse_client *pcc;
 int error;


 error = devfs_get_cdevpriv((void **)&pcc);
 if (error != 0) {
  *ppcc = ((void*)0);
  return (error);
 }

 cuse_lock();
 if (CUSE_CLIENT_CLOSING(pcc) || pcc->server->is_closing) {
  cuse_unlock();
  *ppcc = ((void*)0);
  return (EINVAL);
 }
 cuse_unlock();
 *ppcc = pcc;
 return (0);
}
