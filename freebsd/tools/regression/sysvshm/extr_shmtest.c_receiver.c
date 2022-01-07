
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int exit (int ) ;
 int m_str ;
 int pgsize ;
 int printf (char*,char const*) ;
 void* shmat (int,int *,int ) ;
 int shmget (int ,int ,int ) ;
 int shmkey ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static void
receiver(void)
{
 int shmid;
 void *shm_buf;

 if ((shmid = shmget(shmkey, pgsize, 0)) == -1)
  err(1, "receiver: shmget");

 if ((shm_buf = shmat(shmid, ((void*)0), 0)) == (void *) -1)
  err(1, "receiver: shmat");

 printf("%s\n", (const char *)shm_buf);
 if (strcmp((const char *)shm_buf, m_str) != 0)
  err(1, "receiver: data isn't correct");

 exit(0);
}
