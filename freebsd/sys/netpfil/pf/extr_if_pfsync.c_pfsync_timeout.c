
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pfsync_bucket {TYPE_2__* b_sc; } ;
struct TYPE_4__ {TYPE_1__* sc_ifp; } ;
struct TYPE_3__ {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int PFSYNC_BUCKET_LOCK (struct pfsync_bucket*) ;
 int PFSYNC_BUCKET_UNLOCK (struct pfsync_bucket*) ;
 int pfsync_push (struct pfsync_bucket*) ;

__attribute__((used)) static void
pfsync_timeout(void *arg)
{
 struct pfsync_bucket *b = arg;

 CURVNET_SET(b->b_sc->sc_ifp->if_vnet);
 PFSYNC_BUCKET_LOCK(b);
 pfsync_push(b);
 PFSYNC_BUCKET_UNLOCK(b);
 CURVNET_RESTORE();
}
