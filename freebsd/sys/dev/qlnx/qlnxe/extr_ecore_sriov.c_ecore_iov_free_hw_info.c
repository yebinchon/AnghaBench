
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_dev {int p_iov_info; } ;


 int OSAL_FREE (struct ecore_dev*,int ) ;
 int OSAL_NULL ;

void ecore_iov_free_hw_info(struct ecore_dev *p_dev)
{
 OSAL_FREE(p_dev, p_dev->p_iov_info);
 p_dev->p_iov_info = OSAL_NULL;
}
