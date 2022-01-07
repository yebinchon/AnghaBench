
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpt_iop_hba {int pciunit; int pcidev; TYPE_1__* sim; } ;
struct cam_periph {int refcount; } ;
struct cam_path {int dummy; } ;
struct TYPE_2__ {int path_id; } ;


 int CAM_REQ_CMP ;
 struct cam_periph* cam_periph_find (struct cam_path*,char*) ;
 int device_printf (int ,char*,int ,int,int) ;
 int xpt_create_path (struct cam_path**,int *,int ,int,int ) ;
 int xpt_free_path (struct cam_path*) ;

__attribute__((used)) static int hptiop_os_query_remove_device(struct hpt_iop_hba * hba,
      int target_id)
{
 struct cam_periph *periph = ((void*)0);
 struct cam_path *path;
 int status, retval = 0;

 status = xpt_create_path(&path, ((void*)0), hba->sim->path_id, target_id, 0);

 if (status == CAM_REQ_CMP) {
  if ((periph = cam_periph_find(path, "da")) != ((void*)0)) {
   if (periph->refcount >= 1) {
    device_printf(hba->pcidev, "%d ,"
     "target_id=0x%x,"
     "refcount=%d",
        hba->pciunit, target_id, periph->refcount);
    retval = -1;
   }
  }
  xpt_free_path(path);
 }
 return retval;
}
