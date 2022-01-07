
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct sctp_stream_queue_pending {int * data; int tail_mbuf; int length; } ;


 int ENOBUFS ;
 int M_WAITOK ;
 int SCTP_FROM_SCTP_OUTPUT ;
 int SCTP_LTRACE_ERR_RET (int *,int *,int *,int ,int) ;
 int m_last (int *) ;
 int * m_uiotombuf (struct uio*,int ,int ,int,int ) ;

__attribute__((used)) static int
sctp_copy_one(struct sctp_stream_queue_pending *sp,
    struct uio *uio,
    int resv_upfront)
{
 sp->data = m_uiotombuf(uio, M_WAITOK, sp->length,
     resv_upfront, 0);
 if (sp->data == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(((void*)0), ((void*)0), ((void*)0), SCTP_FROM_SCTP_OUTPUT, ENOBUFS);
  return (ENOBUFS);
 }

 sp->tail_mbuf = m_last(sp->data);
 return (0);
}
