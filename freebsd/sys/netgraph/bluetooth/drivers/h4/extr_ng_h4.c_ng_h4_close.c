
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tty {int * t_lsc; int t_outq; } ;
typedef TYPE_1__* ng_h4_info_p ;
struct TYPE_4__ {int dying; int node; int timo; } ;


 int FREAD ;
 int FWRITE ;
 int NG_H4_LOCK (TYPE_1__*) ;
 int NG_H4_UNLOCK (TYPE_1__*) ;
 scalar_t__ callout_pending (int *) ;
 int clist_free_cblocks (int *) ;
 int ng_rmnode_self (int ) ;
 int ng_uncallout (int *,int ) ;
 int ttyflush (struct tty*,int) ;

__attribute__((used)) static int
ng_h4_close(struct tty *tp, int flag)
{
 ng_h4_info_p sc = (ng_h4_info_p) tp->t_lsc;

 ttyflush(tp, FREAD | FWRITE);
 clist_free_cblocks(&tp->t_outq);

 if (sc != ((void*)0)) {
  NG_H4_LOCK(sc);

  if (callout_pending(&sc->timo))
   ng_uncallout(&sc->timo, sc->node);

  tp->t_lsc = ((void*)0);
  sc->dying = 1;

  NG_H4_UNLOCK(sc);

  ng_rmnode_self(sc->node);
 }

 return (0);
}
