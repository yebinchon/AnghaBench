
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_0; int member_1; } ;
struct kevent {int dummy; } ;


 struct kevent* calloc (int,int) ;
 int err (int,char*) ;
 int free (struct kevent*) ;
 int kevent (int,int *,int ,struct kevent*,int,struct timespec*) ;

struct kevent *
kevent_get_timeout(int kqfd, int seconds)
{
    int nfds;
    struct kevent *kev;
    struct timespec timeout = {seconds, 0};

    if ((kev = calloc(1, sizeof(*kev))) == ((void*)0))
        err(1, "out of memory");

    nfds = kevent(kqfd, ((void*)0), 0, kev, 1, &timeout);
    if (nfds < 0) {
        err(1, "kevent(2)");
    } else if (nfds == 0) {
        free(kev);
        kev = ((void*)0);
    }

    return (kev);
}
