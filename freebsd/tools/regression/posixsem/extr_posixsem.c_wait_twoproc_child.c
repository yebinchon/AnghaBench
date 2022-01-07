
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int CSTAT (int,int ) ;
 int TEST_PATH ;
 int errno ;
 scalar_t__ ksem_close (int ) ;
 scalar_t__ ksem_open (int *,int ,int ,int ,int ) ;
 scalar_t__ ksem_wait (int ) ;

__attribute__((used)) static int
wait_twoproc_child(void *arg)
{
 semid_t id;

 if (ksem_open(&id, TEST_PATH, 0, 0, 0) < 0)
  return (CSTAT(1, errno));
 if (ksem_wait(id) < 0)
  return (CSTAT(2, errno));
 if (ksem_close(id) < 0)
  return (CSTAT(3, errno));
 return (CSTAT(0, 0));
}
