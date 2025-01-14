
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ snd_numholes; } ;
struct sackhole {int dummy; } ;


 int KASSERT (int,char*) ;
 int V_sack_hole_zone ;
 scalar_t__ V_tcp_sack_globalholes ;
 int atomic_subtract_int (scalar_t__*,int) ;
 int uma_zfree (int ,struct sackhole*) ;

__attribute__((used)) static void
tcp_sackhole_free(struct tcpcb *tp, struct sackhole *hole)
{

 uma_zfree(V_sack_hole_zone, hole);

 tp->snd_numholes--;
 atomic_subtract_int(&V_tcp_sack_globalholes, 1);

 KASSERT(tp->snd_numholes >= 0, ("tp->snd_numholes >= 0"));
 KASSERT(V_tcp_sack_globalholes >= 0, ("tcp_sack_globalholes >= 0"));
}
