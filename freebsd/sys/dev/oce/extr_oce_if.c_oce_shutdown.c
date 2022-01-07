
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int oce_detach (int ) ;

__attribute__((used)) static int
oce_shutdown(device_t dev)
{
 int rc;

 rc = oce_detach(dev);

 return rc;
}
