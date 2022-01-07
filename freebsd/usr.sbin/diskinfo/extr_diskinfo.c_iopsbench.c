
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int off_t ;


 int iops (int,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static void
iopsbench(int fd, off_t mediasize, u_int sectorsize)
{
 printf("Asynchronous random reads:\n");

 printf("\tsectorsize:  ");
 iops(fd, mediasize, sectorsize);

 if (sectorsize != 4096) {
  printf("\t4 kbytes:    ");
  iops(fd, mediasize, 4096);
 }

 printf("\t32 kbytes:   ");
 iops(fd, mediasize, 32 * 1024);

 printf("\t128 kbytes:  ");
 iops(fd, mediasize, 128 * 1024);

 printf("\n");
}
