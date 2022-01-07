
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 int NS_NOTFOUND ;
 int NS_SUCCESS ;
 int TRACE_IN (int (*) (char**,size_t*,void*)) ;
 int TRACE_OUT (int (*) (char**,size_t*,void*)) ;
 int assert (int ) ;
 struct passwd* getpwent () ;
 char* malloc (size_t) ;
 int passwd_marshal_func (struct passwd*,char*,size_t*) ;

__attribute__((used)) static int
passwd_mp_lookup_func(char **buffer, size_t *buffer_size, void *mdata)
{
 struct passwd *result;

 TRACE_IN(passwd_mp_lookup_func);
 result = getpwent();
 if (result != ((void*)0)) {
  passwd_marshal_func(result, ((void*)0), buffer_size);
  *buffer = malloc(*buffer_size);
  assert(*buffer != ((void*)0));
  passwd_marshal_func(result, *buffer, buffer_size);
 }

 TRACE_OUT(passwd_mp_lookup_func);
 return (result == ((void*)0) ? NS_NOTFOUND : NS_SUCCESS);
}
