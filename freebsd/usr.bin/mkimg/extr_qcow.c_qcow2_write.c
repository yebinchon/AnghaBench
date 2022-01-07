
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QCOW_VERSION_2 ;
 int qcow_write (int,int ) ;

__attribute__((used)) static int
qcow2_write(int fd)
{

 return (qcow_write(fd, QCOW_VERSION_2));
}
