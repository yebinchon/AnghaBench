
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terminal_class {int dummy; } ;
struct terminal {void* tm_softc; struct terminal_class const* tm_class; } ;


 int M_TERMINAL ;
 int M_WAITOK ;
 int M_ZERO ;
 struct terminal* malloc (int,int ,int) ;
 int terminal_init (struct terminal*) ;

struct terminal *
terminal_alloc(const struct terminal_class *tc, void *softc)
{
 struct terminal *tm;

 tm = malloc(sizeof(struct terminal), M_TERMINAL, M_WAITOK|M_ZERO);
 terminal_init(tm);

 tm->tm_class = tc;
 tm->tm_softc = softc;

 return (tm);
}
