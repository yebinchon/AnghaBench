
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 scalar_t__ EEXIST ;
 int O_CREAT ;
 int O_EXCL ;
 int * SEM_FAILED ;
 int SEM_NAME ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int printf (char*) ;
 scalar_t__ sem_close (int *) ;
 int * sem_open (int ,int,...) ;
 int sem_unlink (int ) ;

int
test_named2(void)
{
 sem_t *s, *s2, *s3;

 printf("testing named process-shared semaphore, O_EXCL cases\n");
 sem_unlink(SEM_NAME);
 s = sem_open(SEM_NAME, O_CREAT | O_EXCL, 0777, 0);
 if (s == SEM_FAILED)
  err(1, "sem_open failed");
 s2 = sem_open(SEM_NAME, O_CREAT | O_EXCL, 0777, 0);
 if (s2 != SEM_FAILED)
  errx(2, "second sem_open call wrongly succeeded");
 if (errno != EEXIST)
  err(3, "second sem_open call failed with wrong errno");

 s3 = sem_open(SEM_NAME, 0);
 if (s3 == SEM_FAILED)
  err(4, "third sem_open call failed");
 if (s != s3)
  errx(5,
"two sem_open calls for same semaphore do not return same address");
 if (sem_close(s3))
  err(6, "sem_close failed");

 if (sem_close(s))
  err(7, "sem_close failed");

 printf("OK.\n");
 return (0);
}
