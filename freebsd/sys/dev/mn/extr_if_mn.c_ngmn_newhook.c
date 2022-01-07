
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct mn_softc {scalar_t__ framing; int nhooks; TYPE_1__** ch; } ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_2__ {scalar_t__ state; int ts; int tx_limit; int hook; } ;


 scalar_t__ E1 ;
 scalar_t__ E1U ;
 int EBUSY ;
 int EINVAL ;
 int NG_HOOK_SET_PRIVATE (int ,TYPE_1__*) ;
 struct mn_softc* NG_NODE_PRIVATE (int ) ;
 scalar_t__ UP ;
 int ffs (int) ;
 int mn_create_channel (struct mn_softc*,int) ;
 int mn_parse_ts (char const*,int*) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
ngmn_newhook(node_p node, hook_p hook, const char *name)
{
 u_int32_t ts, chan;
 struct mn_softc *sc;
 int nbit;

 sc = NG_NODE_PRIVATE(node);

 if (name[0] != 't' || name[1] != 's')
  return (EINVAL);

 ts = mn_parse_ts(name + 2, &nbit);
 printf("%d bits %x\n", nbit, ts);
 if (sc->framing == E1 && (ts & 1))
  return (EINVAL);
 if (sc->framing == E1U && nbit != 32)
  return (EINVAL);
 if (ts == 0)
  return (EINVAL);
 if (sc->framing == E1)
  chan = ffs(ts) - 1;
 else
  chan = 1;
 if (!sc->ch[chan])
  mn_create_channel(sc, chan);
 else if (sc->ch[chan]->state == UP)
  return (EBUSY);
 sc->ch[chan]->ts = ts;
 sc->ch[chan]->hook = hook;
 sc->ch[chan]->tx_limit = nbit * 8;
 NG_HOOK_SET_PRIVATE(hook, sc->ch[chan]);
 sc->nhooks++;
 return(0);
}
