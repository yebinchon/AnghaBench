
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* elf_file_t ;
struct TYPE_3__ {int ef_type; } ;



__attribute__((used)) static int
ef_get_type(elf_file_t ef)
{

 return (ef->ef_type);
}
