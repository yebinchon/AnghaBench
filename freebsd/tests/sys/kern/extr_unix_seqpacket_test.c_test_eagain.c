
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int sndbufsize ;
typedef int rcvbufsize ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 scalar_t__ EAGAIN ;
 int MIN (int,int) ;
 int MSG_EOR ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int atf_tc_fail (char*) ;
 int atf_tc_pass () ;
 int bzero (char*,size_t const) ;
 int close (int) ;
 int do_socketpair_nonblocking (int*) ;
 scalar_t__ errno ;
 int perror (char*) ;
 int send (int,char*,size_t const,int ) ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static void
test_eagain(int sndbufsize, int rcvbufsize)
{
 int i;
 int sv[2];
 const size_t totalsize = (sndbufsize + rcvbufsize) * 2;
 const size_t pktsize = MIN(sndbufsize, rcvbufsize) / 4;
 const int numpkts = totalsize / pktsize;
 char sndbuf[pktsize];
 ssize_t ssize;


 do_socketpair_nonblocking(sv);

 ATF_REQUIRE_EQ(0, setsockopt(sv[0], SOL_SOCKET, SO_SNDBUF, &sndbufsize,
     sizeof(sndbufsize)));
 ATF_REQUIRE_EQ(0, setsockopt(sv[1], SOL_SOCKET, SO_RCVBUF, &rcvbufsize,
     sizeof(rcvbufsize)));

 bzero(sndbuf, pktsize);

 for(i=0; i < numpkts; i++) {
  ssize = send(sv[0], sndbuf, pktsize, MSG_EOR);
  if (ssize == -1) {
   if (errno == EAGAIN) {
    close(sv[0]);
    close(sv[1]);
    atf_tc_pass();
   }
   else {
    perror("send");
    atf_tc_fail("send returned < 0 but not EAGAIN");
   }
  }
 }
 atf_tc_fail("Never got EAGAIN");
}
