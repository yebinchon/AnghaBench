
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_softc {int device; } ;
struct cam_devq {int dummy; } ;
struct ISCI_CONTROLLER {int lock; int * sim; int path; int index; int sim_queue_depth; struct isci_softc* isci; } ;
typedef int device_t ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int TRUE ;
 int * cam_sim_alloc (int ,int ,char*,struct ISCI_CONTROLLER*,int,int *,int ,int ,struct cam_devq*) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 struct cam_devq* cam_simq_alloc (int ) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_get_parent (int ) ;
 int device_get_unit (int ) ;
 int isci_action ;
 int isci_log_message (int ,char*,char*) ;
 int isci_poll ;
 int mtx_unlock (int *) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;

int isci_controller_attach_to_cam(struct ISCI_CONTROLLER *controller)
{
 struct isci_softc *isci = controller->isci;
 device_t parent = device_get_parent(isci->device);
 int unit = device_get_unit(isci->device);
 struct cam_devq *isci_devq = cam_simq_alloc(controller->sim_queue_depth);

 if(isci_devq == ((void*)0)) {
  isci_log_message(0, "ISCI", "isci_devq is NULL \n");
  return (-1);
 }

 controller->sim = cam_sim_alloc(isci_action, isci_poll, "isci",
     controller, unit, &controller->lock, controller->sim_queue_depth,
     controller->sim_queue_depth, isci_devq);

 if(controller->sim == ((void*)0)) {
  isci_log_message(0, "ISCI", "cam_sim_alloc... fails\n");
  cam_simq_free(isci_devq);
  return (-1);
 }

 if(xpt_bus_register(controller->sim, parent, controller->index)
     != CAM_SUCCESS) {
  isci_log_message(0, "ISCI", "xpt_bus_register...fails \n");
  cam_sim_free(controller->sim, TRUE);
  mtx_unlock(&controller->lock);
  return (-1);
 }

 if(xpt_create_path(&controller->path, ((void*)0),
     cam_sim_path(controller->sim), CAM_TARGET_WILDCARD,
     CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  isci_log_message(0, "ISCI", "xpt_create_path....fails\n");
  xpt_bus_deregister(cam_sim_path(controller->sim));
  cam_sim_free(controller->sim, TRUE);
  mtx_unlock(&controller->lock);
  return (-1);
 }

 return (0);
}
