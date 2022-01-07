
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_IPID ;
 int * V_id_array ;
 int * V_id_bits ;
 int V_ip_id ;
 int V_ip_id_mtx ;
 int counter_u64_free (int ) ;
 int free (int *,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
ipid_sysuninit(void)
{

 if (V_id_array != ((void*)0)) {
  free(V_id_array, M_IPID);
  free(V_id_bits, M_IPID);
 }
 counter_u64_free(V_ip_id);
 mtx_destroy(&V_ip_id_mtx);
}
