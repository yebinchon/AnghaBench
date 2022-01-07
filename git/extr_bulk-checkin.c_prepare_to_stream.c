
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bulk_checkin_state {int offset; scalar_t__ f; int pack_idx_opts; int pack_tmp_name; } ;


 unsigned int HASH_WRITE_OBJECT ;
 scalar_t__ create_tmp_packfile (int *) ;
 int die_errno (char*) ;
 int reset_pack_idx_option (int *) ;
 int write_pack_header (scalar_t__,int) ;

__attribute__((used)) static void prepare_to_stream(struct bulk_checkin_state *state,
         unsigned flags)
{
 if (!(flags & HASH_WRITE_OBJECT) || state->f)
  return;

 state->f = create_tmp_packfile(&state->pack_tmp_name);
 reset_pack_idx_option(&state->pack_idx_opts);


 state->offset = write_pack_header(state->f, 1);
 if (!state->offset)
  die_errno("unable to write pack header");
}
