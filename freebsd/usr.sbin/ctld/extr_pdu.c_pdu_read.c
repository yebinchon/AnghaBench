
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int log_err (int,char*) ;
 int log_errx (int,char*) ;
 scalar_t__ read (int,char*,size_t) ;
 scalar_t__ timed_out () ;

__attribute__((used)) static void
pdu_read(int fd, char *data, size_t len)
{
 ssize_t ret;

 while (len > 0) {
  ret = read(fd, data, len);
  if (ret < 0) {
   if (timed_out())
    log_errx(1, "exiting due to timeout");
   log_err(1, "read");
  } else if (ret == 0)
   log_errx(1, "read: connection lost");
  len -= ret;
  data += ret;
 }
}
