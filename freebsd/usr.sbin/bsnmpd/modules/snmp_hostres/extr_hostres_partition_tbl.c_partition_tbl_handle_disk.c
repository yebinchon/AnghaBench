
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmesh {int dummy; } ;
struct gclass {int dummy; } ;
typedef int int32_t ;


 int HRDBG (char*,...) ;
 int LOG_WARNING ;
 int assert (int) ;
 struct gclass* find_class (struct gmesh*,char*) ;
 int geom_deletetree (struct gmesh*) ;
 int geom_gettree (struct gmesh*) ;
 int get_bsd_sun (struct gclass*,int ,char const*) ;
 int get_mbr (struct gclass*,int ,char const*) ;
 int syslog (int ,char*) ;

void
partition_tbl_handle_disk(int32_t ds_index, const char *disk_dev_name)
{
 struct gmesh mesh;
 struct gclass *classp;
 int error;

 assert(disk_dev_name != ((void*)0));
 assert(ds_index > 0);

 HRDBG("===> getting partitions for %s <===", disk_dev_name);


 if ((error = geom_gettree(&mesh)) != 0) {
  syslog(LOG_WARNING, "cannot get GEOM tree: %m");
  return;
 }






 if ((classp = find_class(&mesh, "MBR")) != ((void*)0)) {
  get_mbr(classp, ds_index, disk_dev_name);
 } else {
  HRDBG("cannot find \"MBR\" geom class");
 }





 if ((classp = find_class(&mesh, "BSD")) != ((void*)0)) {
  get_bsd_sun(classp, ds_index, disk_dev_name);
 } else {

  HRDBG("cannot find \"BSD\" geom class");
 }





 if ((classp = find_class(&mesh, "SUN")) != ((void*)0)) {
  get_bsd_sun(classp, ds_index, disk_dev_name);
 } else {

  HRDBG("cannot find \"SUN\" geom class");
 }

 geom_deletetree(&mesh);
}
