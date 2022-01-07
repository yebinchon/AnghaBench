
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
struct kevent {int dummy; } ;


 int EV_SET (struct kevent*,uintptr_t,short,int ,int ,intptr_t,int *) ;
 int err (int,char*,int ) ;
 int errno ;
 int free (char*) ;
 scalar_t__ kevent (int,struct kevent*,int,int *,int ,int *) ;
 char* kevent_to_str (struct kevent*) ;
 int printf (char*,char*) ;
 int strerror (int ) ;

void
kevent_add(int kqfd, struct kevent *kev,
        uintptr_t ident,
        short filter,
        u_short flags,
        u_int fflags,
        intptr_t data,
        void *udata)
{
    char *kev_str;

    EV_SET(kev, ident, filter, flags, fflags, data, ((void*)0));
    if (kevent(kqfd, kev, 1, ((void*)0), 0, ((void*)0)) < 0) {
        kev_str = kevent_to_str(kev);
        printf("Unable to add the following kevent:\n%s\n",
                kev_str);
        free(kev_str);
        err(1, "kevent(): %s", strerror(errno));
    }
}
