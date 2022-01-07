
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vmctx {int dummy; } ;
struct stat {int st_size; } ;


 int EFAULT ;
 scalar_t__ basl_acpi_base ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 void* paddr_guest2host (struct vmctx*,scalar_t__,int ) ;
 scalar_t__ read (int,void*,int ) ;

__attribute__((used)) static int
basl_load(struct vmctx *ctx, int fd, uint64_t off)
{
 struct stat sb;
 void *gaddr;

 if (fstat(fd, &sb) < 0)
  return (errno);

 gaddr = paddr_guest2host(ctx, basl_acpi_base + off, sb.st_size);
 if (gaddr == ((void*)0))
  return (EFAULT);

 if (read(fd, gaddr, sb.st_size) < 0)
  return (errno);

 return (0);
}
