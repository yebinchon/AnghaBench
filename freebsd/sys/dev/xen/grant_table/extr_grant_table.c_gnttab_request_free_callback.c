
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct gnttab_free_callback {void (* fn ) (void*) ;struct gnttab_free_callback* next; int count; void* arg; } ;


 int check_free_callbacks () ;
 struct gnttab_free_callback* gnttab_free_callback_list ;
 int gnttab_list_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
gnttab_request_free_callback(struct gnttab_free_callback *callback,
    void (*fn)(void *), void *arg, uint16_t count)
{

 mtx_lock(&gnttab_list_lock);
 if (callback->next)
  goto out;
 callback->fn = fn;
 callback->arg = arg;
 callback->count = count;
 callback->next = gnttab_free_callback_list;
 gnttab_free_callback_list = callback;
 check_free_callbacks();
 out:
 mtx_unlock(&gnttab_list_lock);

}
