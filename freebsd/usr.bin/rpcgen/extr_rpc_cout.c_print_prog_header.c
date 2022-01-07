
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int argname; } ;
struct TYPE_5__ {TYPE_1__ args; } ;
typedef TYPE_2__ proc_list ;


 int print_generic_header (int ,int) ;

__attribute__((used)) static void
print_prog_header(proc_list *plist)
{
 print_generic_header(plist->args.argname, 1);
}
