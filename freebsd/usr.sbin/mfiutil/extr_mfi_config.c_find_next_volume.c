
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct config_id_state {scalar_t__ target_id; int log_drv_count; scalar_t__* volumes; } ;



__attribute__((used)) static uint8_t
find_next_volume(struct config_id_state *state)
{
 int i;


 state->target_id++;


 for (i = 0; i < state->log_drv_count; i++)
  if (state->volumes[i] == state->target_id)
   state->target_id++;
 return (state->target_id);
}
