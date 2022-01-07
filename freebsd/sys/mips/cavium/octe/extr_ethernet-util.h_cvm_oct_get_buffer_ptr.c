
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr; int back; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_buf_ptr_t ;


 char* cvmx_phys_to_ptr (int) ;

__attribute__((used)) static inline char *cvm_oct_get_buffer_ptr(cvmx_buf_ptr_t packet_ptr)
{
 return cvmx_phys_to_ptr(((packet_ptr.s.addr >> 7) - packet_ptr.s.back) << 7);
}
