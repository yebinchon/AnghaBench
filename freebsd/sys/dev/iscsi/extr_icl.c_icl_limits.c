
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icl_module {int (* im_limits ) (struct icl_drv_limits*) ;} ;
struct icl_drv_limits {scalar_t__ idl_max_recv_data_segment_length; scalar_t__ idl_max_send_data_segment_length; scalar_t__ idl_max_burst_length; scalar_t__ idl_first_burst_length; } ;
struct TYPE_2__ {int sc_lock; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ OUT_OF_RANGE (scalar_t__,int,int) ;
 int bzero (struct icl_drv_limits*,int) ;
 struct icl_module* icl_find (char const*,int,int) ;
 TYPE_1__* sc ;
 int stub1 (struct icl_drv_limits*) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

int
icl_limits(const char *offload, bool iser, struct icl_drv_limits *idl)
{
 struct icl_module *im;
 int error;

 bzero(idl, sizeof(*idl));
 sx_slock(&sc->sc_lock);
 im = icl_find(offload, iser, 0);
 if (im == ((void*)0)) {
  sx_sunlock(&sc->sc_lock);
  return (ENXIO);
 }

 error = im->im_limits(idl);
 sx_sunlock(&sc->sc_lock);
 if (error == 0 &&
     (((idl->idl_max_recv_data_segment_length) != 0 && ((idl->idl_max_recv_data_segment_length) < (512) || (idl->idl_max_recv_data_segment_length) > (16777215))) ||
     ((idl->idl_max_send_data_segment_length) != 0 && ((idl->idl_max_send_data_segment_length) < (512) || (idl->idl_max_send_data_segment_length) > (16777215))) ||
     ((idl->idl_max_burst_length) != 0 && ((idl->idl_max_burst_length) < (512) || (idl->idl_max_burst_length) > (16777215))) ||
     ((idl->idl_first_burst_length) != 0 && ((idl->idl_first_burst_length) < (512) || (idl->idl_first_burst_length) > (16777215))))) {
  error = EINVAL;
 }






 if (error == 0 && idl->idl_first_burst_length > 0 &&
     idl->idl_max_burst_length > 0 &&
     idl->idl_first_burst_length > idl->idl_max_burst_length) {
  error = EINVAL;
 }

 return (error);
}
