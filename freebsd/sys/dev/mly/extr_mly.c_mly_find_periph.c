
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int * mly_cam_sim; } ;
struct cam_periph {int dummy; } ;
struct cam_path {int dummy; } ;


 int CAM_REQ_CMP ;
 struct cam_periph* cam_periph_find (struct cam_path*,int *) ;
 int cam_sim_path (int ) ;
 int xpt_create_path (struct cam_path**,int *,int ,int,int ) ;
 int xpt_free_path (struct cam_path*) ;

__attribute__((used)) static struct cam_periph *
mly_find_periph(struct mly_softc *sc, int bus, int target)
{
    struct cam_periph *periph;
    struct cam_path *path;
    int status;

    status = xpt_create_path(&path, ((void*)0), cam_sim_path(sc->mly_cam_sim[bus]), target, 0);
    if (status == CAM_REQ_CMP) {
 periph = cam_periph_find(path, ((void*)0));
 xpt_free_path(path);
    } else {
 periph = ((void*)0);
    }
    return(periph);
}
