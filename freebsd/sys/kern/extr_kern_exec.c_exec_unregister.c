
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execsw {int dummy; } ;


 int ENOENT ;
 int M_TEMP ;
 int M_WAITOK ;
 struct execsw const** execsw ;
 int free (struct execsw const**,int ) ;
 struct execsw** malloc (int,int ,int ) ;
 int panic (char*) ;

int
exec_unregister(const struct execsw *execsw_arg)
{
 const struct execsw **es, **xs, **newexecsw;
 int count = 1;

 if (execsw == ((void*)0))
  panic("unregister with no handlers left?\n");

 for (es = execsw; *es; es++) {
  if (*es == execsw_arg)
   break;
 }
 if (*es == ((void*)0))
  return (ENOENT);
 for (es = execsw; *es; es++)
  if (*es != execsw_arg)
   count++;
 newexecsw = malloc(count * sizeof(*es), M_TEMP, M_WAITOK);
 xs = newexecsw;
 for (es = execsw; *es; es++)
  if (*es != execsw_arg)
   *xs++ = *es;
 *xs = ((void*)0);
 if (execsw)
  free(execsw, M_TEMP);
 execsw = newexecsw;
 return (0);
}
