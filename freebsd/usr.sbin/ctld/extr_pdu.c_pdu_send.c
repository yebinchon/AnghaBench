
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zero ;
typedef int uint32_t ;
struct pdu {int pdu_data_len; TYPE_1__* pdu_connection; int * pdu_data; int * pdu_bhs; } ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int ssize_t ;
struct TYPE_2__ {int conn_socket; } ;


 int assert (int) ;
 int log_err (int,char*) ;
 int log_errx (int,char*) ;
 size_t pdu_padding (struct pdu*) ;
 void pdu_send_proxy (struct pdu*) ;
 int pdu_set_data_segment_length (struct pdu*,int) ;
 int proxy_mode ;
 scalar_t__ timed_out () ;
 int writev (int ,struct iovec*,int) ;

void
pdu_send(struct pdu *pdu)
{
 ssize_t ret, total_len;
 size_t padding;
 uint32_t zero = 0;
 struct iovec iov[3];
 int iovcnt;






 assert(proxy_mode == 0);

 pdu_set_data_segment_length(pdu, pdu->pdu_data_len);
 iov[0].iov_base = pdu->pdu_bhs;
 iov[0].iov_len = sizeof(*pdu->pdu_bhs);
 total_len = iov[0].iov_len;
 iovcnt = 1;

 if (pdu->pdu_data_len > 0) {
  iov[1].iov_base = pdu->pdu_data;
  iov[1].iov_len = pdu->pdu_data_len;
  total_len += iov[1].iov_len;
  iovcnt = 2;

  padding = pdu_padding(pdu);
  if (padding > 0) {
   assert(padding < sizeof(zero));
   iov[2].iov_base = &zero;
   iov[2].iov_len = padding;
   total_len += iov[2].iov_len;
   iovcnt = 3;
  }
 }

 ret = writev(pdu->pdu_connection->conn_socket, iov, iovcnt);
 if (ret < 0) {
  if (timed_out())
   log_errx(1, "exiting due to timeout");
  log_err(1, "writev");
 }
 if (ret != total_len)
  log_errx(1, "short write");
}
