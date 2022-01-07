
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread_data {int ppp; int hist; int edit; } ;
struct sigaction {int sa_flags; int sa_mask; int sa_handler; } ;
struct TYPE_3__ {char* member_1; int member_0; } ;
typedef TYPE_1__ HistEvent ;


 int H_ENTER ;
 int InputHandler ;
 int REC_SHOW ;
 scalar_t__ Receive (int ,int ) ;
 int SA_RESTART ;
 int SIGUSR1 ;
 char* SmartGets (int ,int*,int ) ;
 int history (int ,TYPE_1__*,char const*,...) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;
 int want_sem_post ;
 int write (int ,char const*,int) ;

__attribute__((used)) static void *
Terminal(void *v)
{
    struct sigaction act, oact;
    struct thread_data *td;
    const char *l;
    int len;

    HistEvent hev = { 0, "" };


    act.sa_handler = InputHandler;
    sigemptyset(&act.sa_mask);
    act.sa_flags = SA_RESTART;
    sigaction(SIGUSR1, &act, &oact);

    td = (struct thread_data *)v;
    want_sem_post = 1;

    while ((l = SmartGets(td->edit, &len, td->ppp))) {
        if (len > 1)



            history(td->hist, &hev, H_ENTER, l);

        write(td->ppp, l, len);
        if (Receive(td->ppp, REC_SHOW) != 0)
            break;
    }

    return ((void*)0);
}
