
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int ad ;
struct TYPE_2__ {scalar_t__ rtype; int mremcfd; int mremsfd; } ;


 scalar_t__ MOUSE_PROTO_X10MOUSEREM ;
 int accept (int ,struct sockaddr*,int*) ;
 int close (int) ;
 int debug (char*) ;
 int logwarnx (char*) ;
 TYPE_1__ rodent ;

__attribute__((used)) static void
mremote_clientchg(int add)
{
    struct sockaddr_un ad;
    socklen_t ad_len;
    int fd;

    if (rodent.rtype != MOUSE_PROTO_X10MOUSEREM)
 return;

    if (add) {

 ad_len = sizeof(ad);
 fd = accept(rodent.mremsfd, (struct sockaddr *) &ad, &ad_len);
 if (fd < 0)
     logwarnx("failed accept on mouse remote socket");

 if (rodent.mremcfd < 0) {
     rodent.mremcfd = fd;
     debug("remote client connect...accepted");
 }
 else {
     close(fd);
     debug("another remote client connect...disconnected");
 }
    }
    else {

 debug("remote client disconnected");
 close(rodent.mremcfd);
 rodent.mremcfd = -1;
    }
}
