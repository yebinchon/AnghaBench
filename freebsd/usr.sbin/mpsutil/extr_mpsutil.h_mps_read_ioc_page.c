
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U16 ;


 int MPI2_CONFIG_PAGETYPE_IOC ;
 void* mps_read_config_page (int,int ,int ,int ,int *) ;

__attribute__((used)) static __inline void *
mps_read_ioc_page(int fd, U8 PageNumber, U16 *IOCStatus)
{

 return (mps_read_config_page(fd, MPI2_CONFIG_PAGETYPE_IOC, PageNumber,
     0, IOCStatus));
}
