
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int ENOMEM ;
 int * KMALLOC (int,int ,int) ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 int M_ZERO ;
 int subkey_table_gen (int const*,int **) ;

__attribute__((used)) static int
skipjack_setkey(u_int8_t **sched, const u_int8_t *key, int len)
{
 int err;


 *sched = KMALLOC(10 * (sizeof(u_int8_t *) + 0x100),
  M_CRYPTO_DATA, M_NOWAIT|M_ZERO);
 if (*sched != ((void*)0)) {
  u_int8_t** key_tables = (u_int8_t**) *sched;
  u_int8_t* table = (u_int8_t*) &key_tables[10];
  int k;

  for (k = 0; k < 10; k++) {
   key_tables[k] = table;
   table += 0x100;
  }
  subkey_table_gen(key, (u_int8_t **) *sched);
  err = 0;
 } else
  err = ENOMEM;
 return err;
}
