
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int,void*,int) ;

int sniff(int fd, void *buf, int len)
{
 return read(fd, buf, len);
}
