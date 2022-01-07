
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_origin {int dummy; } ;
struct blame_line_tracker {int dummy; } ;
struct blame_entry {int s_lno; int num_lines; struct blame_entry* next; struct blame_origin* suspect; } ;


 int blame_origin_decref (struct blame_origin*) ;
 struct blame_origin* blame_origin_incref (struct blame_origin*) ;
 int free (struct blame_line_tracker*) ;
 int guess_line_blames (struct blame_origin*,struct blame_origin*,int,int,int,int,struct blame_line_tracker*) ;
 int ignore_blame_entry (struct blame_entry*,struct blame_origin*,struct blame_entry**,struct blame_entry**,struct blame_line_tracker*) ;
 struct blame_entry* reverse_blame (struct blame_entry*,struct blame_entry*) ;
 struct blame_entry* split_blame_at (struct blame_entry*,int,struct blame_origin*) ;
 struct blame_line_tracker* xcalloc (int,int) ;

__attribute__((used)) static void blame_chunk(struct blame_entry ***dstq, struct blame_entry ***srcq,
   int tlno, int offset, int same, int parent_len,
   struct blame_origin *parent,
   struct blame_origin *target, int ignore_diffs)
{
 struct blame_entry *e = **srcq;
 struct blame_entry *samep = ((void*)0), *diffp = ((void*)0), *ignoredp = ((void*)0);
 struct blame_line_tracker *line_blames = ((void*)0);

 while (e && e->s_lno < tlno) {
  struct blame_entry *next = e->next;





  if (e->s_lno + e->num_lines > tlno) {

   struct blame_entry *n;

   n = split_blame_at(e, tlno - e->s_lno, e->suspect);

   n->next = diffp;
   diffp = n;
  } else
   blame_origin_decref(e->suspect);


  e->suspect = blame_origin_incref(parent);
  e->s_lno += offset;
  e->next = samep;
  samep = e;
  e = next;
 }






 if (samep) {
  **dstq = reverse_blame(samep, **dstq);
  *dstq = &samep->next;
 }




 e = reverse_blame(diffp, e);





 samep = ((void*)0);
 diffp = ((void*)0);

 if (ignore_diffs && same - tlno > 0) {
  line_blames = xcalloc(sizeof(struct blame_line_tracker),
          same - tlno);
  guess_line_blames(parent, target, tlno, offset, same,
      parent_len, line_blames);
 }

 while (e && e->s_lno < same) {
  struct blame_entry *next = e->next;




  if (e->s_lno + e->num_lines > same) {




   struct blame_entry *n;

   n = split_blame_at(e, same - e->s_lno,
        blame_origin_incref(e->suspect));

   n->next = samep;
   samep = n;
  }
  if (ignore_diffs) {
   ignore_blame_entry(e, parent, &diffp, &ignoredp,
        line_blames + e->s_lno - tlno);
  } else {
   e->next = diffp;
   diffp = e;
  }
  e = next;
 }
 free(line_blames);
 if (ignoredp) {
  **dstq = reverse_blame(ignoredp, **dstq);
  *dstq = &ignoredp->next;
 }
 **srcq = reverse_blame(diffp, reverse_blame(samep, e));

 if (diffp)
  *srcq = &diffp->next;
}
