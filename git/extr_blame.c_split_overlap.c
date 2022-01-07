
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_origin {int dummy; } ;
struct blame_entry {int s_lno; int lno; int num_lines; struct blame_origin* suspect; int unblamable; int ignored; } ;


 void* blame_origin_incref (struct blame_origin*) ;
 int memset (struct blame_entry*,int ,int) ;

__attribute__((used)) static void split_overlap(struct blame_entry *split,
     struct blame_entry *e,
     int tlno, int plno, int same,
     struct blame_origin *parent)
{
 int chunk_end_lno;
 int i;
 memset(split, 0, sizeof(struct blame_entry [3]));

 for (i = 0; i < 3; i++) {
  split[i].ignored = e->ignored;
  split[i].unblamable = e->unblamable;
 }

 if (e->s_lno < tlno) {

  split[0].suspect = blame_origin_incref(e->suspect);
  split[0].lno = e->lno;
  split[0].s_lno = e->s_lno;
  split[0].num_lines = tlno - e->s_lno;
  split[1].lno = e->lno + tlno - e->s_lno;
  split[1].s_lno = plno;
 }
 else {
  split[1].lno = e->lno;
  split[1].s_lno = plno + (e->s_lno - tlno);
 }

 if (same < e->s_lno + e->num_lines) {

  split[2].suspect = blame_origin_incref(e->suspect);
  split[2].lno = e->lno + (same - e->s_lno);
  split[2].s_lno = e->s_lno + (same - e->s_lno);
  split[2].num_lines = e->s_lno + e->num_lines - same;
  chunk_end_lno = split[2].lno;
 }
 else
  chunk_end_lno = e->lno + e->num_lines;
 split[1].num_lines = chunk_end_lno - split[1].lno;





 if (split[1].num_lines < 1)
  return;
 split[1].suspect = blame_origin_incref(parent);
}
