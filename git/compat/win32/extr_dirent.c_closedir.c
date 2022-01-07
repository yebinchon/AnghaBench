
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dd_handle; } ;
typedef TYPE_1__ DIR ;


 int EBADF ;
 int FindClose (int ) ;
 int errno ;
 int free (TYPE_1__*) ;

int closedir(DIR *dir)
{
 if (!dir) {
  errno = EBADF;
  return -1;
 }

 FindClose(dir->dd_handle);
 free(dir);
 return 0;
}
