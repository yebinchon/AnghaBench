
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERR ;
 scalar_t__ LogFD ;
 int close (scalar_t__) ;

void
log_close() {
 if (LogFD != ERR) {
  close(LogFD);
  LogFD = ERR;
 }
}
