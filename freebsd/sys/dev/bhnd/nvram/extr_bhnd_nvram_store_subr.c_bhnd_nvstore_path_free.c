
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvstore_path {struct bhnd_nvstore_path* path_str; int pending; int * index; } ;


 int bhnd_nv_free (struct bhnd_nvstore_path*) ;
 int bhnd_nvram_plist_release (int ) ;
 int bhnd_nvstore_index_free (int *) ;

void
bhnd_nvstore_path_free(struct bhnd_nvstore_path *path)
{

 if (path->index != ((void*)0))
  bhnd_nvstore_index_free(path->index);

 bhnd_nvram_plist_release(path->pending);
 bhnd_nv_free(path->path_str);
 bhnd_nv_free(path);
}
