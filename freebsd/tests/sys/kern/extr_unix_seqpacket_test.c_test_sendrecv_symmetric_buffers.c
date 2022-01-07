
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int bufsize ;


 int ATF_CHECK_EQ_MSG (int const,int,char*,int const,int) ;
 int ATF_REQUIRE_EQ (int ,int) ;
 int MSG_EOR ;
 int MSG_WAITALL ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int atf_tc_fail (char*) ;
 int bzero (char*,int const) ;
 int close (int) ;
 int do_socketpair (int*) ;
 int do_socketpair_nonblocking (int*) ;
 int perror (char*) ;
 int recv (int,char*,int const,int ) ;
 int send (int,char*,int const,int ) ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static void
test_sendrecv_symmetric_buffers(int bufsize, int blocking) {
 int s;
 int sv[2];
 const ssize_t pktsize = bufsize / 2;
 char sndbuf[pktsize];
 char recv_buf[pktsize];
 ssize_t ssize, rsize;


 if (blocking)
  do_socketpair(sv);
 else
  do_socketpair_nonblocking(sv);


 s = setsockopt(sv[0], SOL_SOCKET, SO_SNDBUF, &bufsize, sizeof(bufsize));
 ATF_REQUIRE_EQ(0, s);
 s = setsockopt(sv[1], SOL_SOCKET, SO_RCVBUF, &bufsize, sizeof(bufsize));
 ATF_REQUIRE_EQ(0, s);


 bzero(sndbuf, pktsize);


 ssize = send(sv[0], sndbuf, pktsize, MSG_EOR);
 if (ssize < 0) {
  perror("send");
  atf_tc_fail("send returned < 0");
 }
 ATF_CHECK_EQ_MSG(pktsize, ssize, "expected %zd=send(...) but got %zd",
     pktsize, ssize);

 rsize = recv(sv[1], recv_buf, pktsize, MSG_WAITALL);
 if (rsize < 0) {
  perror("recv");
  atf_tc_fail("recv returned < 0");
 }
 ATF_CHECK_EQ_MSG(pktsize, rsize, "expected %zd=send(...) but got %zd",
     pktsize, rsize);
 close(sv[0]);
 close(sv[1]);
}
