
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devinfo_dev {int dd_location; int dd_name; } ;
struct asn_oid {int dummy; } ;


 struct asn_oid OIDX_hrDeviceProcessor_c ;
 int assert (int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int ) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static void
device_get_type(struct devinfo_dev *dev_p, const struct asn_oid **out_type_p)
{

 assert(dev_p != ((void*)0));
 assert(out_type_p != ((void*)0));

 if (dev_p == ((void*)0))
  return;

 if (strncmp(dev_p->dd_name, "cpu", strlen("cpu")) == 0 &&
     strstr(dev_p->dd_location, ".CPU") != ((void*)0)) {
  *out_type_p = &OIDX_hrDeviceProcessor_c;
  return;
 }
}
