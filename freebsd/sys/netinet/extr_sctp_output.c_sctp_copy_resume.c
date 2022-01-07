
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uio {int dummy; } ;
struct mbuf {int dummy; } ;


 int ENOBUFS ;
 int M_EOR ;
 int M_PKTHDR ;
 int M_WAITOK ;
 int SCTP_FROM_SCTP_OUTPUT ;
 int SCTP_LTRACE_ERR_RET (int *,int *,int *,int ,int) ;
 struct mbuf* m_last (struct mbuf*) ;
 int m_length (struct mbuf*,int *) ;
 struct mbuf* m_uiotombuf (struct uio*,int ,int,int ,int) ;

__attribute__((used)) static struct mbuf *
sctp_copy_resume(struct uio *uio,
    int max_send_len,
    int user_marks_eor,
    int *error,
    uint32_t *sndout,
    struct mbuf **new_tail)
{
 struct mbuf *m;

 m = m_uiotombuf(uio, M_WAITOK, max_send_len, 0,
     (M_PKTHDR | (user_marks_eor ? M_EOR : 0)));
 if (m == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(((void*)0), ((void*)0), ((void*)0), SCTP_FROM_SCTP_OUTPUT, ENOBUFS);
  *error = ENOBUFS;
 } else {
  *sndout = m_length(m, ((void*)0));
  *new_tail = m_last(m);
 }
 return (m);
}
