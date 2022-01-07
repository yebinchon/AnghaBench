
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_hh00 {int post; int error; struct g_class* mp; } ;
struct g_class {int * taste; } ;


 int EINVAL ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ cold ;
 int g_free (struct g_hh00*) ;
 struct g_hh00* g_malloc (int,int) ;
 int g_post_event (int ,struct g_hh00*,int,int *) ;
 int g_retaste_event ;
 int g_waitfor_event (int ,struct g_hh00*,int,int *) ;

int
g_retaste(struct g_class *mp)
{
 struct g_hh00 *hh;
 int error;

 if (mp->taste == ((void*)0))
  return (EINVAL);

 hh = g_malloc(sizeof *hh, M_WAITOK | M_ZERO);
 hh->mp = mp;

 if (cold) {
  hh->post = 1;
  error = g_post_event(g_retaste_event, hh, M_WAITOK, ((void*)0));
 } else {
  error = g_waitfor_event(g_retaste_event, hh, M_WAITOK, ((void*)0));
  if (error == 0)
   error = hh->error;
  g_free(hh);
 }

 return (error);
}
