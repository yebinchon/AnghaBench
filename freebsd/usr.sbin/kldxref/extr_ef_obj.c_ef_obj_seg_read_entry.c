
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int elf_file_t ;
typedef int Elf_Off ;


 int ef_obj_seg_read (int ,int ,size_t,void*) ;
 int errno ;
 int free (void*) ;
 void* malloc (size_t) ;

__attribute__((used)) static int
ef_obj_seg_read_entry(elf_file_t ef, Elf_Off offset, size_t len, void **ptr)
{
 int error;

 *ptr = malloc(len);
 if (*ptr == ((void*)0))
  return (errno);
 error = ef_obj_seg_read(ef, offset, len, *ptr);
 if (error != 0)
  free(*ptr);
 return (error);
}
