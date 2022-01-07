
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int
mvs_child_location_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{

 snprintf(buf, buflen, "channel=%d",
     (int)(intptr_t)device_get_ivars(child));
 return (0);
}
