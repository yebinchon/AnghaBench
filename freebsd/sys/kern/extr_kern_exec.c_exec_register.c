
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct execsw {int dummy; } ;


 int M_TEMP ;
 int M_WAITOK ;
 struct execsw const** execsw ;
 int free (struct execsw const**,int ) ;
 struct execsw** malloc (int,int ,int ) ;

int
exec_register(const struct execsw *execsw_arg)
{
 const struct execsw **es, **xs, **newexecsw;
 u_int count = 2;

 if (execsw)
  for (es = execsw; *es; es++)
   count++;
 newexecsw = malloc(count * sizeof(*es), M_TEMP, M_WAITOK);
 xs = newexecsw;
 if (execsw)
  for (es = execsw; *es; es++)
   *xs++ = *es;
 *xs++ = execsw_arg;
 *xs = ((void*)0);
 if (execsw)
  free(execsw, M_TEMP);
 execsw = newexecsw;
 return (0);
}
