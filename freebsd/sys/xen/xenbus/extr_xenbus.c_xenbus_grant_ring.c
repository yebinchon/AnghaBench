
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grant_ref_t ;
typedef int device_t ;


 int gnttab_grant_foreign_access (int ,unsigned long,int ,int *) ;
 int xenbus_dev_fatal (int ,int,char*) ;
 int xenbus_get_otherend_id (int ) ;

int
xenbus_grant_ring(device_t dev, unsigned long ring_mfn, grant_ref_t *refp)
{
 int error;

 error = gnttab_grant_foreign_access(
  xenbus_get_otherend_id(dev), ring_mfn, 0, refp);
 if (error) {
  xenbus_dev_fatal(dev, error, "granting access to ring page");
  return (error);
 }

 return (0);
}
