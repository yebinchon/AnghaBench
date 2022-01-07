
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_page_t ;
struct vm_pgcache {int domain; } ;
struct vm_domain {int dummy; } ;


 struct vm_domain* VM_DOMAIN (int ) ;
 int vm_domain_free_lock (struct vm_domain*) ;
 int vm_domain_free_unlock (struct vm_domain*) ;
 int vm_domain_freecnt_inc (struct vm_domain*,int) ;
 int vm_phys_free_pages (scalar_t__,int ) ;

__attribute__((used)) static void
vm_page_zone_release(void *arg, void **store, int cnt)
{
 struct vm_domain *vmd;
 struct vm_pgcache *pgcache;
 vm_page_t m;
 int i;

 pgcache = arg;
 vmd = VM_DOMAIN(pgcache->domain);
 vm_domain_free_lock(vmd);
 for (i = 0; i < cnt; i++) {
  m = (vm_page_t)store[i];
  vm_phys_free_pages(m, 0);
 }
 vm_domain_free_unlock(vmd);
 vm_domain_freecnt_inc(vmd, cnt);
}
