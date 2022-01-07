
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dvname ;
 int err (int,char*) ;
 int open (int ,int,int ) ;

__attribute__((used)) static int
getfd(int mode)
{
 int fd = open(dvname, mode, 0);
 if (fd < 0)
  err(-1, "open");
 return fd;
}
