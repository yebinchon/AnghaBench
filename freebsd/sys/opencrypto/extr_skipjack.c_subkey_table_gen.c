
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int* ftable ;

void
subkey_table_gen (const u_int8_t *key, u_int8_t **key_tables)
{
 int i, k;

 for (k = 0; k < 10; k++) {
  u_int8_t key_byte = key [k];
  u_int8_t * table = key_tables[k];
  for (i = 0; i < 0x100; i++)
   table [i] = ftable [i ^ key_byte];
 }
}
