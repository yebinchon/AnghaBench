
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mevent {int dummy; } ;
struct esync {int e_cond; int e_mt; } ;
typedef int buf ;


 int EVF_READ ;
 int echoer_callback ;
 int exit (int) ;
 struct mevent* mevent_add (int,int ,int ,struct esync*) ;
 int mevent_delete_close (struct mevent*) ;
 int printf (char*) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int read (int,char*,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void *
echoer(void *param)
{
 struct esync sync;
 struct mevent *mev;
 char buf[128];
 int fd = (int)(uintptr_t) param;
 int len;

 pthread_mutex_init(&sync.e_mt, ((void*)0));
 pthread_cond_init(&sync.e_cond, ((void*)0));

 pthread_mutex_lock(&sync.e_mt);

 mev = mevent_add(fd, EVF_READ, echoer_callback, &sync);
 if (mev == ((void*)0)) {
  printf("Could not allocate echoer event\n");
  exit(4);
 }

 while (!pthread_cond_wait(&sync.e_cond, &sync.e_mt)) {
  len = read(fd, buf, sizeof(buf));
  if (len > 0) {
   write(fd, buf, len);
   write(0, buf, len);
  } else {
   break;
  }
 }

 mevent_delete_close(mev);

 pthread_mutex_unlock(&sync.e_mt);
 pthread_mutex_destroy(&sync.e_mt);
 pthread_cond_destroy(&sync.e_cond);

 return (((void*)0));
}
