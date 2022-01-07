
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int MODVERSION_STR ;
 int MTX_DEF ;
 int M_SIFTR ;
 int SHUTDOWN_PRI_FIRST ;
 int SIFTR_EXPECTED_MAX_TCP_FLOWS ;
 int counter_hash ;
 int hashinit (int ,int ,int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int shutdown_pre_sync ;
 int siftr_hashmask ;
 int siftr_pkt_mgr_mtx ;
 int siftr_pkt_queue_mtx ;
 int siftr_shutdown_handler ;
 int uprintf (char*,int ) ;

__attribute__((used)) static int
init_siftr(void)
{
 EVENTHANDLER_REGISTER(shutdown_pre_sync, siftr_shutdown_handler, ((void*)0),
     SHUTDOWN_PRI_FIRST);


 counter_hash = hashinit(SIFTR_EXPECTED_MAX_TCP_FLOWS, M_SIFTR,
     &siftr_hashmask);

 mtx_init(&siftr_pkt_queue_mtx, "siftr_pkt_queue_mtx", ((void*)0), MTX_DEF);
 mtx_init(&siftr_pkt_mgr_mtx, "siftr_pkt_mgr_mtx", ((void*)0), MTX_DEF);


 uprintf("\nStatistical Information For TCP Research (SIFTR) %s\n"
     "          http://caia.swin.edu.au/urp/newtcp\n\n",
     MODVERSION_STR);

 return (0);
}
