
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
typedef scalar_t__ u_int ;
typedef scalar_t__ int64_t ;


 int AUDITPIPE_GET_DROPS ;
 int AUDITPIPE_GET_INSERTS ;
 int AUDITPIPE_GET_QLEN ;
 int AUDITPIPE_GET_QLIMIT ;
 int AUDITPIPE_GET_QLIMIT_MAX ;
 int AUDITPIPE_GET_QLIMIT_MIN ;
 int AUDITPIPE_GET_READS ;
 int AUDITPIPE_GET_TRUNCATES ;
 int AUDITPIPE_SET_QLIMIT ;
 int O_RDONLY ;
 int err (int,char*) ;
 int errx (int,char*) ;
 scalar_t__ ioctl (int,int ,scalar_t__*) ;
 int open (char*,int ) ;

int
main(int argc, char *argv[])
{
 u_int len, minlen, maxlen;
 u_int64_t astat;
 int fd;

 fd = open("/dev/auditpipe", O_RDONLY);
 if (fd < 0)
  err(-1, "/dev/auditpipe");





 len = (u_int)(-1);
 if (ioctl(fd, AUDITPIPE_GET_QLEN, &len) < 0)
  err(-1, "AUDITPIPE_GET_QLEN");
 if (len == (u_int)(-1))
  errx(-1, "AUDITPIPE_GET_QLEN: unchanged");

 minlen = (u_int)(-1);
 if (ioctl(fd, AUDITPIPE_GET_QLIMIT_MIN, &minlen) < 0)
  err(-1, "AUDITPIPE_GET_QLIMIT_MIN");
 if (minlen == (u_int)(-1))
  errx(-1, "AUDITPIPE_GET_QLIMIT_MIN: unchanged");

 maxlen = (u_int)(-1);
 if (ioctl(fd, AUDITPIPE_GET_QLIMIT_MAX, &maxlen) < 0)
  err(-1, "AUDITPIPE_GET_QLIMIT_MAX");
 if (maxlen == (u_int)(-1))
  errx(-1, "AUDITPIPE_GET_QLIMIT_MAX: unchanged");

 len = (u_int)(-1);
 if (ioctl(fd, AUDITPIPE_GET_QLIMIT, &len) < 0)
  err(-1, "AUDITPIPE_GET_QLIMIT");
 if (len == (u_int)(-1))
  errx(-1, "AUDITPIPE_GET_QLIMIT: unchanged");

 if (!(len >= minlen))
  errx(-1, "queue length < minlen");

 if (!(len <= maxlen))
  errx(-1, "queue length > maxlen");





 len = minlen;
 if (ioctl(fd, AUDITPIPE_SET_QLIMIT, &len) < 0)
  err(-1, "AUDITPIPE_SET_QLIMIT(min)");

 if (ioctl(fd, AUDITPIPE_GET_QLIMIT, &len) < 0)
  err(-1, "AUDITPIPE_GET_QLIMIT");

 if (len != minlen)
  errx(-1, "set to minlen didn't work");

 len = maxlen;
 if (ioctl(fd, AUDITPIPE_SET_QLIMIT, &len) < 0)
  err(-1, "AUDITPIPE_SET_QLIMIT(max)");

 if (ioctl(fd, AUDITPIPE_GET_QLIMIT, &len) < 0)
  err(-1, "AUDITPIPE_GETQLIMIT");

 if (len != maxlen)
  errx(-1, "set to maxlen didn't work");





 astat = (u_int64_t)(int64_t)(-1);
 if (ioctl(fd, AUDITPIPE_GET_INSERTS, &astat) < 0)
  err(-1, "AUDITPIPE_GET_INSERTS");
 if (astat == (u_int64_t)(int64_t)(-1))
  errx(-1, "AUDITPIPE_GET_INSERTS: unchanged");

 astat = (u_int64_t)(int64_t)(-1);
 if (ioctl(fd, AUDITPIPE_GET_READS, &astat) < 0)
  err(-1, "AUDITPIPE_GET_READS");
 if (astat == (u_int64_t)(int64_t)(-1))
  errx(-1, "AUDITPIPE_GET_READS: unchanged");

 astat = (u_int64_t)(int64_t)(-1);
 if (ioctl(fd, AUDITPIPE_GET_DROPS, &astat) < 0)
  err(-1, "AUDITPIPE_GET_DROPS");
 if (astat == (u_int64_t)(int64_t)(-1))
  errx(-1, "AUDITPIPE_GET_DROPS: unchanged");

 astat = (u_int64_t)(int64_t)(-1);
 if (ioctl(fd, AUDITPIPE_GET_TRUNCATES, &astat) < 0)
  err(-1, "AUDITPIPE_GET_TRUNCATES");
 if (astat == (u_int64_t)(int64_t)(-1))
  errx(-1, "AUDITPIPE_GET_TRUNCATES: unchanged");

 return (0);
}
