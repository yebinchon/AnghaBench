
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int dummy; } ;
struct vtblk_request {int dummy; } ;


 struct vtblk_request* vtblk_request_bio (struct vtblk_softc*) ;
 struct vtblk_request* vtblk_request_next_ready (struct vtblk_softc*) ;

__attribute__((used)) static struct vtblk_request *
vtblk_request_next(struct vtblk_softc *sc)
{
 struct vtblk_request *req;

 req = vtblk_request_next_ready(sc);
 if (req != ((void*)0))
  return (req);

 return (vtblk_request_bio(sc));
}
