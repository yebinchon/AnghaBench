
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvstore_index ;


 int bhnd_nv_free (int *) ;

void
bhnd_nvstore_index_free(bhnd_nvstore_index *index)
{
 bhnd_nv_free(index);
}
