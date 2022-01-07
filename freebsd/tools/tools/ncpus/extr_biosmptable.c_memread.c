
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int intmax_t ;


 int pfd ;
 scalar_t__ pread (int ,void*,size_t,scalar_t__) ;
 int warn (char*,size_t,int ) ;

__attribute__((used)) static int
memread(off_t addr, void* entry, size_t size)
{
    if ((size_t)pread(pfd, entry, size, addr) != size) {
 warn("pread (%zu @ 0x%jx)", size, (intmax_t)addr);
 return 0;
    }
    return 1;
}
