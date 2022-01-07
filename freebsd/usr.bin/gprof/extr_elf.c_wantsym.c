
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_name; int st_info; } ;
typedef TYPE_1__ Elf_Sym ;


 int ELF_ST_BIND (int ) ;
 int ELF_ST_TYPE (int ) ;
 int STB_LOCAL ;
 int STT_FUNC ;
 scalar_t__ aflag ;
 int * strchr (char const*,char) ;
 scalar_t__ uflag ;

__attribute__((used)) static bool
wantsym(const Elf_Sym *sym, const char *strtab)
{
    int type;
    int bind;

    type = ELF_ST_TYPE(sym->st_info);
    bind = ELF_ST_BIND(sym->st_info);

    if (type != STT_FUNC ||
      (aflag && bind == STB_LOCAL) ||
      (uflag && strchr(strtab + sym->st_name, '.') != ((void*)0)))
 return 0;

    return 1;
}
