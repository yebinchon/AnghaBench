
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ecore_vf_info {scalar_t__ num_txqs; } ;


 int ECORE_IOV_VALIDATE_Q_ENABLE ;
 scalar_t__ ecore_iov_validate_queue_mode (struct ecore_vf_info*,scalar_t__,int ,int) ;

__attribute__((used)) static bool ecore_iov_validate_active_txq(struct ecore_vf_info *p_vf)
{
 u8 i;

 for (i = 0; i < p_vf->num_txqs; i++)
  if (ecore_iov_validate_queue_mode(p_vf, i,
        ECORE_IOV_VALIDATE_Q_ENABLE,
        1))
   return 1;

 return 0;
}
