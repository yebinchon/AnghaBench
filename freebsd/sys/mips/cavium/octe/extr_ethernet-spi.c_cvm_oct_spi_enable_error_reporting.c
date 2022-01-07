
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int frmerr; int unxfrm; int nosync; int diperr; int datovr; int ovrbst; int calpar1; int calpar0; } ;
struct TYPE_7__ {void* u64; TYPE_2__ s; } ;
typedef TYPE_3__ cvmx_stxx_int_msk_t ;
struct TYPE_5__ {int calerr; int syncerr; int diperr; int tpaovr; int rsverr; int drwnng; int clserr; int spiovr; int abnorm; int prtnxa; } ;
struct TYPE_8__ {void* u64; TYPE_1__ s; } ;
typedef TYPE_4__ cvmx_spxx_int_msk_t ;


 int CVMX_SPXX_INT_MSK (int) ;
 int CVMX_STXX_INT_MSK (int) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

__attribute__((used)) static void cvm_oct_spi_enable_error_reporting(int interface)
{
 cvmx_spxx_int_msk_t spxx_int_msk;
 cvmx_stxx_int_msk_t stxx_int_msk;

 spxx_int_msk.u64 = cvmx_read_csr(CVMX_SPXX_INT_MSK(interface));
 spxx_int_msk.s.calerr = 1;
 spxx_int_msk.s.syncerr = 1;
 spxx_int_msk.s.diperr = 1;
 spxx_int_msk.s.tpaovr = 1;
 spxx_int_msk.s.rsverr = 1;
 spxx_int_msk.s.drwnng = 1;
 spxx_int_msk.s.clserr = 1;
 spxx_int_msk.s.spiovr = 1;
 spxx_int_msk.s.abnorm = 1;
 spxx_int_msk.s.prtnxa = 1;
 cvmx_write_csr(CVMX_SPXX_INT_MSK(interface), spxx_int_msk.u64);

 stxx_int_msk.u64 = cvmx_read_csr(CVMX_STXX_INT_MSK(interface));
 stxx_int_msk.s.frmerr = 1;
 stxx_int_msk.s.unxfrm = 1;
 stxx_int_msk.s.nosync = 1;
 stxx_int_msk.s.diperr = 1;
 stxx_int_msk.s.datovr = 1;
 stxx_int_msk.s.ovrbst = 1;
 stxx_int_msk.s.calpar1 = 1;
 stxx_int_msk.s.calpar0 = 1;
 cvmx_write_csr(CVMX_STXX_INT_MSK(interface), stxx_int_msk.u64);
}
