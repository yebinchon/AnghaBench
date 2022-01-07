
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Word; } ;
struct TYPE_6__ {int HostPageBufferSGE; } ;
typedef TYPE_1__ MSG_IOC_FACTS_REPLY ;


 int CurReplyFrameSize ;
 int CurrentHostMfaHighAddr ;
 int CurrentSenseBufferHighAddr ;
 int FWImageSize ;
 TYPE_5__ FWVersion ;
 int GlobalCredits ;
 int HeaderVersion ;
 int HighPriorityQueueDepth ;
 int IOCCapabilities ;
 int IOCExceptions ;
 int IOCLogInfo ;
 int IOCStatus ;
 int MPT_2_HOST16 (TYPE_1__*,int ) ;
 int MPT_2_HOST32 (TYPE_1__*,int ) ;
 int MsgContext ;
 int MsgVersion ;
 int ProductID ;
 int ReplyFifoHostSignalingAddr ;
 int ReplyQueueDepth ;
 int RequestFrameSize ;
 int Reserved2 ;
 int Reserved_0101_FWVersion ;
 int mpt2host_sge_simple_union (int *) ;

void
mpt2host_iocfacts_reply(MSG_IOC_FACTS_REPLY *rp)
{

 MPT_2_HOST16(rp, MsgVersion);
 MPT_2_HOST16(rp, HeaderVersion);
 MPT_2_HOST32(rp, MsgContext);
 MPT_2_HOST16(rp, IOCExceptions);
 MPT_2_HOST16(rp, IOCStatus);
 MPT_2_HOST32(rp, IOCLogInfo);
 MPT_2_HOST16(rp, ReplyQueueDepth);
 MPT_2_HOST16(rp, RequestFrameSize);
 MPT_2_HOST16(rp, Reserved_0101_FWVersion);
 MPT_2_HOST16(rp, ProductID);
 MPT_2_HOST32(rp, CurrentHostMfaHighAddr);
 MPT_2_HOST16(rp, GlobalCredits);
 MPT_2_HOST32(rp, CurrentSenseBufferHighAddr);
 MPT_2_HOST16(rp, CurReplyFrameSize);
 MPT_2_HOST32(rp, FWImageSize);
 MPT_2_HOST32(rp, IOCCapabilities);
 MPT_2_HOST32(rp, FWVersion.Word);
 MPT_2_HOST16(rp, HighPriorityQueueDepth);
 MPT_2_HOST16(rp, Reserved2);
 mpt2host_sge_simple_union(&rp->HostPageBufferSGE);
 MPT_2_HOST32(rp, ReplyFifoHostSignalingAddr);
}
