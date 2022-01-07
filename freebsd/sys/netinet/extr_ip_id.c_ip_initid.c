
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bitstr_t ;


 int M_IPID ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ V_array_ptr ;
 int V_array_size ;
 int * V_id_array ;
 int * V_id_bits ;
 int V_ip_id_mtx ;
 scalar_t__ V_random_id_collisions ;
 scalar_t__ V_random_id_total ;
 int bitstr_size (int) ;
 int free (int *,int ) ;
 void* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ip_initid(int new_size)
{
 uint16_t *new_array;
 bitstr_t *new_bits;

 new_array = malloc(new_size * sizeof(uint16_t), M_IPID,
     M_WAITOK | M_ZERO);
 new_bits = malloc(bitstr_size(65536), M_IPID, M_WAITOK | M_ZERO);

 mtx_lock(&V_ip_id_mtx);
 if (V_id_array != ((void*)0)) {
  free(V_id_array, M_IPID);
  free(V_id_bits, M_IPID);
 }
 V_id_array = new_array;
 V_id_bits = new_bits;
 V_array_size = new_size;
 V_array_ptr = 0;
 V_random_id_collisions = 0;
 V_random_id_total = 0;
 mtx_unlock(&V_ip_id_mtx);
}
