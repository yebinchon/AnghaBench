
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* layout; int revs; } ;
typedef TYPE_2__ bhnd_sprom_opcode_state ;
struct TYPE_4__ {int rev; } ;


 int bit_test (int ,int ) ;

__attribute__((used)) static inline bool
bhnd_sprom_opcode_matches_layout_rev(bhnd_sprom_opcode_state *state)
{
 return (bit_test(state->revs, state->layout->rev));
}
