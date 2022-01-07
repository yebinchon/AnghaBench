
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sembuf {int sem_op; void* sem_flg; scalar_t__ sem_num; } ;


 void* SEM_UNDO ;
 int err (int,char*) ;
 int exit (int ) ;
 int printf (char*) ;
 int semget (int ,int,int ) ;
 int semkey ;
 int semop (int,struct sembuf*,int) ;
 int sleep (int) ;

void
waiter()
{
 struct sembuf s;
 int semid;

 if ((semid = semget(semkey, 1, 0)) == -1)
  err(1, "waiter: semget");




 s.sem_num = 0;
 s.sem_op = -1;
 s.sem_flg = SEM_UNDO;

 if (semop(semid, &s, 1) == -1)
  err(1, "waiter: semop -1");

 printf("WOO!  GOT THE SEMAPHORE!\n");
 sleep(1);




 s.sem_num = 0;
 s.sem_op = 1;
 s.sem_flg = SEM_UNDO;

 if (semop(semid, &s, 1) == -1)
  err(1, "waiter: semop +1");

 exit(0);
}
