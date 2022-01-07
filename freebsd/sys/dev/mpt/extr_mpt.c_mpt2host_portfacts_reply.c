
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG_PORT_FACTS_REPLY ;


 int IOCLogInfo ;
 int IOCStatus ;
 int MPT_2_HOST16 (int *,int ) ;
 int MPT_2_HOST32 (int *,int ) ;
 int MaxDevices ;
 int MaxLanBuckets ;
 int MaxPersistentIDs ;
 int MaxPostedCmdBuffers ;
 int MsgContext ;
 int PortSCSIID ;
 int ProtocolFlags ;
 int Reserved ;
 int Reserved1 ;
 int Reserved2 ;
 int Reserved4 ;
 int Reserved5 ;

void
mpt2host_portfacts_reply(MSG_PORT_FACTS_REPLY *pfp)
{

 MPT_2_HOST16(pfp, Reserved);
 MPT_2_HOST16(pfp, Reserved1);
 MPT_2_HOST32(pfp, MsgContext);
 MPT_2_HOST16(pfp, Reserved2);
 MPT_2_HOST16(pfp, IOCStatus);
 MPT_2_HOST32(pfp, IOCLogInfo);
 MPT_2_HOST16(pfp, MaxDevices);
 MPT_2_HOST16(pfp, PortSCSIID);
 MPT_2_HOST16(pfp, ProtocolFlags);
 MPT_2_HOST16(pfp, MaxPostedCmdBuffers);
 MPT_2_HOST16(pfp, MaxPersistentIDs);
 MPT_2_HOST16(pfp, MaxLanBuckets);
 MPT_2_HOST16(pfp, Reserved4);
 MPT_2_HOST32(pfp, Reserved5);
}
