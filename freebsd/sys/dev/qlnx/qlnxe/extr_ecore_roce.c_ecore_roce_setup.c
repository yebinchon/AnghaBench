
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int PROTOCOLID_ROCE ;
 int ecore_roce_async_event ;
 int ecore_spq_register_async_cb (struct ecore_hwfn*,int ,int ) ;

enum _ecore_status_t ecore_roce_setup(struct ecore_hwfn *p_hwfn)
{
 return ecore_spq_register_async_cb(p_hwfn, PROTOCOLID_ROCE,
        ecore_roce_async_event);
}
