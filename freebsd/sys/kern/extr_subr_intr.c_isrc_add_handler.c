
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int * isrc_event; } ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;


 int intr_event_add_handler (int *,char const*,int ,int ,void*,int ,int,void**) ;
 int intr_priority (int) ;
 int intrcnt_updatename (struct intr_irqsrc*) ;
 int isrc_event_create (struct intr_irqsrc*) ;
 int isrc_table_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
isrc_add_handler(struct intr_irqsrc *isrc, const char *name,
    driver_filter_t filter, driver_intr_t handler, void *arg,
    enum intr_type flags, void **cookiep)
{
 int error;

 if (isrc->isrc_event == ((void*)0)) {
  error = isrc_event_create(isrc);
  if (error)
   return (error);
 }

 error = intr_event_add_handler(isrc->isrc_event, name, filter, handler,
     arg, intr_priority(flags), flags, cookiep);
 if (error == 0) {
  mtx_lock(&isrc_table_lock);
  intrcnt_updatename(isrc);
  mtx_unlock(&isrc_table_lock);
 }

 return (error);
}
