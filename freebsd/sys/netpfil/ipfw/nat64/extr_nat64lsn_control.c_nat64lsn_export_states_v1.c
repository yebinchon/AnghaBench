
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union nat64lsn_pgidx {int chunk; scalar_t__ index; } ;
typedef int uintmax_t ;
typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct sockopt_data {int dummy; } ;
struct nat64lsn_state {int flags; int timestamp; int proto; int aport; int sport; int dport; int ip_dst; TYPE_3__* host; } ;
struct nat64lsn_pg {int chunks_count; TYPE_2__** states_chunk; TYPE_1__* states; } ;
struct nat64lsn_cfg {int dummy; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_10__ {int idle; int proto; scalar_t__ flags; int aport; int sport; int dport; TYPE_4__ daddr; int host6; } ;
typedef TYPE_5__ ipfw_nat64lsn_state_v1 ;
struct TYPE_8__ {int addr; } ;
struct TYPE_7__ {struct nat64lsn_state* state; } ;
struct TYPE_6__ {struct nat64lsn_state* state; } ;


 int DPRINTF (int ,char*,int ,int) ;
 int DP_STATE ;
 int EINVAL ;
 int ENOMEM ;
 int FREEMASK_COPY (struct nat64lsn_pg*,int,int ) ;
 int GET_AGE (int ) ;
 scalar_t__ ISSET64 (int ,int) ;
 int bitcount64 (int ) ;
 int htonl (int ) ;
 scalar_t__ ipfw_get_sopt_space (struct sockopt_data*,int) ;

__attribute__((used)) static int
nat64lsn_export_states_v1(struct nat64lsn_cfg *cfg, union nat64lsn_pgidx *idx,
    struct nat64lsn_pg *pg, struct sockopt_data *sd, uint32_t *ret_count)
{
 ipfw_nat64lsn_state_v1 *s;
 struct nat64lsn_state *state;
 uint64_t freemask;
 uint32_t i, count;


 if (idx->chunk > pg->chunks_count - 1)
  return (EINVAL);

 FREEMASK_COPY(pg, idx->chunk, freemask);
 count = 64 - bitcount64(freemask);
 if (count == 0)
  return (0);

 DPRINTF(DP_STATE, "EXPORT PG 0x%16jx, count %d",
     (uintmax_t)idx->index, count);

 s = (ipfw_nat64lsn_state_v1 *)ipfw_get_sopt_space(sd,
     count * sizeof(ipfw_nat64lsn_state_v1));
 if (s == ((void*)0))
  return (ENOMEM);

 for (i = 0; i < 64; i++) {
  if (ISSET64(freemask, i))
   continue;
  state = pg->chunks_count == 1 ? &pg->states->state[i] :
      &pg->states_chunk[idx->chunk]->state[i];

  s->host6 = state->host->addr;
  s->daddr.s_addr = htonl(state->ip_dst);
  s->dport = state->dport;
  s->sport = state->sport;
  s->aport = state->aport;
  s->flags = (uint8_t)(state->flags & 7);
  s->proto = state->proto;
  s->idle = GET_AGE(state->timestamp);
  s++;
 }
 *ret_count = count;
 return (0);
}
