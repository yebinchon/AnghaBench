
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeo ;
struct timespec {int dummy; } ;
struct kevent {int dummy; } ;


 int errx (int,char*,int) ;
 int free (char*) ;
 int kevent (int ,int *,int ,struct kevent*,int,struct timespec*) ;
 char* kevent_to_str (struct kevent*) ;
 int kqfd ;
 int memset (struct timespec*,int ,int) ;
 int puts (char*) ;

void
test_no_kevents(void)
{
    int nfds;
    struct timespec timeo;
    struct kevent kev;
    char *kev_str;

    puts("confirming that there are no events pending");
    memset(&timeo, 0, sizeof(timeo));
    nfds = kevent(kqfd, ((void*)0), 0, &kev, 1, &timeo);
    if (nfds != 0) {
        puts("\nUnexpected event:");
        kev_str = kevent_to_str(&kev);
        puts(kev_str);
        free(kev_str);
        errx(1, "%d event(s) pending, but none expected:", nfds);
    }
}
