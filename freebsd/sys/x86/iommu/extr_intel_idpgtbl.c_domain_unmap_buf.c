
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int dummy; } ;
typedef int dmar_gaddr_t ;


 int DMAR_DOMAIN_PGLOCK (struct dmar_domain*) ;
 int DMAR_DOMAIN_PGUNLOCK (struct dmar_domain*) ;
 int domain_unmap_buf_locked (struct dmar_domain*,int ,int ,int) ;

int
domain_unmap_buf(struct dmar_domain *domain, dmar_gaddr_t base,
    dmar_gaddr_t size, int flags)
{
 int error;

 DMAR_DOMAIN_PGLOCK(domain);
 error = domain_unmap_buf_locked(domain, base, size, flags);
 DMAR_DOMAIN_PGUNLOCK(domain);
 return (error);
}
