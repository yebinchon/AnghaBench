
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {int * drvr_state; } ;
struct TYPE_9__ {TYPE_1__ hw; } ;
typedef TYPE_2__ qla_host_t ;
struct TYPE_10__ {scalar_t__ size; int * buffer; } ;
typedef TYPE_3__ qla_driver_state_t ;


 int ENOMEM ;
 int ENXIO ;
 int bzero (int *,scalar_t__) ;
 int copyout (int *,int *,scalar_t__) ;
 int ql_capture_drvr_state (TYPE_2__*) ;
 scalar_t__ ql_drvr_state_size (TYPE_2__*) ;

__attribute__((used)) static int
ql_drvr_state(qla_host_t *ha, qla_driver_state_t *state)
{
 int rval = 0;
 uint32_t drvr_state_size;

 drvr_state_size = ql_drvr_state_size(ha);

 if (state->buffer == ((void*)0)) {
  state->size = drvr_state_size;
  return (0);
 }

 if (state->size < drvr_state_size)
  return (ENXIO);

 if (ha->hw.drvr_state == ((void*)0))
  return (ENOMEM);

 ql_capture_drvr_state(ha);

 rval = copyout(ha->hw.drvr_state, state->buffer, drvr_state_size);

 bzero(ha->hw.drvr_state, drvr_state_size);

 return (rval);
}
