
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int qla_hw_all_mcast (int *,int) ;

__attribute__((used)) static int
qla_hw_add_all_mcast(qla_host_t *ha)
{
 int ret;

 ret = qla_hw_all_mcast(ha, 1);

 return (ret);
}
