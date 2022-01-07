
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct vm_pgcache {int pool; int domain; } ;
struct vm_domain {int vmd_domain; } ;


 int VM_ALLOC_NORMAL ;
 struct vm_domain* VM_DOMAIN (int ) ;
 int vm_domain_allocate (struct vm_domain*,int ,int) ;
 int vm_domain_free_lock (struct vm_domain*) ;
 int vm_domain_free_unlock (struct vm_domain*) ;
 int vm_domain_freecnt_inc (struct vm_domain*,int) ;
 int vm_phys_alloc_npages (int,int ,int,int *) ;

__attribute__((used)) static int
vm_page_zone_import(void *arg, void **store, int cnt, int domain, int flags)
{
 struct vm_domain *vmd;
 struct vm_pgcache *pgcache;
 int i;

 pgcache = arg;
 vmd = VM_DOMAIN(pgcache->domain);

 if (cnt == 1 || !vm_domain_allocate(vmd, VM_ALLOC_NORMAL, cnt))
  return (0);
 domain = vmd->vmd_domain;
 vm_domain_free_lock(vmd);
 i = vm_phys_alloc_npages(domain, pgcache->pool, cnt,
     (vm_page_t *)store);
 vm_domain_free_unlock(vmd);
 if (cnt != i)
  vm_domain_freecnt_inc(vmd, cnt - i);

 return (i);
}
