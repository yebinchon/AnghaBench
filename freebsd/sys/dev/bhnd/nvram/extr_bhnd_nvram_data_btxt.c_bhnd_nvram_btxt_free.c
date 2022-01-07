
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
struct bhnd_nvram_btxt {int * data; } ;


 int bhnd_nvram_io_free (int *) ;

__attribute__((used)) static void
bhnd_nvram_btxt_free(struct bhnd_nvram_data *nv)
{
 struct bhnd_nvram_btxt *btxt = (struct bhnd_nvram_btxt *)nv;
 if (btxt->data != ((void*)0))
  bhnd_nvram_io_free(btxt->data);
}
