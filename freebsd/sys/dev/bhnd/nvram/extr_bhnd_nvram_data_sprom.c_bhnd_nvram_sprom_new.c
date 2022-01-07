
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bhnd_nvram_sprom {int * data; TYPE_1__* layout; int state; } ;
struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;
struct TYPE_3__ {int size; } ;


 int bhnd_nvram_io_free (int *) ;
 int * bhnd_nvram_iobuf_copy_range (struct bhnd_nvram_io*,int ,int ) ;
 int bhnd_nvram_sprom_ident (struct bhnd_nvram_io*,TYPE_1__**) ;
 int bhnd_sprom_opcode_init (int *,TYPE_1__*) ;

__attribute__((used)) static int
bhnd_nvram_sprom_new(struct bhnd_nvram_data *nv, struct bhnd_nvram_io *io)
{
 struct bhnd_nvram_sprom *sp;
 int error;

 sp = (struct bhnd_nvram_sprom *)nv;


 if ((error = bhnd_nvram_sprom_ident(io, &sp->layout)))
  return (error);


 sp->data = bhnd_nvram_iobuf_copy_range(io, 0, sp->layout->size);
 if (sp->data == ((void*)0))
  goto failed;


 if ((error = bhnd_sprom_opcode_init(&sp->state, sp->layout)))
  goto failed;

 return (0);

failed:
 if (sp->data != ((void*)0))
  bhnd_nvram_io_free(sp->data);

 return (error);
}
