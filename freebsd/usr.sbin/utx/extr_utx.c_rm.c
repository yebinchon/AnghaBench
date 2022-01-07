
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_id; int ut_tv; int ut_type; } ;


 int DEAD_PROCESS ;
 scalar_t__ b16_pton (char*,int ,int) ;
 int fprintf (int ,char*,char*) ;
 int gettimeofday (int *,int *) ;
 int perror (char*) ;
 int * pututxline (struct utmpx*) ;
 int stderr ;
 size_t strlen (char*) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int
rm(char *id[])
{
 struct utmpx utx = { .ut_type = DEAD_PROCESS };
 size_t len;
 int ret = 0;

 (void)gettimeofday(&utx.ut_tv, ((void*)0));
 for (; *id != ((void*)0); id++) {
  len = strlen(*id);
  if (len <= sizeof(utx.ut_id)) {

   strncpy(utx.ut_id, *id, sizeof(utx.ut_id));
  } else if (len != sizeof(utx.ut_id) * 2 ||
      b16_pton(*id, utx.ut_id, sizeof(utx.ut_id)) != 0) {

   fprintf(stderr, "%s: Invalid identifier format\n", *id);
   ret = 1;
   continue;
  }


  if (pututxline(&utx) == ((void*)0)) {
   perror(*id);
   ret = 1;
  }
 }
 return (ret);
}
