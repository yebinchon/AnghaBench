
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {scalar_t__ old_mode; scalar_t__ new_mode; char* new_name; } ;


 int printf (char*,int,int,...) ;

__attribute__((used)) static void show_mode_change(struct patch *p, int show_name)
{
 if (p->old_mode && p->new_mode && p->old_mode != p->new_mode) {
  if (show_name)
   printf(" mode change %06o => %06o %s\n",
          p->old_mode, p->new_mode, p->new_name);
  else
   printf(" mode change %06o => %06o\n",
          p->old_mode, p->new_mode);
 }
}
