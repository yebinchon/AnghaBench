
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum object_type { ____Placeholder_object_type } object_type ;


 int dry_run ;
 int free (void*) ;
 void* get_data (unsigned long) ;
 int write_object (unsigned int,int,void*,unsigned long) ;

__attribute__((used)) static void unpack_non_delta_entry(enum object_type type, unsigned long size,
       unsigned nr)
{
 void *buf = get_data(size);

 if (!dry_run && buf)
  write_object(nr, type, buf, size);
 else
  free(buf);
}
