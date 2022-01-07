
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdacc_fg {int nid; } ;
typedef int device_t ;


 struct hdacc_fg* device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int
hdacc_child_location_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 struct hdacc_fg *fg = device_get_ivars(child);

 snprintf(buf, buflen, "nid=%d", fg->nid);
 return (0);
}
