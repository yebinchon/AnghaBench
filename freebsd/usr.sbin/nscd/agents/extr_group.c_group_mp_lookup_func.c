
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;


 int NS_NOTFOUND ;
 int NS_SUCCESS ;
 int TRACE_IN (int (*) (char**,size_t*,void*)) ;
 int TRACE_OUT (int (*) (char**,size_t*,void*)) ;
 int assert (int ) ;
 struct group* getgrent () ;
 int group_marshal_func (struct group*,char*,size_t*) ;
 char* malloc (size_t) ;

__attribute__((used)) static int
group_mp_lookup_func(char **buffer, size_t *buffer_size, void *mdata)
{
 struct group *result;

 TRACE_IN(group_mp_lookup_func);
 result = getgrent();
 if (result != ((void*)0)) {
  group_marshal_func(result, ((void*)0), buffer_size);
  *buffer = malloc(*buffer_size);
  assert(*buffer != ((void*)0));
  group_marshal_func(result, *buffer, buffer_size);
 }

 TRACE_OUT(group_mp_lookup_func);
 return (result == ((void*)0) ? NS_NOTFOUND : NS_SUCCESS);
}
