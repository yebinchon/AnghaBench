
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int isoLevel; } ;
typedef TYPE_1__ iso9660_disk ;
typedef int (* cd9660_filename_conversion_functor ) (TYPE_1__*,char const*,char*,int) ;


 int assert (int) ;
 int cd9660_level1_convert_filename (TYPE_1__*,char const*,char*,int) ;
 int cd9660_level2_convert_filename (TYPE_1__*,char const*,char*,int) ;
 int stub1 (TYPE_1__*,char const*,char*,int) ;

__attribute__((used)) static int
cd9660_convert_filename(iso9660_disk *diskStructure, const char *oldname,
    char *newname, int is_file)
{
 assert(1 <= diskStructure->isoLevel && diskStructure->isoLevel <= 2);

 cd9660_filename_conversion_functor conversion_function = ((void*)0);
 if (diskStructure->isoLevel == 1)
  conversion_function = &cd9660_level1_convert_filename;
 else if (diskStructure->isoLevel == 2)
  conversion_function = &cd9660_level2_convert_filename;
 return (*conversion_function)(diskStructure, oldname, newname, is_file);
}
