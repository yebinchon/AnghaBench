
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int kobj_t ;


 int CS461x_BUFFSIZE ;

__attribute__((used)) static u_int32_t
csachan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 return CS461x_BUFFSIZE / 2;
}
