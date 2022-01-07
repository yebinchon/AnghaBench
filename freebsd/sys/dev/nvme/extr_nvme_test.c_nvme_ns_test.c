
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct nvme_namespace {int dummy; } ;
struct nvme_io_test_internal {scalar_t__ opc; int td_active; int time; int size; int io_completed; int start; int flags; struct nvme_namespace* ns; } ;
struct nvme_io_test {scalar_t__ opc; int size; int num_threads; int time; int io_completed; int flags; } ;
typedef scalar_t__ caddr_t ;


 int DELAY (int) ;
 int M_NVME ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ NVME_IO_TEST ;
 scalar_t__ NVME_OPC_READ ;
 scalar_t__ NVME_OPC_WRITE ;
 int free (struct nvme_io_test_internal*,int ) ;
 int getmicrouptime (int *) ;
 int hz ;
 int kthread_add (void (*) (void*),struct nvme_io_test_internal*,int *,int *,int ,int ,char*,int) ;
 struct nvme_io_test_internal* malloc (int,int ,int) ;
 int memcpy (int ,int ,int) ;
 void nvme_ns_bio_test (void*) ;
 int nvme_ns_get_sector_size (struct nvme_namespace*) ;
 void nvme_ns_io_test (void*) ;
 int tsleep (struct nvme_io_test_internal*,int ,char*,int) ;

void
nvme_ns_test(struct nvme_namespace *ns, u_long cmd, caddr_t arg)
{
 struct nvme_io_test *io_test;
 struct nvme_io_test_internal *io_test_internal;
 void (*fn)(void *);
 int i;

 io_test = (struct nvme_io_test *)arg;

 if ((io_test->opc != NVME_OPC_READ) &&
     (io_test->opc != NVME_OPC_WRITE))
  return;

 if (io_test->size % nvme_ns_get_sector_size(ns))
  return;

 io_test_internal = malloc(sizeof(*io_test_internal), M_NVME,
     M_WAITOK | M_ZERO);
 io_test_internal->opc = io_test->opc;
 io_test_internal->ns = ns;
 io_test_internal->td_active = io_test->num_threads;
 io_test_internal->time = io_test->time;
 io_test_internal->size = io_test->size;
 io_test_internal->flags = io_test->flags;

 if (cmd == NVME_IO_TEST)
  fn = nvme_ns_io_test;
 else
  fn = nvme_ns_bio_test;

 getmicrouptime(&io_test_internal->start);

 for (i = 0; i < io_test->num_threads; i++)
  kthread_add(fn, io_test_internal,
      ((void*)0), ((void*)0), 0, 0, "nvme_io_test[%d]", i);

 tsleep(io_test_internal, 0, "nvme_test", io_test->time * 2 * hz);

 while (io_test_internal->td_active > 0)
  DELAY(10);

 memcpy(io_test->io_completed, io_test_internal->io_completed,
     sizeof(io_test->io_completed));

 free(io_test_internal, M_NVME);
}
