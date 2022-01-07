
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int u_path; } ;


 int rmdir (int ) ;
 int unlink (int ) ;
 int unwind_len ;
 TYPE_1__* unwind_list ;

__attribute__((used)) static void
unwind(void)
{
 int i;

 for (i = unwind_len - 1; i >= 0; i--) {
  unlink(unwind_list[i].u_path);
  rmdir(unwind_list[i].u_path);
 }
}
