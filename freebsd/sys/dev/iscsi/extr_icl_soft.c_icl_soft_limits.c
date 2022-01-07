
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_drv_limits {int idl_max_recv_data_segment_length; int idl_max_send_data_segment_length; int idl_max_burst_length; int idl_first_burst_length; } ;



__attribute__((used)) static int
icl_soft_limits(struct icl_drv_limits *idl)
{

 idl->idl_max_recv_data_segment_length = 128 * 1024;
 idl->idl_max_send_data_segment_length = 128 * 1024;
 idl->idl_max_burst_length = 262144;
 idl->idl_first_burst_length = 65536;

 return (0);
}
