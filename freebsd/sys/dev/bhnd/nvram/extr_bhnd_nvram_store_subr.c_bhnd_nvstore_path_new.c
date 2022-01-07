
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* path_str; int * pending; scalar_t__ num_vars; int * index; } ;
typedef TYPE_1__ bhnd_nvstore_path ;


 int bhnd_nv_free (TYPE_1__*) ;
 TYPE_1__* bhnd_nv_malloc (int) ;
 TYPE_1__* bhnd_nv_strndup (char const*,size_t) ;
 int * bhnd_nvram_plist_new () ;
 int bhnd_nvram_plist_release (int *) ;

bhnd_nvstore_path *
bhnd_nvstore_path_new(const char *path_str, size_t path_len)
{
 bhnd_nvstore_path *path;


 path = bhnd_nv_malloc(sizeof(*path));
 if (path == ((void*)0))
  return (((void*)0));

 path->index = ((void*)0);
 path->num_vars = 0;

 path->pending = bhnd_nvram_plist_new();
 if (path->pending == ((void*)0))
  goto failed;

 path->path_str = bhnd_nv_strndup(path_str, path_len);
 if (path->path_str == ((void*)0))
  goto failed;

 return (path);

failed:
 if (path->pending != ((void*)0))
  bhnd_nvram_plist_release(path->pending);

 if (path->path_str != ((void*)0))
  bhnd_nv_free(path->path_str);

 bhnd_nv_free(path);

 return (((void*)0));
}
