
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct dumperinfo {int (* dumper ) (int ,void*,int ,int ,size_t) ;int priv; } ;
typedef int off_t ;


 int dump_check_bounds (struct dumperinfo*,int ,size_t) ;
 int stub1 (int ,void*,int ,int ,size_t) ;

int
dump_write(struct dumperinfo *di, void *virtual, vm_offset_t physical,
    off_t offset, size_t length)
{
 int error;

 error = dump_check_bounds(di, offset, length);
 if (error != 0)
  return (error);
 return (di->dumper(di->priv, virtual, physical, offset, length));
}
