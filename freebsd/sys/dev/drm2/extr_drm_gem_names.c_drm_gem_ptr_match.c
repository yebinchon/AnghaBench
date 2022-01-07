
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_gem_ptr_match_arg {void* ptr; int res; } ;



__attribute__((used)) static int
drm_gem_ptr_match(uint32_t name, void *ptr, void *arg)
{
 struct drm_gem_ptr_match_arg *a;

 a = arg;
 if (ptr == a->ptr) {
  a->res = name;
  return (1);
 } else
  return (0);
}
