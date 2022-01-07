
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int pid_t ;
typedef int ch ;


 int SIGHUP ;
 scalar_t__ close (int) ;
 scalar_t__ kill (int ,int ) ;
 int send (int,char*,int,int ) ;
 scalar_t__ sleep (int) ;
 int warn (char*,...) ;
 int warnx (char*,int) ;

__attribute__((used)) static void
signaller(pid_t locking_recver_pid, int fd)
{
 ssize_t len;
 char ch;

 if (sleep(2) != 0) {
  warn("signaller sleep(2)");
  return;
 }
 if (kill(locking_recver_pid, SIGHUP) < 0) {
  warn("signaller kill(%d)", locking_recver_pid);
  return;
 }
 if (sleep(1) != 0) {
  warn("signaller sleep(1)");
  return;
 }
 len = send(fd, &ch, sizeof(ch), 0);
 if (len < 0) {
  warn("signaller send");
  return;
 }
 if (len != sizeof(ch)) {
  warnx("signaller send ret %zd", len);
  return;
 }
 if (close(fd) < 0) {
  warn("signaller close");
  return;
 }
 if (sleep(1) != 0) {
  warn("signaller sleep(1)");
  return;
 }
}
