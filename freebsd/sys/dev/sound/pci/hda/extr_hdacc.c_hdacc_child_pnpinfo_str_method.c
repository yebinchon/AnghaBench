
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdacc_fg {int type; int subsystem_id; } ;
typedef int device_t ;


 struct hdacc_fg* device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,int,int) ;

__attribute__((used)) static int
hdacc_child_pnpinfo_str_method(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 struct hdacc_fg *fg = device_get_ivars(child);

 snprintf(buf, buflen, "type=0x%02x subsystem=0x%08x",
     fg->type, fg->subsystem_id);
 return (0);
}
