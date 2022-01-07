
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twa_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_io; int * cl_req_ctxt; int * osl_req_ctxt; } ;
struct tw_osli_req_context {int req_pkt; int * orig_req; scalar_t__ error_code; scalar_t__ flags; int state; scalar_t__ real_length; int * real_data; scalar_t__ deadline; scalar_t__ length; int * data; TYPE_1__ req_handle; } ;
struct tw_cl_req_packet {int dummy; } ;


 int TW_OSLI_FREE_Q ;
 int TW_OSLI_REQ_STATE_INIT ;
 int bzero (int *,int) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;
 struct tw_osli_req_context* tw_osli_req_q_remove_head (struct twa_softc*,int ) ;

struct tw_osli_req_context *
tw_osli_get_request(struct twa_softc *sc)
{
 struct tw_osli_req_context *req;

 tw_osli_dbg_dprintf(4, sc, "entered");


 req = tw_osli_req_q_remove_head(sc, TW_OSLI_FREE_Q);


 if (req) {
  req->req_handle.osl_req_ctxt = ((void*)0);
  req->req_handle.cl_req_ctxt = ((void*)0);
  req->req_handle.is_io = 0;
  req->data = ((void*)0);
  req->length = 0;
  req->deadline = 0;
  req->real_data = ((void*)0);
  req->real_length = 0;
  req->state = TW_OSLI_REQ_STATE_INIT;
  req->flags = 0;
  req->error_code = 0;
  req->orig_req = ((void*)0);

  bzero(&(req->req_pkt), sizeof(struct tw_cl_req_packet));

 }
 return(req);
}
