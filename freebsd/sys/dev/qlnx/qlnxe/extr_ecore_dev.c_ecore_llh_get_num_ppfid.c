
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ecore_dev {TYPE_1__* p_llh_info; } ;
struct TYPE_2__ {int num_ppfid; } ;



u8 ecore_llh_get_num_ppfid(struct ecore_dev *p_dev)
{
 return p_dev->p_llh_info->num_ppfid;
}
