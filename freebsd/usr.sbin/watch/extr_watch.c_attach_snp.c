
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_DATAERR ;
 int EX_UNAVAILABLE ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int SNPSTTY ;
 int close (int) ;
 int dev_name ;
 int fatal (int ,char*) ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int open (int ,int) ;
 scalar_t__ opt_timestamp ;
 int snp_io ;
 int timestamp (char*) ;

__attribute__((used)) static void
attach_snp(void)
{
 int snp_tty;

 snp_tty = open(dev_name, O_RDONLY | O_NONBLOCK);
 if (snp_tty < 0)
  fatal(EX_DATAERR, "can't open device");
 if (ioctl(snp_io, SNPSTTY, &snp_tty) != 0)
  fatal(EX_UNAVAILABLE, "cannot attach to tty");
 close(snp_tty);
 if (opt_timestamp)
  timestamp("Logging Started.");
}
