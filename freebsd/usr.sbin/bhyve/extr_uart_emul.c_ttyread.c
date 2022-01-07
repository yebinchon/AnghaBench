
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyfd {int rfd; } ;


 int read (int ,unsigned char*,int) ;

__attribute__((used)) static int
ttyread(struct ttyfd *tf)
{
 unsigned char rb;

 if (read(tf->rfd, &rb, 1) == 1)
  return (rb);
 else
  return (-1);
}
