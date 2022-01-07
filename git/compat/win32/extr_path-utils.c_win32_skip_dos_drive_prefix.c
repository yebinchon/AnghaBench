
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int has_dos_drive_prefix (char*) ;

int win32_skip_dos_drive_prefix(char **path)
{
 int ret = has_dos_drive_prefix(*path);
 *path += ret;
 return ret;
}
