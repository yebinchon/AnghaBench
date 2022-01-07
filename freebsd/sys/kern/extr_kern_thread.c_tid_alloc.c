
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lwpid_t ;


 size_t TID_BUFFER_SIZE ;
 int alloc_unr (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int* tid_buffer ;
 size_t tid_head ;
 int tid_lock ;
 size_t tid_tail ;
 int tid_unrhdr ;

__attribute__((used)) static lwpid_t
tid_alloc(void)
{
 lwpid_t tid;

 tid = alloc_unr(tid_unrhdr);
 if (tid != -1)
  return (tid);
 mtx_lock(&tid_lock);
 if (tid_head == tid_tail) {
  mtx_unlock(&tid_lock);
  return (-1);
 }
 tid = tid_buffer[tid_head];
 tid_head = (tid_head + 1) % TID_BUFFER_SIZE;
 mtx_unlock(&tid_lock);
 return (tid);
}
