
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idx; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;


 int bhnd_nv_free (int ) ;

void
bhnd_sprom_opcode_fini(bhnd_sprom_opcode_state *state)
{
 bhnd_nv_free(state->idx);
}
