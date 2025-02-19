
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;


 scalar_t__ FNV1_32_INIT ;
 int TMPFS_DIRCOOKIE_MASK ;
 int TMPFS_DIRCOOKIE_MIN ;
 int fnv_32_buf (char const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static __inline uint32_t
tmpfs_dirent_hash(const char *name, u_int len)
{
 uint32_t hash;

 hash = fnv_32_buf(name, len, FNV1_32_INIT + len) & TMPFS_DIRCOOKIE_MASK;



 if (hash < TMPFS_DIRCOOKIE_MIN)
  hash += TMPFS_DIRCOOKIE_MIN;

 return (hash);
}
