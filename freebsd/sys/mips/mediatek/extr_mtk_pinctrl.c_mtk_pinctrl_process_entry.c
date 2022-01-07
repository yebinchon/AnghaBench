
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mtk_pin_group {int funcnum; int mask; int offset; int sysc_reg; TYPE_1__* functions; int * name; } ;
typedef int device_t ;
struct TYPE_2__ {int value; int * name; } ;


 int ENOENT ;
 int mtk_sysctl_get (int ) ;
 int mtk_sysctl_set (int ,int) ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static int
mtk_pinctrl_process_entry(device_t dev, struct mtk_pin_group *table,
    const char *group, char *func)
{
 uint32_t val;
 int found = 0, i, j;

 for (i = 0; table[i].name != ((void*)0); i++) {
                if (strcmp(table[i].name, group) == 0) {
   found = 1;
                        break;
  }
        }

 if (!found)
  return (ENOENT);

        for (j = 0; j < table[i].funcnum; j++) {
                if (strcmp(table[i].functions[j].name, func) == 0) {
                        val = mtk_sysctl_get(table[i].sysc_reg);
                        val &= ~(table[i].mask << table[i].offset);
                        val |= (table[i].functions[j].value << table[i].offset);
                        mtk_sysctl_set(table[i].sysc_reg, val);
                        return (0);
  }
 }

 return (ENOENT);
}
