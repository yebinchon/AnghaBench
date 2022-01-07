
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* state; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ arcfour_key ;


 int swap_byte (unsigned char*,unsigned char*) ;

__attribute__((used)) static void prepare_key(unsigned char *key_data_ptr, int key_data_len,
   arcfour_key *key)
{
   unsigned char index1;
   unsigned char index2;
   unsigned char* state;
   short counter;

   state = &key->state[0];
   for(counter = 0; counter < 256; counter++)
   state[counter] = counter;
   key->x = 0;
   key->y = 0;
   index1 = 0;
   index2 = 0;
   for(counter = 0; counter < 256; counter++)
   {
      index2 = (key_data_ptr[index1] + state[counter] +
                index2) % 256;
      swap_byte(&state[counter], &state[index2]);

      index1 = (index1 + 1) % key_data_len;
   }
}
