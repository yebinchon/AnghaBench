
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {int revs; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;


 int EINVAL ;
 int SPROM_OP_BAD (TYPE_1__*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ SPROM_OP_REV_MAX ;
 int bhnd_sprom_opcode_clear_var (TYPE_1__*) ;
 int bit_nset (int ,scalar_t__,scalar_t__) ;
 int memset (int ,int,int) ;

__attribute__((used)) static inline int
bhnd_sprom_opcode_set_revs(bhnd_sprom_opcode_state *state, uint8_t start,
    uint8_t end)
{
 int error;


 if (start > SPROM_OP_REV_MAX ||
     end > SPROM_OP_REV_MAX ||
     end < start)
 {
  SPROM_OP_BAD(state, "invalid revision range: %hhu-%hhu\n",
      start, end);
  return (EINVAL);
 }


 if ((error = bhnd_sprom_opcode_clear_var(state)))
  return (error);


 memset(state->revs, 0x0, sizeof(state->revs));
 bit_nset(state->revs, start, end);

 return (0);
}
