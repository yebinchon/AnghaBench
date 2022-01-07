
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct dumperinfo {size_t dumpoff; int * kdcrypto; } ;


 int dump_encrypted_write (struct dumperinfo*,void*,int ,size_t,size_t) ;
 int dump_write (struct dumperinfo*,void*,int ,size_t,size_t) ;

__attribute__((used)) static int
_dump_append(struct dumperinfo *di, void *virtual, vm_offset_t physical,
    size_t length)
{
 int error;







  error = dump_write(di, virtual, physical, di->dumpoff, length);
 if (error == 0)
  di->dumpoff += length;
 return (error);
}
