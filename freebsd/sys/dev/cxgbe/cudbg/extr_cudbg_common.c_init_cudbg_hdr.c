
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_init_hdr {int init_struct_size; int build_ver; int minor_ver; int major_ver; } ;
struct cudbg_init {int dummy; } ;


 int CUDBG_BUILD_VERSION ;
 int CUDBG_MAJOR_VERSION ;
 int CUDBG_MINOR_VERSION ;

__attribute__((used)) static inline void init_cudbg_hdr(struct cudbg_init_hdr *hdr)
{
 hdr->major_ver = CUDBG_MAJOR_VERSION;
 hdr->minor_ver = CUDBG_MINOR_VERSION;
 hdr->build_ver = CUDBG_BUILD_VERSION;
 hdr->init_struct_size = sizeof(struct cudbg_init);
}
