
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* module_t ;
typedef int linker_file_t ;
struct TYPE_3__ {int file; } ;



linker_file_t
module_file(module_t mod)
{

 return (mod->file);
}
