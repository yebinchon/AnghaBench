
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32_t ;


 size_t LIO_DEV_STATES ;
 size_t LIO_DEV_STATE_INVALID ;
 int atomic_load_acq_int (int volatile*) ;
 char** lio_state_str ;

char *
lio_get_state_string(volatile int *state_ptr)
{
 int32_t istate = (int32_t)atomic_load_acq_int(state_ptr);

 if (istate > LIO_DEV_STATES || istate < 0)
  return (lio_state_str[LIO_DEV_STATE_INVALID]);

 return (lio_state_str[istate]);
}
