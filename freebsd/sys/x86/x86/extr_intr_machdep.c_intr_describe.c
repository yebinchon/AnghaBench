
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct intsrc {int is_event; } ;


 int EINVAL ;
 int intr_event_describe_handler (int ,void*,char const*) ;
 struct intsrc* intr_lookup_source (int ) ;
 int intrcnt_updatename (struct intsrc*) ;

int
intr_describe(u_int vector, void *ih, const char *descr)
{
 struct intsrc *isrc;
 int error;

 isrc = intr_lookup_source(vector);
 if (isrc == ((void*)0))
  return (EINVAL);
 error = intr_event_describe_handler(isrc->is_event, ih, descr);
 if (error)
  return (error);
 intrcnt_updatename(isrc);
 return (0);
}
