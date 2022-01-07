
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_req_ready; } ;
struct vtblk_request {int dummy; } ;


 struct vtblk_request* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct vtblk_request*,int ) ;
 int vbr_link ;

__attribute__((used)) static struct vtblk_request *
vtblk_request_next_ready(struct vtblk_softc *sc)
{
 struct vtblk_request *req;

 req = TAILQ_FIRST(&sc->vtblk_req_ready);
 if (req != ((void*)0))
  TAILQ_REMOVE(&sc->vtblk_req_ready, req, vbr_link);

 return (req);
}
