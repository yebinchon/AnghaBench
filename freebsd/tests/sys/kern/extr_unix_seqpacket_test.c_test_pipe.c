
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pktsize; int numpkts; int so; } ;
typedef TYPE_1__ test_pipe_thread_data_t ;
typedef int sndbufsize ;
typedef int rcvbufsize ;
typedef int pthread_t ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int close (int) ;
 int do_socketpair (int*) ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_join (int ,int *) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int test_pipe_reader ;
 int test_pipe_writer ;
 int usleep (int) ;

__attribute__((used)) static void
test_pipe(int sndbufsize, int rcvbufsize)
{
 test_pipe_thread_data_t writer_data, reader_data;
 pthread_t writer, reader;
 int sv[2];
 const size_t pktsize = MIN(sndbufsize, rcvbufsize) / 4;
 int numpkts;


 do_socketpair(sv);

 ATF_REQUIRE_EQ(0, setsockopt(sv[0], SOL_SOCKET, SO_SNDBUF, &sndbufsize,
     sizeof(sndbufsize)));
 ATF_REQUIRE_EQ(0, setsockopt(sv[1], SOL_SOCKET, SO_RCVBUF, &rcvbufsize,
     sizeof(rcvbufsize)));


 numpkts = MAX(sndbufsize, rcvbufsize) * 8 / pktsize;


 writer_data.pktsize = pktsize;
 writer_data.numpkts = numpkts;
 writer_data.so = sv[0];
 reader_data.pktsize = pktsize;
 reader_data.numpkts = numpkts;
 reader_data.so = sv[1];
 ATF_REQUIRE_EQ(0, pthread_create(&writer, ((void*)0), test_pipe_writer,
          (void*)&writer_data));





 usleep(1000);
 ATF_REQUIRE_EQ(0, pthread_create(&reader, ((void*)0), test_pipe_reader,
          (void*)&reader_data));


 ATF_REQUIRE_EQ(0, pthread_join(writer, ((void*)0)));
 ATF_REQUIRE_EQ(0, pthread_join(reader, ((void*)0)));
 close(sv[0]);
 close(sv[1]);
}
