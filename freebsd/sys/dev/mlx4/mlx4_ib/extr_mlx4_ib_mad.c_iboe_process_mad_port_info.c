
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_class_port_info {int capability_mask; } ;
typedef int cpi ;


 int IB_MAD_RESULT_REPLY ;
 int IB_MAD_RESULT_SUCCESS ;
 int IB_PMA_CLASS_CAP_EXT_WIDTH ;
 int memcpy (void*,struct ib_class_port_info*,int) ;

__attribute__((used)) static int iboe_process_mad_port_info(void *out_mad)
{
 struct ib_class_port_info cpi = {};

 cpi.capability_mask = IB_PMA_CLASS_CAP_EXT_WIDTH;
 memcpy(out_mad, &cpi, sizeof(cpi));
 return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
}
