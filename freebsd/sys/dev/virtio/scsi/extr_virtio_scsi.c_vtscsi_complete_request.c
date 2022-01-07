
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_request {int vsr_flags; int vsr_softc; int (* vsr_complete ) (int ,struct vtscsi_request*) ;} ;


 int VTSCSI_REQ_FLAG_COMPLETE ;
 int VTSCSI_REQ_FLAG_POLLED ;
 int stub1 (int ,struct vtscsi_request*) ;

__attribute__((used)) static void
vtscsi_complete_request(struct vtscsi_request *req)
{

 if (req->vsr_flags & VTSCSI_REQ_FLAG_POLLED)
  req->vsr_flags |= VTSCSI_REQ_FLAG_COMPLETE;

 if (req->vsr_complete != ((void*)0))
  req->vsr_complete(req->vsr_softc, req);
}
