
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNPSTTY ;
 int ioctl (int ,int ,int*) ;
 int snp_io ;

__attribute__((used)) static void
detach_snp(void)
{
 int fd;

 fd = -1;
 ioctl(snp_io, SNPSTTY, &fd);
}
