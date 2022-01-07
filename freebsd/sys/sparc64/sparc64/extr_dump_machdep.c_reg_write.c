
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_paddr_t ;
struct sparc64_dump_reg {int dr_offs; scalar_t__ dr_size; int dr_pa; } ;
struct dumperinfo {int dummy; } ;
typedef int r ;


 int dumpsys_buf_write (struct dumperinfo*,char*,int) ;
 int fileofs ;

__attribute__((used)) static int
reg_write(struct dumperinfo *di, vm_paddr_t pa, vm_size_t size)
{
 struct sparc64_dump_reg r;

 r.dr_pa = pa;
 r.dr_size = size;
 r.dr_offs = fileofs;
 fileofs += size;
 return (dumpsys_buf_write(di, (char *)&r, sizeof(r)));
}
