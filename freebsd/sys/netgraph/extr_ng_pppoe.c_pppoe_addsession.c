
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef TYPE_2__* sessp ;
typedef TYPE_3__* priv_p ;
struct TYPE_9__ {TYPE_1__* sesshash; } ;
struct TYPE_8__ {int Session_ID; int hook; } ;
struct TYPE_7__ {int mtx; int head; } ;


 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int NG_HOOK_NODE (int ) ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 size_t SESSHASH (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sessions ;

__attribute__((used)) static void
pppoe_addsession(sessp sp)
{
 const priv_p privp = NG_NODE_PRIVATE(NG_HOOK_NODE(sp->hook));
 uint16_t hash = SESSHASH(sp->Session_ID);

 mtx_lock(&privp->sesshash[hash].mtx);
 LIST_INSERT_HEAD(&privp->sesshash[hash].head, sp, sessions);
 mtx_unlock(&privp->sesshash[hash].mtx);
}
