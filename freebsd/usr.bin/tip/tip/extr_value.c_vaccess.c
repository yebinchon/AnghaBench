
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PRIVATE ;
 unsigned int PUBLIC ;
 unsigned int ROOT ;
 scalar_t__ getuid () ;

__attribute__((used)) static int
vaccess(unsigned int mode, unsigned int rw)
{
 if (mode & (rw<<PUBLIC))
  return (1);
 if (mode & (rw<<PRIVATE))
  return (1);
 return ((mode & (rw<<ROOT)) && getuid() == 0);
}
