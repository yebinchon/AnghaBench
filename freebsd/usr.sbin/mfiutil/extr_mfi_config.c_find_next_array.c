
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct config_id_state {scalar_t__ array_ref; int array_count; scalar_t__* arrays; } ;



__attribute__((used)) static uint16_t
find_next_array(struct config_id_state *state)
{
 int i;


 state->array_ref++;


 for (i = 0; i < state->array_count; i++)
  if (state->arrays[i] == state->array_ref)
   state->array_ref++;
 return (state->array_ref);
}
