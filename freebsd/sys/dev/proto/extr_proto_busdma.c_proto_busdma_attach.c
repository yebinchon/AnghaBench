
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_softc {int dummy; } ;
struct proto_busdma {int sxlck; } ;


 int M_PROTO_BUSDMA ;
 int M_WAITOK ;
 int M_ZERO ;
 struct proto_busdma* malloc (int,int ,int) ;
 int sx_init (int *,char*) ;

struct proto_busdma *
proto_busdma_attach(struct proto_softc *sc)
{
 struct proto_busdma *busdma;

 busdma = malloc(sizeof(*busdma), M_PROTO_BUSDMA, M_WAITOK | M_ZERO);
 sx_init(&busdma->sxlck, "proto-busdma");
 return (busdma);
}
