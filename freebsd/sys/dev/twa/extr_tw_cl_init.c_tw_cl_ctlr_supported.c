
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TW_INT32 ;


 scalar_t__ TW_CL_DEVICE_ID_9K ;
 scalar_t__ TW_CL_DEVICE_ID_9K_E ;
 scalar_t__ TW_CL_DEVICE_ID_9K_SA ;
 scalar_t__ TW_CL_DEVICE_ID_9K_X ;
 scalar_t__ TW_CL_FALSE ;
 scalar_t__ TW_CL_TRUE ;
 scalar_t__ TW_CL_VENDOR_ID ;

TW_INT32
tw_cl_ctlr_supported(TW_INT32 vendor_id, TW_INT32 device_id)
{
 if ((vendor_id == TW_CL_VENDOR_ID) &&
  ((device_id == TW_CL_DEVICE_ID_9K) ||
   (device_id == TW_CL_DEVICE_ID_9K_X) ||
   (device_id == TW_CL_DEVICE_ID_9K_E) ||
   (device_id == TW_CL_DEVICE_ID_9K_SA)))
  return(TW_CL_TRUE);
 return(TW_CL_FALSE);
}
