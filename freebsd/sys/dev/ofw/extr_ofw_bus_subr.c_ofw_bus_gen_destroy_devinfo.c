
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int * obd_status; int * obd_type; int * obd_name; int * obd_model; int * obd_compat; } ;


 int M_OFWPROP ;
 int free (int *,int ) ;

void
ofw_bus_gen_destroy_devinfo(struct ofw_bus_devinfo *obd)
{

 if (obd == ((void*)0))
  return;
 if (obd->obd_compat != ((void*)0))
  free(obd->obd_compat, M_OFWPROP);
 if (obd->obd_model != ((void*)0))
  free(obd->obd_model, M_OFWPROP);
 if (obd->obd_name != ((void*)0))
  free(obd->obd_name, M_OFWPROP);
 if (obd->obd_type != ((void*)0))
  free(obd->obd_type, M_OFWPROP);
 if (obd->obd_status != ((void*)0))
  free(obd->obd_status, M_OFWPROP);
}
