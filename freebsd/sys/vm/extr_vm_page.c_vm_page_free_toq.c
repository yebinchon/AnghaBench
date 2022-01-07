
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int * uma_zone_t ;
struct vm_domain {TYPE_1__* vmd_pgcache; } ;
struct TYPE_9__ {size_t pool; int flags; } ;
struct TYPE_8__ {int * zone; } ;


 int PG_PCPU_CACHE ;
 int uma_zfree (int *,TYPE_2__*) ;
 int vm_domain_free_lock (struct vm_domain*) ;
 int vm_domain_free_unlock (struct vm_domain*) ;
 int vm_domain_freecnt_inc (struct vm_domain*,int) ;
 int vm_page_free_prep (TYPE_2__*) ;
 struct vm_domain* vm_pagequeue_domain (TYPE_2__*) ;
 int vm_phys_free_pages (TYPE_2__*,int ) ;

void
vm_page_free_toq(vm_page_t m)
{
 struct vm_domain *vmd;
 uma_zone_t zone;

 if (!vm_page_free_prep(m))
  return;

 vmd = vm_pagequeue_domain(m);
 zone = vmd->vmd_pgcache[m->pool].zone;
 if ((m->flags & PG_PCPU_CACHE) != 0 && zone != ((void*)0)) {
  uma_zfree(zone, m);
  return;
 }
 vm_domain_free_lock(vmd);
 vm_phys_free_pages(m, 0);
 vm_domain_free_unlock(vmd);
 vm_domain_freecnt_inc(vmd, 1);
}
