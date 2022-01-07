
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ dtrace_id_t ;
struct TYPE_3__ {int dtargd_ndx; int dtargd_native; } ;
typedef TYPE_1__ dtrace_argdesc_t ;


 void* DTRACE_ARGNONE ;
 int dtnfs234_isdoneprobe (scalar_t__) ;
 scalar_t__ nfscl_accesscache_flush_done_id ;
 scalar_t__ nfscl_accesscache_get_hit_id ;
 scalar_t__ nfscl_accesscache_get_miss_id ;
 scalar_t__ nfscl_accesscache_load_done_id ;
 scalar_t__ nfscl_attrcache_flush_done_id ;
 scalar_t__ nfscl_attrcache_get_hit_id ;
 scalar_t__ nfscl_attrcache_get_miss_id ;
 scalar_t__ nfscl_attrcache_load_done_id ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
dtnfsclient_getargdesc(void *arg, dtrace_id_t id, void *parg,
    dtrace_argdesc_t *desc)
{
 const char *p = ((void*)0);

 if (id == nfscl_accesscache_flush_done_id ||
     id == nfscl_attrcache_flush_done_id ||
     id == nfscl_attrcache_get_miss_id) {
  switch (desc->dtargd_ndx) {
  case 0:
   p = "struct vnode *";
   break;
  default:
   desc->dtargd_ndx = DTRACE_ARGNONE;
   break;
  }
 } else if (id == nfscl_accesscache_get_hit_id ||
     id == nfscl_accesscache_get_miss_id) {
  switch (desc->dtargd_ndx) {
  case 0:
   p = "struct vnode *";
   break;
  case 1:
   p = "uid_t";
   break;
  case 2:
   p = "uint32_t";
   break;
  default:
   desc->dtargd_ndx = DTRACE_ARGNONE;
   break;
  }
 } else if (id == nfscl_accesscache_load_done_id) {
  switch (desc->dtargd_ndx) {
  case 0:
   p = "struct vnode *";
   break;
  case 1:
   p = "uid_t";
   break;
  case 2:
   p = "uint32_t";
   break;
  case 3:
   p = "int";
   break;
  default:
   desc->dtargd_ndx = DTRACE_ARGNONE;
   break;
  }
 } else if (id == nfscl_attrcache_get_hit_id) {
  switch (desc->dtargd_ndx) {
  case 0:
   p = "struct vnode *";
   break;
  case 1:
   p = "struct vattr *";
   break;
  default:
   desc->dtargd_ndx = DTRACE_ARGNONE;
   break;
  }
 } else if (id == nfscl_attrcache_load_done_id) {
  switch (desc->dtargd_ndx) {
  case 0:
   p = "struct vnode *";
   break;
  case 1:
   p = "struct vattr *";
   break;
  case 2:
   p = "int";
   break;
  default:
   desc->dtargd_ndx = DTRACE_ARGNONE;
   break;
  }
 } else {
  switch (desc->dtargd_ndx) {
  case 0:
   p = "struct vnode *";
   break;
  case 1:
   p = "struct mbuf *";
   break;
  case 2:
   p = "struct ucred *";
   break;
  case 3:
   p = "int";
   break;
  case 4:
   if (dtnfs234_isdoneprobe(id)) {
    p = "int";
    break;
   }

  default:
   desc->dtargd_ndx = DTRACE_ARGNONE;
   break;
  }
 }
 if (p != ((void*)0))
  strlcpy(desc->dtargd_native, p, sizeof(desc->dtargd_native));
}
