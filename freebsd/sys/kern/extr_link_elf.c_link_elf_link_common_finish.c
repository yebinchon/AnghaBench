
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* linker_file_t ;
typedef TYPE_2__* elf_file_t ;
struct TYPE_8__ {char* l_name; int l_ld; int l_addr; } ;
struct TYPE_7__ {TYPE_4__ gdb; int dynamic; } ;
struct TYPE_6__ {int ctors_size; int ctors_addr; int filename; int address; } ;


 int GDB_STATE (int ) ;
 int M_LINKER ;
 int M_WAITOK ;
 int RT_ADD ;
 int RT_CONSISTENT ;
 int elf_cpu_load_file (TYPE_1__*) ;
 int link_elf_add_gdb (TYPE_4__*) ;
 int link_elf_invoke_ctors (int ,int ) ;
 char* malloc (scalar_t__,int ,int ) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
link_elf_link_common_finish(linker_file_t lf)
{




 int error;


 error = elf_cpu_load_file(lf);
 if (error != 0)
  return (error);
 link_elf_invoke_ctors(lf->ctors_addr, lf->ctors_size);
 return (0);
}
