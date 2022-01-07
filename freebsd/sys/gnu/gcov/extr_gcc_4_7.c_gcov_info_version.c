
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {unsigned int version; } ;



unsigned int
gcov_info_version(struct gcov_info *info)
{
 return (info->version);
}
