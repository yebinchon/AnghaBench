
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vf_acquire_sw_info {int driver_version; int os_type; } ;
struct ecore_hwfn {int dummy; } ;


 int QLNX_VERSION_BUILD ;
 int QLNX_VERSION_MAJOR ;
 int QLNX_VERSION_MINOR ;
 int VFPF_ACQUIRE_OS_FREEBSD ;

__attribute__((used)) static void
__qlnx_osal_vf_fill_acquire_resc_req(struct ecore_hwfn *p_hwfn,
 struct ecore_vf_acquire_sw_info *p_sw_info)
{
 p_sw_info->driver_version = (QLNX_VERSION_MAJOR << 24) |
     (QLNX_VERSION_MINOR << 16) |
      QLNX_VERSION_BUILD;
 p_sw_info->os_type = VFPF_ACQUIRE_OS_FREEBSD;

 return;
}
