
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int new_id ;


 size_t V_array_ptr ;
 size_t V_array_size ;
 scalar_t__* V_id_array ;
 int V_id_bits ;
 int V_ip_id_mtx ;
 int V_random_id_collisions ;
 int V_random_id_total ;
 int arc4rand (scalar_t__*,int,int ) ;
 int bit_clear (int ,scalar_t__) ;
 int bit_set (int ,scalar_t__) ;
 scalar_t__ bit_test (int ,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static uint16_t
ip_randomid(void)
{
 uint16_t new_id;

 mtx_lock(&V_ip_id_mtx);




 new_id = 0;
 do {
  if (new_id != 0)
   V_random_id_collisions++;
  arc4rand(&new_id, sizeof(new_id), 0);
 } while (bit_test(V_id_bits, new_id) || new_id == 0);
 bit_clear(V_id_bits, V_id_array[V_array_ptr]);
 bit_set(V_id_bits, new_id);
 V_id_array[V_array_ptr] = new_id;
 V_array_ptr++;
 if (V_array_ptr == V_array_size)
  V_array_ptr = 0;
 V_random_id_total++;
 mtx_unlock(&V_ip_id_mtx);
 return (new_id);
}
