
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpo_data {int * sim; int vpo_io; scalar_t__ vpo_isplus; } ;
struct ppb_data {int ppc_lock; } ;
struct cam_devq {int dummy; } ;
typedef int device_t ;


 scalar_t__ CAM_SUCCESS ;
 struct vpo_data* DEVTOSOFTC (int ) ;
 int ENXIO ;
 int TRUE ;
 int * cam_sim_alloc (int ,int ,char*,struct vpo_data*,int ,int ,int,int ,struct cam_devq*) ;
 int cam_sim_free (int *,int ) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_parent (int ) ;
 struct ppb_data* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int imm_attach (int *) ;
 int ppb_lock (int ) ;
 int ppb_unlock (int ) ;
 int vpo_action ;
 int vpo_poll ;
 int vpoio_attach (int *) ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;

__attribute__((used)) static int
vpo_attach(device_t dev)
{
 struct vpo_data *vpo = DEVTOSOFTC(dev);
 device_t ppbus = device_get_parent(dev);
 struct ppb_data *ppb = device_get_softc(ppbus);
 struct cam_devq *devq;
 int error;


 if (vpo->vpo_isplus) {
  if ((error = imm_attach(&vpo->vpo_io)))
   return (error);
 } else {
  if ((error = vpoio_attach(&vpo->vpo_io)))
   return (error);
 }





 devq = cam_simq_alloc( 1);

 if (devq == ((void*)0))
  return (ENXIO);

 vpo->sim = cam_sim_alloc(vpo_action, vpo_poll, "vpo", vpo,
     device_get_unit(dev), ppb->ppc_lock,
                 1, 0, devq);
 if (vpo->sim == ((void*)0)) {
  cam_simq_free(devq);
  return (ENXIO);
 }

 ppb_lock(ppbus);
 if (xpt_bus_register(vpo->sim, dev, 0) != CAM_SUCCESS) {
  cam_sim_free(vpo->sim, TRUE);
  ppb_unlock(ppbus);
  return (ENXIO);
 }
 ppb_unlock(ppbus);

 return (0);
}
