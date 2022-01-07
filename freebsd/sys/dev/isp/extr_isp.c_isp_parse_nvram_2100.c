
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef void* uint32_t ;
struct TYPE_9__ {int isp_confopts; } ;
typedef TYPE_1__ ispsoftc_t ;
struct TYPE_10__ {int isp_wwpn_nvram; int isp_wwnn_nvram; void* isp_zfwoptions; void* isp_xfwoptions; int isp_fwoptions; int isp_loopid; int isp_retry_count; int isp_retry_delay; int isp_maxalloc; } ;
typedef TYPE_2__ fcparam ;
typedef int DEFAULT_FRAMESIZE ;
typedef int DEFAULT_EXEC_THROTTLE ;


 TYPE_2__* FCPARAM (TYPE_1__*,int ) ;
 int ISP2100_NVRAM_EXECUTION_THROTTLE (int *) ;
 int ISP2100_NVRAM_HARDLOOPID (int *) ;
 int ISP2100_NVRAM_MAXFRAMELENGTH (int *) ;
 int ISP2100_NVRAM_MAXIOCBALLOCATION (int *) ;
 int ISP2100_NVRAM_NODE_NAME (int *) ;
 int ISP2100_NVRAM_OPTIONS (int *) ;
 int ISP2100_NVRAM_PORT_NAME (int *) ;
 int ISP2100_NVRAM_RETRY_COUNT (int *) ;
 int ISP2100_NVRAM_RETRY_DELAY (int *) ;
 int ISP2100_NVRAM_TOV (int *) ;
 void* ISP2100_XFW_OPTIONS (int *) ;
 void* ISP2100_ZFW_OPTIONS (int *) ;
 int ISP_CFG_OWNEXCTHROTTLE ;
 int ISP_CFG_OWNFSZ ;
 int ISP_CFG_OWNLOOPID ;
 int ISP_LOGCONFIG ;
 int ISP_LOGDEBUG0 ;
 scalar_t__ IS_2200 (TYPE_1__*) ;
 scalar_t__ IS_23XX (TYPE_1__*) ;
 int isp_prt (TYPE_1__*,int ,char*,void*,void*,...) ;

__attribute__((used)) static void
isp_parse_nvram_2100(ispsoftc_t *isp, uint8_t *nvram_data)
{
 fcparam *fcp = FCPARAM(isp, 0);
 uint64_t wwn;
 wwn = ISP2100_NVRAM_PORT_NAME(nvram_data);
 if (wwn) {
  isp_prt(isp, ISP_LOGCONFIG, "NVRAM Port WWN 0x%08x%08x",
      (uint32_t) (wwn >> 32), (uint32_t) (wwn));
  if ((wwn >> 60) == 0) {
   wwn |= (((uint64_t) 2)<< 60);
  }
 }
 fcp->isp_wwpn_nvram = wwn;
 if (IS_2200(isp) || IS_23XX(isp)) {
  wwn = ISP2100_NVRAM_NODE_NAME(nvram_data);
  if (wwn) {
   isp_prt(isp, ISP_LOGCONFIG, "NVRAM Node WWN 0x%08x%08x",
       (uint32_t) (wwn >> 32),
       (uint32_t) (wwn));
   if ((wwn >> 60) == 0) {
    wwn |= (((uint64_t) 2)<< 60);
   }
  } else {
   wwn = fcp->isp_wwpn_nvram & ~((uint64_t) 0xfff << 48);
  }
 } else {
  wwn &= ~((uint64_t) 0xfff << 48);
 }
 fcp->isp_wwnn_nvram = wwn;

 fcp->isp_maxalloc = ISP2100_NVRAM_MAXIOCBALLOCATION(nvram_data);
 if ((isp->isp_confopts & ISP_CFG_OWNFSZ) == 0) {
  DEFAULT_FRAMESIZE(isp) =
      ISP2100_NVRAM_MAXFRAMELENGTH(nvram_data);
 }
 fcp->isp_retry_delay = ISP2100_NVRAM_RETRY_DELAY(nvram_data);
 fcp->isp_retry_count = ISP2100_NVRAM_RETRY_COUNT(nvram_data);
 if ((isp->isp_confopts & ISP_CFG_OWNLOOPID) == 0) {
  fcp->isp_loopid = ISP2100_NVRAM_HARDLOOPID(nvram_data);
 }
 if ((isp->isp_confopts & ISP_CFG_OWNEXCTHROTTLE) == 0) {
  DEFAULT_EXEC_THROTTLE(isp) =
   ISP2100_NVRAM_EXECUTION_THROTTLE(nvram_data);
 }
 fcp->isp_fwoptions = ISP2100_NVRAM_OPTIONS(nvram_data);
 isp_prt(isp, ISP_LOGDEBUG0,
     "NVRAM 0x%08x%08x 0x%08x%08x maxalloc %d maxframelen %d",
     (uint32_t) (fcp->isp_wwnn_nvram >> 32),
     (uint32_t) fcp->isp_wwnn_nvram,
     (uint32_t) (fcp->isp_wwpn_nvram >> 32),
     (uint32_t) fcp->isp_wwpn_nvram,
     ISP2100_NVRAM_MAXIOCBALLOCATION(nvram_data),
     ISP2100_NVRAM_MAXFRAMELENGTH(nvram_data));
 isp_prt(isp, ISP_LOGDEBUG0,
     "execthrottle %d fwoptions 0x%x hardloop %d tov %d",
     ISP2100_NVRAM_EXECUTION_THROTTLE(nvram_data),
     ISP2100_NVRAM_OPTIONS(nvram_data),
     ISP2100_NVRAM_HARDLOOPID(nvram_data),
     ISP2100_NVRAM_TOV(nvram_data));
 fcp->isp_xfwoptions = ISP2100_XFW_OPTIONS(nvram_data);
 fcp->isp_zfwoptions = ISP2100_ZFW_OPTIONS(nvram_data);
 isp_prt(isp, ISP_LOGDEBUG0, "xfwoptions 0x%x zfw options 0x%x",
     ISP2100_XFW_OPTIONS(nvram_data), ISP2100_ZFW_OPTIONS(nvram_data));
}
