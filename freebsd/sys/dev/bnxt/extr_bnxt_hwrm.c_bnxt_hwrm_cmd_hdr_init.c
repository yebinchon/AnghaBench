
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct input {int cmpl_ring; int target_id; int resp_addr; int req_type; } ;
struct TYPE_2__ {int idi_paddr; } ;
struct bnxt_softc {TYPE_1__ hwrm_cmd_resp; } ;


 int htole16 (int ) ;
 int htole64 (int ) ;

__attribute__((used)) static void
bnxt_hwrm_cmd_hdr_init(struct bnxt_softc *softc, void *request,
    uint16_t req_type)
{
 struct input *req = request;

 req->req_type = htole16(req_type);
 req->cmpl_ring = 0xffff;
 req->target_id = 0xffff;
 req->resp_addr = htole64(softc->hwrm_cmd_resp.idi_paddr);
}
