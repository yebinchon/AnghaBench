
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct sockaddr {int dummy; } ;
struct sctphdr {int dummy; } ;


 int SCTP_SHUTDOWN_COMPLETE ;
 int sctp_send_resp_msg (struct sockaddr*,struct sockaddr*,struct sctphdr*,int ,int ,int *,int ,int ,int ,int ,int ) ;

void
sctp_send_shutdown_complete2(struct sockaddr *src, struct sockaddr *dst,
    struct sctphdr *sh,
    uint8_t mflowtype, uint32_t mflowid, uint16_t fibnum,
    uint32_t vrf_id, uint16_t port)
{
 sctp_send_resp_msg(src, dst, sh, 0, SCTP_SHUTDOWN_COMPLETE, ((void*)0),
     mflowtype, mflowid, fibnum,
     vrf_id, port);
}
