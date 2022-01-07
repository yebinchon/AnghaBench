
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int sndbufsize ;
typedef int rcvbufsize ;


 int ATF_CHECK_EQ_MSG (int const,int,char*,...) ;
 int ATF_REQUIRE_EQ (int ,int ) ;
 int ATF_REQUIRE_MSG (int,char*) ;
 scalar_t__ EAGAIN ;
 scalar_t__ EMSGSIZE ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int MSG_EOR ;
 int MSG_WAITALL ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int atf_tc_fail (char*) ;
 int close (int) ;
 int do_socketpair_nonblocking (int*) ;
 scalar_t__ errno ;
 int memcmp (char*,char*,int const) ;
 int memset (char*,int,int const) ;
 int perror (char*) ;
 int recv (int,char*,int const,int ) ;
 int send (int,char*,int const,int ) ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static void
test_pipe_simulator(int sndbufsize, int rcvbufsize)
{
 int num_sent, num_received;
 int sv[2];
 const ssize_t pktsize = MIN(sndbufsize, rcvbufsize) / 4;
 int numpkts;
 char sndbuf[pktsize];
 char rcvbuf[pktsize];
 char comparebuf[pktsize];
 ssize_t ssize, rsize;
 bool currently_sending = 1;


 do_socketpair_nonblocking(sv);

 ATF_REQUIRE_EQ(0, setsockopt(sv[0], SOL_SOCKET, SO_SNDBUF, &sndbufsize,
     sizeof(sndbufsize)));
 ATF_REQUIRE_EQ(0, setsockopt(sv[1], SOL_SOCKET, SO_RCVBUF, &rcvbufsize,
     sizeof(rcvbufsize)));


 numpkts = MAX(sndbufsize, rcvbufsize) * 8 / pktsize;
 for (num_sent=0, num_received=0;
      num_sent < numpkts || num_received < numpkts; ) {
  if (currently_sending && num_sent < numpkts) {


   memset(sndbuf, num_sent, pktsize);
   ssize = send(sv[0], sndbuf, pktsize, MSG_EOR);
   if (ssize < 0) {





    if (errno == EAGAIN || errno == EMSGSIZE)
     currently_sending = 0;
    else {
     perror("send");
     atf_tc_fail("send failed");
    }
   } else {
    ATF_CHECK_EQ_MSG(pktsize, ssize,
        "expected %zd=send(...) but got %zd",
        pktsize, ssize);
    num_sent++;
   }
  } else {

   rsize = recv(sv[1], rcvbuf, pktsize, MSG_WAITALL);
   if (rsize < 0) {
    if (errno == EAGAIN) {
     currently_sending = 1;
     ATF_REQUIRE_MSG(num_sent < numpkts,
         "Packets were lost!");
    }
    else {
     perror("recv");
     atf_tc_fail("recv failed");
    }
   } else {
    ATF_CHECK_EQ_MSG(pktsize, rsize,
        "expected %zd=recv(...) but got %zd",
        pktsize, rsize);
    memset(comparebuf, num_received, pktsize);
    ATF_CHECK_EQ_MSG(0, memcmp(comparebuf, rcvbuf,
              pktsize),
        "Received data miscompare");
    num_received++;
   }
  }
 }
 close(sv[0]);
 close(sv[1]);
}
