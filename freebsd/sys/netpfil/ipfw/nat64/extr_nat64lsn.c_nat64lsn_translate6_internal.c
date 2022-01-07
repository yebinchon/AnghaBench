
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct pfloghdr {int dummy; } ;
struct nat64lsn_state {scalar_t__ timestamp; int flags; int aport; int ip_src; } ;
struct TYPE_2__ {int flags; } ;
struct nat64lsn_cfg {int nomatch_verdict; TYPE_1__ base; } ;
struct mbuf {int dummy; } ;


 int AF_INET6 ;
 int IP_FW_DENY ;
 int NAT64RETURN ;
 int NAT64SKIP ;
 int NAT64_LOG ;
 int SET_AGE (scalar_t__) ;
 int htonl (int ) ;
 int htons (int ) ;
 int nat64_do_handle_ip6 (struct mbuf*,int ,int ,TYPE_1__*,struct pfloghdr*) ;
 int nat64lsn_log (struct pfloghdr*,struct mbuf*,int ,struct nat64lsn_state*) ;

__attribute__((used)) static int
nat64lsn_translate6_internal(struct nat64lsn_cfg *cfg, struct mbuf **mp,
    struct nat64lsn_state *state, uint8_t flags)
{
 struct pfloghdr loghdr, *logdata;
 int ret;
 uint16_t ts;


 SET_AGE(ts);
 if (state->timestamp != ts)
  state->timestamp = ts;
 if ((state->flags & flags) != 0)
  state->flags |= flags;

 if (cfg->base.flags & NAT64_LOG) {
  logdata = &loghdr;
  nat64lsn_log(logdata, *mp, AF_INET6, state);
 } else
  logdata = ((void*)0);

 ret = nat64_do_handle_ip6(*mp, htonl(state->ip_src),
     htons(state->aport), &cfg->base, logdata);
 if (ret == NAT64SKIP)
  return (cfg->nomatch_verdict);
 if (ret == NAT64RETURN)
  *mp = ((void*)0);
 return (IP_FW_DENY);
}
