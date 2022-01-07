
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* jmp_buf ;


 void* kdb_jmpbufp ;

void *
kdb_jmpbuf(jmp_buf new)
{
 void *old;

 old = kdb_jmpbufp;
 kdb_jmpbufp = new;
 return (old);
}
