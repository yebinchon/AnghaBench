
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int timebuf ;
typedef int suseconds_t ;
struct iovlist {int dummy; } ;
struct TYPE_2__ {int usec; int tm; } ;
struct filed {scalar_t__ f_type; int f_prevpri; TYPE_1__ f_lasttime; } ;
typedef int priority_number ;


 scalar_t__ F_WALL ;
 int fprintlog_write (struct filed*,struct iovlist*,int) ;
 int iovlist_append (struct iovlist*,char const*) ;
 int iovlist_init (struct iovlist*) ;
 int snprintf (char*,int,char*,int) ;
 int strftime (char*,int,char*,int *) ;

__attribute__((used)) static void
fprintlog_rfc5424(struct filed *f, const char *hostname, const char *app_name,
    const char *procid, const char *msgid, const char *structured_data,
    const char *msg, int flags)
{
 struct iovlist il;
 suseconds_t usec;
 int i;
 char timebuf[33], priority_number[5];

 iovlist_init(&il);
 if (f->f_type == F_WALL)
  iovlist_append(&il, "\r\n\aMessage from syslogd ...\r\n");
 iovlist_append(&il, "<");
 snprintf(priority_number, sizeof(priority_number), "%d", f->f_prevpri);
 iovlist_append(&il, priority_number);
 iovlist_append(&il, ">1 ");
 if (strftime(timebuf, sizeof(timebuf), "%FT%T.______%z",
     &f->f_lasttime.tm) == sizeof(timebuf) - 2) {

  timebuf[32] = '\0';
  timebuf[31] = timebuf[30];
  timebuf[30] = timebuf[29];
  timebuf[29] = ':';


  usec = f->f_lasttime.usec;
  for (i = 25; i >= 20; --i) {
   timebuf[i] = usec % 10 + '0';
   usec /= 10;
  }
  iovlist_append(&il, timebuf);
 } else
  iovlist_append(&il, "-");
 iovlist_append(&il, " ");
 iovlist_append(&il, hostname);
 iovlist_append(&il, " ");
 iovlist_append(&il, app_name == ((void*)0) ? "-" : app_name);
 iovlist_append(&il, " ");
 iovlist_append(&il, procid == ((void*)0) ? "-" : procid);
 iovlist_append(&il, " ");
 iovlist_append(&il, msgid == ((void*)0) ? "-" : msgid);
 iovlist_append(&il, " ");
 iovlist_append(&il, structured_data == ((void*)0) ? "-" : structured_data);
 iovlist_append(&il, " ");
 iovlist_append(&il, msg);

 fprintlog_write(f, &il, flags);
}
