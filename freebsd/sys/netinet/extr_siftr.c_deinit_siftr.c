
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_SIFTR ;
 int SIFTR_DISABLE ;
 int counter_hash ;
 int hashdestroy (int ,int ,int ) ;
 int mtx_destroy (int *) ;
 int siftr_hashmask ;
 int siftr_manage_ops (int ) ;
 int siftr_pkt_mgr_mtx ;
 int siftr_pkt_queue_mtx ;

__attribute__((used)) static int
deinit_siftr(void)
{

 siftr_manage_ops(SIFTR_DISABLE);
 hashdestroy(counter_hash, M_SIFTR, siftr_hashmask);
 mtx_destroy(&siftr_pkt_queue_mtx);
 mtx_destroy(&siftr_pkt_mgr_mtx);

 return (0);
}
