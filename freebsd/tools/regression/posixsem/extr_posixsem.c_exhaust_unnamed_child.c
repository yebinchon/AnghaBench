
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;


 int CSTAT (int,scalar_t__) ;
 scalar_t__ ENOSPC ;
 scalar_t__ errno ;
 scalar_t__ ksem_init (int *,int) ;

__attribute__((used)) static int
exhaust_unnamed_child(void *arg)
{
 semid_t id;
 int i, max;

 max = (intptr_t)arg;
 for (i = 0; i < max + 1; i++) {
  if (ksem_init(&id, 1) < 0) {
   if (errno == ENOSPC)
    return (CSTAT(0, 0));
   return (CSTAT(1, errno));
  }
 }
 return (CSTAT(2, 0));
}
