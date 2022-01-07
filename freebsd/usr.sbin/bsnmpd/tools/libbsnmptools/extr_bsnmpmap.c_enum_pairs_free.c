
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enum_pairs {struct enum_pairs* enum_str; } ;
struct enum_pair {struct enum_pair* enum_str; } ;


 struct enum_pairs* STAILQ_FIRST (struct enum_pairs*) ;
 int STAILQ_REMOVE_HEAD (struct enum_pairs*,int ) ;
 int free (struct enum_pairs*) ;
 int link ;

void
enum_pairs_free(struct enum_pairs *headp)
{
 struct enum_pair *e;

 if (headp == ((void*)0))
  return;

 while ((e = STAILQ_FIRST(headp)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(headp, link);

  if (e->enum_str)
   free(e->enum_str);
  free(e);
 }

 free(headp);
}
