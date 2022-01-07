
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;


 struct kevent* calloc (int,int) ;
 int err (int,char*) ;
 int kevent (int,int *,int ,struct kevent*,int,int *) ;

struct kevent *
kevent_get(int kqfd)
{
    int nfds;
    struct kevent *kev;

    if ((kev = calloc(1, sizeof(*kev))) == ((void*)0))
        err(1, "out of memory");

    nfds = kevent(kqfd, ((void*)0), 0, kev, 1, ((void*)0));
    if (nfds < 1)
        err(1, "kevent(2)");

    return (kev);
}
