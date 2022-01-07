
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_chipid {int dummy; } ;
struct bhnd_pmu_query {int caps; struct bhnd_chipid cid; void* io_ctx; struct bhnd_pmu_io const* io; int dev; } ;
struct bhnd_pmu_io {int dummy; } ;
typedef int device_t ;


 int BHND_PMU_CAP ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_query*,int ) ;

int
bhnd_pmu_query_init(struct bhnd_pmu_query *query, device_t dev,
    struct bhnd_chipid id, const struct bhnd_pmu_io *io, void *ctx)
{
 query->dev = dev;
 query->io = io;
 query->io_ctx = ctx;
 query->cid = id;
 query->caps = BHND_PMU_READ_4(query, BHND_PMU_CAP);

 return (0);
}
