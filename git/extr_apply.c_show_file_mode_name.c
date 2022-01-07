
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,...) ;

__attribute__((used)) static void show_file_mode_name(const char *newdelete, unsigned int mode, const char *name)
{
 if (mode)
  printf(" %s mode %06o %s\n", newdelete, mode, name);
 else
  printf(" %s %s\n", newdelete, name);
}
