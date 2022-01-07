
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64lsn_state {int proto; int flags; int timestamp; } ;
struct nat64lsn_cfg {int st_close_ttl; int st_estab_ttl; int st_syn_ttl; int st_udp_ttl; int st_icmp_ttl; } ;


 int GET_AGE (int ) ;



 scalar_t__ ISSET32 (int ,int ) ;
 int NAT64_BIT_READY_IPV4 ;
 int NAT64_BIT_STALE ;
 int NAT64_BIT_TCP_ESTAB ;
 int NAT64_BIT_TCP_FIN ;
 int NAT64_BIT_TCP_SYN ;

__attribute__((used)) static int
nat64lsn_check_state(struct nat64lsn_cfg *cfg, struct nat64lsn_state *state)
{
 int age, ttl;


 if (ISSET32(state->flags, NAT64_BIT_STALE))
  return (1);


 if (!ISSET32(state->flags, NAT64_BIT_READY_IPV4))
  return (0);

 age = GET_AGE(state->timestamp);
 switch (state->proto) {
 case 129:
  if (ISSET32(state->flags, NAT64_BIT_TCP_FIN))
   ttl = cfg->st_close_ttl;
  else if (ISSET32(state->flags, NAT64_BIT_TCP_ESTAB))
   ttl = cfg->st_estab_ttl;
  else if (ISSET32(state->flags, NAT64_BIT_TCP_SYN))
   ttl = cfg->st_syn_ttl;
  else
   ttl = cfg->st_syn_ttl;
  if (age > ttl)
   return (1);
  break;
 case 128:
  if (age > cfg->st_udp_ttl)
   return (1);
  break;
 case 130:
  if (age > cfg->st_icmp_ttl)
   return (1);
  break;
 }
 return (0);
}
