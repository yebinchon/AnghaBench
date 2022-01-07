
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_tar_archiver () ;
 int init_zip_archiver () ;

void init_archivers(void)
{
 init_tar_archiver();
 init_zip_archiver();
}
