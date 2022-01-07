
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc5fds (int*,int*,int*) ;
 int close (int) ;
 int close2 (int,int) ;
 int printf (char*,char const*) ;
 int save_sysctls (int*,int*) ;
 int sendfd (int,int) ;
 char const* test ;
 int test_sysctls (int,int) ;

__attribute__((used)) static void
fivesome_drop_work(const char *testname, int close_spare_after_send,
    int close_sva_after_send)
{
 int inflight, openfiles;
 int spare, sva[2], svb[2];

 printf("%s\n", testname);
 test = testname;
 save_sysctls(&inflight, &openfiles);
 alloc5fds(&spare, sva, svb);




 sendfd(sva[0], spare);
 if (close_spare_after_send)
  close(spare);




 sendfd(svb[0], sva[0]);
 sendfd(svb[0], sva[1]);
 if (close_sva_after_send)
  close2(sva[0], sva[1]);

 close2(svb[0], svb[1]);

 if (!close_sva_after_send)
  close2(sva[0], sva[1]);
 if (!close_spare_after_send)
  close(spare);

 test_sysctls(inflight, openfiles);
}
