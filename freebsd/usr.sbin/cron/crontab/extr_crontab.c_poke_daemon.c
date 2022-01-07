
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 scalar_t__ OK ;
 int SPOOL_DIR ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ utime (int ,int *) ;
 scalar_t__ utimes (int ,struct timeval*) ;
 int warn (char*,int ) ;

__attribute__((used)) static void
poke_daemon() {
 if (utime(SPOOL_DIR, ((void*)0)) < OK) {
  warn("can't update mtime on spooldir %s", SPOOL_DIR);
  return;
 }

}
