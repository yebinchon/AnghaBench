
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifq_drv_maxlen; } ;
struct ifnet {TYPE_1__ if_snd; } ;
typedef scalar_t__ if_t ;


 int IFQ_SET_MAXLEN (TYPE_1__*,int) ;

int
if_setsendqlen(if_t ifp, int tx_desc_count)
{
 IFQ_SET_MAXLEN(&((struct ifnet *)ifp)->if_snd, tx_desc_count);
 ((struct ifnet *)ifp)->if_snd.ifq_drv_maxlen = tx_desc_count;

 return (0);
}
