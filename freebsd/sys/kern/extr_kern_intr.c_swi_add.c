
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_event {int ie_flags; } ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int driver_intr_t ;


 int EINVAL ;
 int IE_SOFT ;
 int INTR_ENTROPY ;
 int PI_SWI (int) ;
 int intr_event_add_handler (struct intr_event*,char const*,int *,int ,void*,int ,int,void**) ;
 int intr_event_create (struct intr_event**,int *,int,int ,int *,int *,int *,int ,char*,int) ;
 int swi_assign_cpu ;

int
swi_add(struct intr_event **eventp, const char *name, driver_intr_t handler,
     void *arg, int pri, enum intr_type flags, void **cookiep)
{
 struct intr_event *ie;
 int error;

 if (flags & INTR_ENTROPY)
  return (EINVAL);

 ie = (eventp != ((void*)0)) ? *eventp : ((void*)0);

 if (ie != ((void*)0)) {
  if (!(ie->ie_flags & IE_SOFT))
   return (EINVAL);
 } else {
  error = intr_event_create(&ie, ((void*)0), IE_SOFT, 0,
      ((void*)0), ((void*)0), ((void*)0), swi_assign_cpu, "swi%d:", pri);
  if (error)
   return (error);
  if (eventp != ((void*)0))
   *eventp = ie;
 }
 error = intr_event_add_handler(ie, name, ((void*)0), handler, arg,
     PI_SWI(pri), flags, cookiep);
 return (error);
}
