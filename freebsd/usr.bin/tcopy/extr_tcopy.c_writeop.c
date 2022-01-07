
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtop {int mt_op; scalar_t__ mt_count; } ;
typedef scalar_t__ daddr_t ;


 int MTIOCTOP ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,char*) ;

__attribute__((used)) static void
writeop(int fd, int type)
{
 struct mtop op;

 op.mt_op = type;
 op.mt_count = (daddr_t)1;
 if (ioctl(fd, MTIOCTOP, (char *)&op) < 0)
  err(6, "tape op");
}
