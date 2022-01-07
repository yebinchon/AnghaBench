
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_nvram_store {int dummy; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef int bhnd_nvram_plist ;
typedef int bhnd_nvram_data_class ;


 int ENOMEM ;
 int bhnd_nvram_data_serialize (int *,int *,int *,void*,size_t*) ;
 int bhnd_nvram_io_free (struct bhnd_nvram_io*) ;
 int bhnd_nvram_io_setsize (struct bhnd_nvram_io*,size_t) ;
 int bhnd_nvram_io_write_ptr (struct bhnd_nvram_io*,int ,void**,size_t,int *) ;
 struct bhnd_nvram_io* bhnd_nvram_iobuf_empty (size_t,size_t) ;
 int bhnd_nvram_plist_release (int *) ;
 int bhnd_nvram_store_export (struct bhnd_nvram_store*,char const*,int **,int **,int **,int ) ;

int
bhnd_nvram_store_serialize(struct bhnd_nvram_store *sc, const char *path,
   struct bhnd_nvram_io **data, uint32_t flags)
{
 bhnd_nvram_plist *props;
 bhnd_nvram_plist *options;
 bhnd_nvram_data_class *cls;
 struct bhnd_nvram_io *io;
 void *outp;
 size_t olen;
 int error;

 props = ((void*)0);
 options = ((void*)0);
 io = ((void*)0);


 error = bhnd_nvram_store_export(sc, path, &cls, &props, &options,
     flags);
 if (error)
  return (error);


 error = bhnd_nvram_data_serialize(cls, props, options, ((void*)0), &olen);
 if (error)
  goto failed;


 if ((io = bhnd_nvram_iobuf_empty(olen, olen)) == ((void*)0)) {
  error = ENOMEM;
  goto failed;
 }


 if ((error = bhnd_nvram_io_write_ptr(io, 0, &outp, olen, ((void*)0))))
  goto failed;


 error = bhnd_nvram_data_serialize(cls, props, options, outp, &olen);
 if (error)
  goto failed;

 if ((error = bhnd_nvram_io_setsize(io, olen)))
  goto failed;


 bhnd_nvram_plist_release(props);
 bhnd_nvram_plist_release(options);

 *data = io;
 return (0);

failed:
 if (props != ((void*)0))
  bhnd_nvram_plist_release(props);

 if (options != ((void*)0))
  bhnd_nvram_plist_release(options);

 if (io != ((void*)0))
  bhnd_nvram_io_free(io);

 return (error);
}
