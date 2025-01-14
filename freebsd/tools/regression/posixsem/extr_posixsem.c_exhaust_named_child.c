
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;
typedef int buffer ;


 int CSTAT (int,scalar_t__) ;
 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 scalar_t__ ENOSPC ;
 int O_CREAT ;
 char* TEST_PATH ;
 scalar_t__ errno ;
 scalar_t__ ksem_open (int *,char*,int ,int,int) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static int
exhaust_named_child(void *arg)
{
 char buffer[64];
 semid_t id;
 int i, max;

 max = (intptr_t)arg;
 for (i = 0; i < max + 1; i++) {
  snprintf(buffer, sizeof(buffer), "%s%d", TEST_PATH, i);
  if (ksem_open(&id, buffer, O_CREAT, 0777, 1) < 0) {
   if (errno == ENOSPC || errno == EMFILE ||
       errno == ENFILE)
    return (CSTAT(0, 0));
   return (CSTAT(1, errno));
  }
 }
 return (CSTAT(2, errno));
}
