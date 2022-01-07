
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int n_namesz; } ;
typedef TYPE_1__ Elf_Note ;
typedef int Elf32_Word ;


 int ELF_NOTE_ROUNDSIZE ;
 int const GNU_KFREEBSD_ABI_DESC ;
 scalar_t__ roundup2 (int ,int ) ;

__attribute__((used)) static bool
kfreebsd_trans_osrel(const Elf_Note *note, int32_t *osrel)
{
 const Elf32_Word *desc;
 uintptr_t p;

 p = (uintptr_t)(note + 1);
 p += roundup2(note->n_namesz, ELF_NOTE_ROUNDSIZE);

 desc = (const Elf32_Word *)p;
 if (desc[0] != GNU_KFREEBSD_ABI_DESC)
  return (0);





 *osrel = desc[1] * 100000 + desc[2] * 1000 + desc[3];

 return (1);
}
