
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int XPT_DEVICE ;
 scalar_t__ open (int ,int ) ;
 scalar_t__ xptfd ;

__attribute__((used)) static int
xpt_open(void)
{

 if (xptfd == 0)
  xptfd = open(XPT_DEVICE, O_RDWR);
 return (xptfd);
}
