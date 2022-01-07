
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct filemon {int msgbufr; } ;
struct TYPE_2__ {int p_pid; } ;


 int FILEMON_VERSION ;
 TYPE_1__* curproc ;
 int filemon_output (struct filemon*,int ,int) ;
 int getmicrotime (struct timeval*) ;
 int snprintf (int ,int,char*,int,int,int ,int ,int) ;

__attribute__((used)) static void
filemon_write_header(struct filemon *filemon)
{
 int len;
 struct timeval now;

 getmicrotime(&now);

 len = snprintf(filemon->msgbufr, sizeof(filemon->msgbufr),
     "# filemon version %d\n# Target pid %d\n# Start %ju.%06ju\nV %d\n",
     FILEMON_VERSION, curproc->p_pid, (uintmax_t)now.tv_sec,
     (uintmax_t)now.tv_usec, FILEMON_VERSION);
 if (len < sizeof(filemon->msgbufr))
  filemon_output(filemon, filemon->msgbufr, len);
}
