
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint32_t ;
struct icl_conn {int dummy; } ;



int
icl_soft_conn_transfer_setup(struct icl_conn *ic, union ctl_io *io,
    uint32_t *transfer_tag, void **prvp)
{

 return (0);
}
