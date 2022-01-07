
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ldavg; } ;


 int FANCY_SNAKE ;
 int LOAD_HIGH (int ) ;
 int LOAD_LOW (int ) ;
 int MSGBUF_LEN ;
 TYPE_1__ averunnable ;
 int message ;
 int messagelen ;
 char* osrelease ;
 char* ostype ;
 int snprintf (int ,int ,char*,char*,char*,int,int,int,int,int,int) ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static inline void
update_msg(void)
{
 if (!FANCY_SNAKE) {
  messagelen = sprintf(message, "%s %s", ostype, osrelease);
  return;
 }
 messagelen = snprintf(message, MSGBUF_LEN,
     "%s %s (%d.%02d %d.%02d, %d.%02d)",
     ostype, osrelease,
     LOAD_HIGH(averunnable.ldavg[0]), LOAD_LOW(averunnable.ldavg[0]),
     LOAD_HIGH(averunnable.ldavg[1]), LOAD_LOW(averunnable.ldavg[1]),
     LOAD_HIGH(averunnable.ldavg[2]), LOAD_LOW(averunnable.ldavg[2]));
}
