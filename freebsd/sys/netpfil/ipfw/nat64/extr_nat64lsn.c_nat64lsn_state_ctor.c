
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nat64lsn_states_chunk {TYPE_1__* state; } ;
struct TYPE_2__ {scalar_t__ flags; } ;



__attribute__((used)) static int
nat64lsn_state_ctor(void *mem, int size, void *arg, int flags)
{
 struct nat64lsn_states_chunk *chunk;
 int i;

 chunk = (struct nat64lsn_states_chunk *)mem;
 for (i = 0; i < 64; i++)
  chunk->state[i].flags = 0;
 return (0);
}
