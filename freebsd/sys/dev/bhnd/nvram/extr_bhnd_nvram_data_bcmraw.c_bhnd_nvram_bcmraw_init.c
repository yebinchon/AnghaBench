
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_bcmraw {size_t size; int * data; scalar_t__ count; } ;


 int BHND_NV_ASSERT (int,char*) ;
 int BHND_NV_LOG (char*,size_t,...) ;
 int EINVAL ;
 int ENOMEM ;
 size_t SIZE_MAX ;
 int * bhnd_nv_malloc (size_t) ;
 int * bhnd_nv_reallocf (int *,size_t) ;
 size_t bhnd_nvram_io_getsize (struct bhnd_nvram_io*) ;
 int bhnd_nvram_io_read (struct bhnd_nvram_io*,int,int *,size_t) ;
 int bhnd_nvram_parse_env (char*,size_t,char,char const**,size_t*,char const**,size_t*) ;
 size_t strnlen (char*,size_t) ;

__attribute__((used)) static int
bhnd_nvram_bcmraw_init(struct bhnd_nvram_bcmraw *bcm, struct bhnd_nvram_io *src)
{
 size_t io_size;
 size_t capacity, offset;
 int error;


 io_size = bhnd_nvram_io_getsize(src);




 if (io_size == SIZE_MAX)
  return (ENOMEM);

 capacity = io_size + 1 ;
 bcm->size = io_size;
 if ((bcm->data = bhnd_nv_malloc(capacity)) == ((void*)0))
  return (ENOMEM);


 if ((error = bhnd_nvram_io_read(src, 0x0, bcm->data, io_size)))
  return (error);


 bcm->count = 0;
 for (offset = 0; offset < bcm->size; offset++) {
  char *envp;
  const char *name, *value;
  size_t envp_len;
  size_t name_len, value_len;


  envp = (char *) (bcm->data + offset);
  envp_len = strnlen(envp, bcm->size - offset);
  error = bhnd_nvram_parse_env(envp, envp_len, '=', &name,
          &name_len, &value, &value_len);
  if (error) {
   BHND_NV_LOG("error parsing envp at offset %#zx: %d\n",
       offset, error);
   return (error);
  }




  *(envp + name_len) = '\0';


  bcm->count++;


  offset += envp_len;
  if (offset == io_size) {
   BHND_NV_LOG("missing terminating NUL at offset %#zx\n",
       offset);
   return (EINVAL);
  }



  if (++offset == bcm->size) {
   BHND_NV_ASSERT(offset < capacity,
       ("appending past end of buffer"));
   bcm->size++;
   *(bcm->data + offset) = '\0';
  }



  if (*(bcm->data + offset) == '\0')
   break;
 }


 if (offset < bcm->size) {
  bcm->data = bhnd_nv_reallocf(bcm->data, bcm->size);
  if (bcm->data == ((void*)0))
   return (ENOMEM);
 }

 return (0);
}
