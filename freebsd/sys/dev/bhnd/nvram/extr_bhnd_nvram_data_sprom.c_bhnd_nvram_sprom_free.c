
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_sprom {int data; int state; } ;
struct bhnd_nvram_data {int dummy; } ;


 int bhnd_nvram_io_free (int ) ;
 int bhnd_sprom_opcode_fini (int *) ;

__attribute__((used)) static void
bhnd_nvram_sprom_free(struct bhnd_nvram_data *nv)
{
 struct bhnd_nvram_sprom *sp = (struct bhnd_nvram_sprom *)nv;

 bhnd_sprom_opcode_fini(&sp->state);
 bhnd_nvram_io_free(sp->data);
}
