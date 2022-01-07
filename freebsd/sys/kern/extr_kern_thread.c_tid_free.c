
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lwpid_t ;


 int TID_BUFFER_SIZE ;
 int free_unr (int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int* tid_buffer ;
 int tid_head ;
 int tid_lock ;
 int tid_tail ;
 int tid_unrhdr ;

__attribute__((used)) static void
tid_free(lwpid_t tid)
{
 lwpid_t tmp_tid = -1;

 mtx_lock(&tid_lock);
 if ((tid_tail + 1) % TID_BUFFER_SIZE == tid_head) {
  tmp_tid = tid_buffer[tid_head];
  tid_head = (tid_head + 1) % TID_BUFFER_SIZE;
 }
 tid_buffer[tid_tail] = tid;
 tid_tail = (tid_tail + 1) % TID_BUFFER_SIZE;
 mtx_unlock(&tid_lock);
 if (tmp_tid != -1)
  free_unr(tid_unrhdr, tmp_tid);
}
