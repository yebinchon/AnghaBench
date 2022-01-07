
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigevent {int dummy; } ;
struct rusage {scalar_t__ ru_msgsnd; scalar_t__ ru_msgrcv; } ;
struct aio_context {int dummy; } ;
typedef int completion ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_KERNEL_MODULE (char*) ;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int PF_UNIX ;
 int RUSAGE_SELF ;
 int SOCK_STREAM ;
 int UNIX_SOCKETPAIR_LEN ;
 int aio_context_init (struct aio_context*,int,int,int ) ;
 int aio_read_test (struct aio_context*,int ,struct sigevent*) ;
 int aio_write_test (struct aio_context*,int ,struct sigevent*) ;
 int close (int) ;
 int errno ;
 int getrusage (int ,struct rusage*) ;
 int socketpair (int ,int ,int ,int*) ;
 int strerror (int ) ;

__attribute__((used)) static void
aio_unix_socketpair_test(completion comp, struct sigevent *sev)
{
 struct aio_context ac;
 struct rusage ru_before, ru_after;
 int sockets[2];

 ATF_REQUIRE_KERNEL_MODULE("aio");

 ATF_REQUIRE_MSG(socketpair(PF_UNIX, SOCK_STREAM, 0, sockets) != -1,
     "socketpair failed: %s", strerror(errno));

 aio_context_init(&ac, sockets[0], sockets[1], UNIX_SOCKETPAIR_LEN);
 ATF_REQUIRE_MSG(getrusage(RUSAGE_SELF, &ru_before) != -1,
     "getrusage failed: %s", strerror(errno));
 aio_write_test(&ac, comp, sev);
 ATF_REQUIRE_MSG(getrusage(RUSAGE_SELF, &ru_after) != -1,
     "getrusage failed: %s", strerror(errno));
 ATF_REQUIRE(ru_after.ru_msgsnd == ru_before.ru_msgsnd + 1);
 ru_before = ru_after;
 aio_read_test(&ac, comp, sev);
 ATF_REQUIRE_MSG(getrusage(RUSAGE_SELF, &ru_after) != -1,
     "getrusage failed: %s", strerror(errno));
 ATF_REQUIRE(ru_after.ru_msgrcv == ru_before.ru_msgrcv + 1);

 close(sockets[0]);
 close(sockets[1]);
}
