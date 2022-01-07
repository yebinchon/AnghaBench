
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int NUM_TX_DESCRIPTORS ;

__attribute__((used)) static __inline int
qla_get_ifq_snd_maxlen(qla_host_t *ha)
{
 return(((NUM_TX_DESCRIPTORS * 4) - 1));
}
