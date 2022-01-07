
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_child {int consumer; } ;
typedef int device_t ;


 struct ntb_transport_child* device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int
ntb_transport_child_location_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 struct ntb_transport_child *nc = device_get_ivars(child);

 snprintf(buf, buflen, "consumer=%d", nc->consumer);
 return (0);
}
