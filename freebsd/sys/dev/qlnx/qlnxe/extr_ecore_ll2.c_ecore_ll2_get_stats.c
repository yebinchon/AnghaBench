
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_ll2_stats {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int OSAL_MEMSET (struct ecore_ll2_stats*,int ,int) ;
 int __ecore_ll2_get_stats (void*,int ,struct ecore_ll2_stats*) ;

enum _ecore_status_t ecore_ll2_get_stats(void *cxt,
      u8 connection_handle,
      struct ecore_ll2_stats *p_stats)
{
 OSAL_MEMSET(p_stats, 0, sizeof(*p_stats));

 return __ecore_ll2_get_stats(cxt, connection_handle, p_stats);
}
