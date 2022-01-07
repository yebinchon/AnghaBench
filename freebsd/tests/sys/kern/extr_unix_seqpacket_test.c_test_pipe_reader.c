
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pktsize; int numpkts; int so; } ;
typedef TYPE_1__ test_pipe_thread_data_t ;
typedef scalar_t__ ssize_t ;


 int ATF_CHECK_EQ_MSG (int,int,char*,int,...) ;
 int MSG_WAITALL ;
 int atf_tc_fail (char*) ;
 int memcmp (char*,char*,int) ;
 int memset (char*,int,int) ;
 int perror (char*) ;
 scalar_t__ recv (int ,char*,int,int ) ;

__attribute__((used)) static void*
test_pipe_reader(void* args)
{
 test_pipe_thread_data_t* td = args;
 char rcvbuf[td->pktsize];
 char comparebuf[td->pktsize];
 ssize_t rsize;
 int i, d;

 for(i=0; i < td->numpkts; i++) {
  memset(comparebuf, i, td->pktsize);
  rsize = recv(td->so, rcvbuf, td->pktsize, MSG_WAITALL);
  if (rsize < 0) {
   perror("recv");
   atf_tc_fail("recv returned < 0");
  }
  ATF_CHECK_EQ_MSG(td->pktsize, rsize,
         "expected %zd=send(...) but got %zd",
     td->pktsize, rsize);
  d = memcmp(comparebuf, rcvbuf, td->pktsize);
  ATF_CHECK_EQ_MSG(0, d,
         "Received data miscompare on packet %d", i);
 }
 return (0);
}
