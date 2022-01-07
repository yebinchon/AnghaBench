
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qlnx_host_t ;


 int TX_RING_SIZE ;

__attribute__((used)) static int
qlnx_get_ifq_snd_maxlen(qlnx_host_t *ha)
{
        return(TX_RING_SIZE - 1);
}
