
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tcp_seq ;
struct tcpcb {scalar_t__ snd_numholes; } ;
struct sackhole {void* rxmit; void* end; void* start; } ;


 int M_NOWAIT ;
 int TCPSTAT_INC (int ) ;
 int V_sack_hole_zone ;
 scalar_t__ V_tcp_sack_globalholes ;
 scalar_t__ V_tcp_sack_globalmaxholes ;
 scalar_t__ V_tcp_sack_maxholes ;
 int atomic_add_int (scalar_t__*,int) ;
 int tcps_sack_sboverflow ;
 scalar_t__ uma_zalloc (int ,int ) ;

__attribute__((used)) static struct sackhole *
tcp_sackhole_alloc(struct tcpcb *tp, tcp_seq start, tcp_seq end)
{
 struct sackhole *hole;

 if (tp->snd_numholes >= V_tcp_sack_maxholes ||
     V_tcp_sack_globalholes >= V_tcp_sack_globalmaxholes) {
  TCPSTAT_INC(tcps_sack_sboverflow);
  return ((void*)0);
 }

 hole = (struct sackhole *)uma_zalloc(V_sack_hole_zone, M_NOWAIT);
 if (hole == ((void*)0))
  return ((void*)0);

 hole->start = start;
 hole->end = end;
 hole->rxmit = start;

 tp->snd_numholes++;
 atomic_add_int(&V_tcp_sack_globalholes, 1);

 return hole;
}
