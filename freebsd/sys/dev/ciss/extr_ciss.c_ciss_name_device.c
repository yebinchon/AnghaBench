
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ciss_softc {TYPE_1__** ciss_logical; int * ciss_cam_sim; } ;
struct cam_periph {char* periph_name; int unit_number; } ;
struct cam_path {int dummy; } ;
struct TYPE_2__ {scalar_t__* cl_name; } ;


 int CAM_REQ_CMP ;
 scalar_t__ CISS_IS_PHYSICAL (int) ;
 int ENOENT ;
 struct cam_periph* cam_periph_find (struct cam_path*,int *) ;
 int cam_sim_path (int ) ;
 int sprintf (scalar_t__*,char*,char*,int ) ;
 int xpt_create_path (struct cam_path**,int *,int ,int,int ) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_path_lock (struct cam_path*) ;
 int xpt_path_unlock (struct cam_path*) ;

__attribute__((used)) static int
ciss_name_device(struct ciss_softc *sc, int bus, int target)
{
    struct cam_periph *periph;
    struct cam_path *path;
    int status;

    if (CISS_IS_PHYSICAL(bus))
 return (0);

    status = xpt_create_path(&path, ((void*)0), cam_sim_path(sc->ciss_cam_sim[bus]),
        target, 0);

    if (status == CAM_REQ_CMP) {
 xpt_path_lock(path);
 periph = cam_periph_find(path, ((void*)0));
 xpt_path_unlock(path);
 xpt_free_path(path);
 if (periph != ((void*)0)) {
  sprintf(sc->ciss_logical[bus][target].cl_name, "%s%d",
   periph->periph_name, periph->unit_number);
  return(0);
 }
    }
    sc->ciss_logical[bus][target].cl_name[0] = 0;
    return(ENOENT);
}
