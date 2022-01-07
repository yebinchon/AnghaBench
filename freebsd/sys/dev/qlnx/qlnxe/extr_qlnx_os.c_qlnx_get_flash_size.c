
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_5__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_6__ {TYPE_1__ cdev; } ;
typedef TYPE_2__ qlnx_host_t ;


 int QL_DPRINT1 (TYPE_2__*,char*) ;
 int ecore_mcp_get_flash_size (struct ecore_hwfn*,struct ecore_ptt*,int *) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;

__attribute__((used)) static int
qlnx_get_flash_size(qlnx_host_t *ha, uint32_t *flash_size)
{
 struct ecore_hwfn *p_hwfn;
 struct ecore_ptt *p_ptt;

 p_hwfn = &ha->cdev.hwfns[0];
 p_ptt = ecore_ptt_acquire(p_hwfn);

 if (p_ptt == ((void*)0)) {
                QL_DPRINT1(ha,"ecore_ptt_acquire failed\n");
                return (-1);
 }
 ecore_mcp_get_flash_size(p_hwfn, p_ptt, flash_size);

 ecore_ptt_release(p_hwfn, p_ptt);

 return (0);
}
