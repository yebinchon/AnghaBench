
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intsrc {int is_handlers; int is_domain; TYPE_1__* is_pic; int is_event; } ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
struct TYPE_2__ {int (* pic_enable_source ) (struct intsrc*) ;int (* pic_enable_intr ) (struct intsrc*) ;} ;


 int EINVAL ;
 int intr_event_add_handler (int ,char const*,int ,int ,void*,int ,int,void**) ;
 struct intsrc* intr_lookup_source (int) ;
 int intr_priority (int) ;
 int intrcnt_updatename (struct intsrc*) ;
 int intrsrc_lock ;
 int stub1 (struct intsrc*) ;
 int stub2 (struct intsrc*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
intr_add_handler(const char *name, int vector, driver_filter_t filter,
    driver_intr_t handler, void *arg, enum intr_type flags, void **cookiep,
    int domain)
{
 struct intsrc *isrc;
 int error;

 isrc = intr_lookup_source(vector);
 if (isrc == ((void*)0))
  return (EINVAL);
 error = intr_event_add_handler(isrc->is_event, name, filter, handler,
     arg, intr_priority(flags), flags, cookiep);
 if (error == 0) {
  sx_xlock(&intrsrc_lock);
  intrcnt_updatename(isrc);
  isrc->is_handlers++;
  if (isrc->is_handlers == 1) {
   isrc->is_domain = domain;
   isrc->is_pic->pic_enable_intr(isrc);
   isrc->is_pic->pic_enable_source(isrc);
  }
  sx_xunlock(&intrsrc_lock);
 }
 return (error);
}
