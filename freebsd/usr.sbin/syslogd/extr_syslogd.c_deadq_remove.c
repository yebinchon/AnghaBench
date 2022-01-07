
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deadq_entry {int dummy; } ;


 int TAILQ_REMOVE (int *,struct deadq_entry*,int ) ;
 int deadq_head ;
 int dq_entries ;
 int free (struct deadq_entry*) ;

__attribute__((used)) static int
deadq_remove(struct deadq_entry *dq)
{
 if (dq != ((void*)0)) {
  TAILQ_REMOVE(&deadq_head, dq, dq_entries);
  free(dq);
  return (1);
 }

 return (0);
}
