
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int head; scalar_t__ len; int last; struct unrhdr* ptr; int first; } ;
struct unrb {int head; scalar_t__ len; int last; struct unrb* ptr; int first; } ;
struct unr {int head; scalar_t__ len; int last; struct unr* ptr; int first; } ;


 struct unrhdr* TAILQ_FIRST (int *) ;
 struct unrhdr* TAILQ_LAST (int *,int ) ;
 struct unrhdr* TAILQ_NEXT (struct unrhdr*,int ) ;
 struct unrhdr* TAILQ_PREV (struct unrhdr*,int ,int ) ;
 int TAILQ_REMOVE (int *,struct unrhdr*,int ) ;
 int delete_unr (struct unrhdr*,struct unrhdr*) ;
 scalar_t__ is_bitmap (struct unrhdr*,struct unrhdr*) ;
 int list ;
 scalar_t__ optimize_unr (struct unrhdr*) ;
 scalar_t__ ub_empty (struct unrhdr*,scalar_t__) ;
 scalar_t__ ub_full (struct unrhdr*,scalar_t__) ;
 int unrhd ;

__attribute__((used)) static void
collapse_unr(struct unrhdr *uh, struct unr *up)
{
 struct unr *upp;
 struct unrb *ub;


 if (is_bitmap(uh, up)) {
  ub = up->ptr;
  if (ub_full(ub, up->len)) {
   delete_unr(uh, up->ptr);
   up->ptr = uh;
  } else if (ub_empty(ub, up->len)) {
   delete_unr(uh, up->ptr);
   up->ptr = ((void*)0);
  }
 }


 if (up->len == 0) {
  upp = TAILQ_PREV(up, unrhd, list);
  if (upp == ((void*)0))
   upp = TAILQ_NEXT(up, list);
  TAILQ_REMOVE(&uh->head, up, list);
  delete_unr(uh, up);
  up = upp;
 }


 if (up != ((void*)0)) {
  upp = TAILQ_PREV(up, unrhd, list);
  if (upp != ((void*)0) && up->ptr == upp->ptr) {
   up->len += upp->len;
   TAILQ_REMOVE(&uh->head, upp, list);
   delete_unr(uh, upp);
   }
  upp = TAILQ_NEXT(up, list);
  if (upp != ((void*)0) && up->ptr == upp->ptr) {
   up->len += upp->len;
   TAILQ_REMOVE(&uh->head, upp, list);
   delete_unr(uh, upp);
  }
 }


 upp = TAILQ_FIRST(&uh->head);
 if (upp != ((void*)0) && upp->ptr == uh) {
  uh->first += upp->len;
  TAILQ_REMOVE(&uh->head, upp, list);
  delete_unr(uh, upp);
  if (up == upp)
   up = ((void*)0);
 }


 upp = TAILQ_LAST(&uh->head, unrhd);
 if (upp != ((void*)0) && upp->ptr == ((void*)0)) {
  uh->last += upp->len;
  TAILQ_REMOVE(&uh->head, upp, list);
  delete_unr(uh, upp);
  if (up == upp)
   up = ((void*)0);
 }


 while (optimize_unr(uh))
  continue;
}
