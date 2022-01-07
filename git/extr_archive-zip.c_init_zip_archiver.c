
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_archiver (int *) ;
 int zip_archiver ;

void init_zip_archiver(void)
{
 register_archiver(&zip_archiver);
}
