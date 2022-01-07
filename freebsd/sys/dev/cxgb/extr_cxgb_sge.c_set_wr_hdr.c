
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct work_request_hdr {int wrh_hilo; } ;



__attribute__((used)) static void
set_wr_hdr(struct work_request_hdr *wrp, uint32_t wr_hi, uint32_t wr_lo)
{
 uint64_t wr_hilo;

 wr_hilo = wr_hi;
 wr_hilo |= (((uint64_t)wr_lo)<<32);




 wrp->wrh_hilo = wr_hilo;
}
