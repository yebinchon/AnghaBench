
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct filemon {int lock; struct file* fp; int msgbufr; } ;
struct file {int dummy; } ;


 int SA_XLOCKED ;
 int curthread ;
 int fdrop (struct file*,int ) ;
 int filemon_output (struct filemon*,int ,size_t) ;
 int getmicrotime (struct timeval*) ;
 size_t snprintf (int ,int,char*,int ,int ) ;
 int sx_assert (int *,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
filemon_close_log(struct filemon *filemon)
{
 struct file *fp;
 struct timeval now;
 size_t len;

 sx_assert(&filemon->lock, SA_XLOCKED);
 if (filemon->fp == ((void*)0))
  return;

 getmicrotime(&now);

 len = snprintf(filemon->msgbufr,
     sizeof(filemon->msgbufr),
     "# Stop %ju.%06ju\n# Bye bye\n",
     (uintmax_t)now.tv_sec, (uintmax_t)now.tv_usec);

 if (len < sizeof(filemon->msgbufr))
  filemon_output(filemon, filemon->msgbufr, len);
 fp = filemon->fp;
 filemon->fp = ((void*)0);

 sx_xunlock(&filemon->lock);
 fdrop(fp, curthread);
 sx_xlock(&filemon->lock);
}
