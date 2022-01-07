
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd {int dummy; } ;
typedef int int32_t ;


 int OSD_KHELP ;
 void* osd_get (int ,struct osd*,int ) ;

void *
khelp_get_osd(struct osd *hosd, int32_t id)
{

 return (osd_get(OSD_KHELP, hosd, id));
}
