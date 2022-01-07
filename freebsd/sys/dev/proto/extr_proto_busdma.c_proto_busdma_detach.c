
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_softc {int dummy; } ;
struct proto_busdma {int sxlck; } ;


 int M_PROTO_BUSDMA ;
 int free (struct proto_busdma*,int ) ;
 int proto_busdma_cleanup (struct proto_softc*,struct proto_busdma*) ;
 int sx_destroy (int *) ;

int
proto_busdma_detach(struct proto_softc *sc, struct proto_busdma *busdma)
{

 proto_busdma_cleanup(sc, busdma);
 sx_destroy(&busdma->sxlck);
 free(busdma, M_PROTO_BUSDMA);
 return (0);
}
