
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs_options; int fs_specific; } ;
typedef TYPE_1__ fsinfo_t ;


 int free (int ) ;

void
ffs_cleanup_opts(fsinfo_t *fsopts)
{
 free(fsopts->fs_specific);
 free(fsopts->fs_options);
}
