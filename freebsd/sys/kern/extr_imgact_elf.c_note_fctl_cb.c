
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fctl_cb_arg {int * fctl0; } ;
typedef int boolean_t ;
struct TYPE_3__ {int n_namesz; } ;
typedef TYPE_1__ Elf_Note ;
typedef int Elf32_Word ;


 int ELF_NOTE_ROUNDSIZE ;
 int TRUE ;
 scalar_t__ roundup2 (int ,int ) ;

__attribute__((used)) static boolean_t
note_fctl_cb(const Elf_Note *note, void *arg0, boolean_t *res)
{
 struct fctl_cb_arg *arg;
 const Elf32_Word *desc;
 uintptr_t p;

 arg = arg0;
 p = (uintptr_t)(note + 1);
 p += roundup2(note->n_namesz, ELF_NOTE_ROUNDSIZE);
 desc = (const Elf32_Word *)p;
 *arg->fctl0 = desc[0];
 return (TRUE);
}
