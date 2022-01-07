
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {char const* filename; } ;



const char *
gcov_info_filename(struct gcov_info *info)
{
 return (info->filename);
}
