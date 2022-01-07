
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pktsize; int numpkts; int so; } ;
typedef TYPE_1__ test_pipe_thread_data_t ;
typedef scalar_t__ ssize_t ;


 int ATF_CHECK_EQ_MSG (int,scalar_t__,char*,int,scalar_t__) ;
 int MSG_EOR ;
 int atf_tc_fail (char*) ;
 int memset (char*,int,int) ;
 int perror (char*) ;
 scalar_t__ send (int ,char*,int,int ) ;

__attribute__((used)) static void*
test_pipe_writer(void* args)
{
 test_pipe_thread_data_t* td = args;
 char sndbuf[td->pktsize];
 ssize_t ssize;
 int i;

 for(i=0; i < td->numpkts; i++) {
   memset(sndbuf, i, td->pktsize);
   ssize = send(td->so, sndbuf, td->pktsize, MSG_EOR);
   if (ssize < 0) {
    perror("send");
    atf_tc_fail("send returned < 0");
   }
   ATF_CHECK_EQ_MSG(td->pktsize, ssize,
          "expected %zd=send(...) but got %zd",
           td->pktsize, ssize);
 }
 return (0);
}
