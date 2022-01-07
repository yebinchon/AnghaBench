
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_child {int function; } ;
typedef int device_t ;


 struct ntb_child* device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,int) ;

int
ntb_child_location_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 struct ntb_child *nc = device_get_ivars(child);

 snprintf(buf, buflen, "function=%d", nc->function);
 return (0);
}
