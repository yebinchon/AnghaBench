
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_HASHFIELDS_2TUPLE ;
 int UDBHASHSIZE ;
 int V_ulitecb ;
 int V_ulitecbinfo ;
 int in_pcbinfo_init (int *,char*,int *,int ,int ,char*,int ,int ) ;
 int udplite_inpcb_init ;

void
udplite_init(void)
{

 in_pcbinfo_init(&V_ulitecbinfo, "udplite", &V_ulitecb, UDBHASHSIZE,
     UDBHASHSIZE, "udplite_inpcb", udplite_inpcb_init,
     IPI_HASHFIELDS_2TUPLE);
}
