
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc_read_toc_entry {int data_len; int data; scalar_t__ starting_track; int address_format; } ;


 int CDIOREADTOCENTRYS ;
 int CD_LBA_FORMAT ;
 int CD_MSF_FORMAT ;
 int fd ;
 int ioctl (int ,int ,char*) ;
 scalar_t__ msf ;
 int toc_buffer ;

__attribute__((used)) static int
read_toc_entrys(int len)
{
 struct ioc_read_toc_entry t;

 t.address_format = msf ? CD_MSF_FORMAT : CD_LBA_FORMAT;
 t.starting_track = 0;
 t.data_len = len;
 t.data = toc_buffer;

 return (ioctl (fd, CDIOREADTOCENTRYS, (char *) &t));
}
