
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U16 ;
typedef int CONFIG_PAGE_LOG_0 ;


 int MPI_CONFIG_EXTPAGETYPE_LOG ;
 int * mpt_read_extended_config_page (int,int ,int ,int ,int ,int *) ;

__attribute__((used)) static CONFIG_PAGE_LOG_0 *
mpt_get_events(int fd, U16 *IOCStatus)
{

 return (mpt_read_extended_config_page(fd, MPI_CONFIG_EXTPAGETYPE_LOG,
     0, 0, 0, IOCStatus));
}
