
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bw_upcall {int bu_flags; } ;


 int BW_METER_GEQ ;
 int BW_METER_LEQ ;
 int BW_METER_UNIT_BYTES ;
 int BW_METER_UNIT_PACKETS ;
 int BW_UPCALL_GEQ ;
 int BW_UPCALL_LEQ ;
 int BW_UPCALL_UNIT_BYTES ;
 int BW_UPCALL_UNIT_PACKETS ;

__attribute__((used)) static uint32_t
compute_bw_meter_flags(struct bw_upcall *req)
{
    uint32_t flags = 0;

    if (req->bu_flags & BW_UPCALL_UNIT_PACKETS)
 flags |= BW_METER_UNIT_PACKETS;
    if (req->bu_flags & BW_UPCALL_UNIT_BYTES)
 flags |= BW_METER_UNIT_BYTES;
    if (req->bu_flags & BW_UPCALL_GEQ)
 flags |= BW_METER_GEQ;
    if (req->bu_flags & BW_UPCALL_LEQ)
 flags |= BW_METER_LEQ;

    return flags;
}
