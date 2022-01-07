
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range_op {int* mo_arg; struct mem_range_desc* mo_desc; } ;
struct mem_range_desc {int dummy; } ;


 int MEMRANGE_GET ;
 int err (int,char*) ;
 int errx (int,char*,int,int) ;
 scalar_t__ ioctl (int,int ,struct mem_range_op*) ;
 struct mem_range_desc* malloc (int) ;

__attribute__((used)) static struct mem_range_desc *
mrgetall(int memfd, int *nmr)
{
    struct mem_range_desc *mrd;
    struct mem_range_op mro;

    mro.mo_arg[0] = 0;
    if (ioctl(memfd, MEMRANGE_GET, &mro))
 err(1, "can't size range descriptor array");

    *nmr = mro.mo_arg[0];
    mrd = malloc(*nmr * sizeof(struct mem_range_desc));
    if (mrd == ((void*)0))
 errx(1, "can't allocate %zd bytes for %d range descriptors",
      *nmr * sizeof(struct mem_range_desc), *nmr);

    mro.mo_arg[0] = *nmr;
    mro.mo_desc = mrd;
    if (ioctl(memfd, MEMRANGE_GET, &mro))
 err(1, "can't fetch range descriptor array");

    return(mrd);
}
