
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_origin {int dummy; } ;
struct blame_entry {int num_lines; scalar_t__ score; scalar_t__ s_lno; scalar_t__ lno; int unblamable; int ignored; struct blame_origin* suspect; } ;


 struct blame_entry* xcalloc (int,int) ;

__attribute__((used)) static struct blame_entry *split_blame_at(struct blame_entry *e, int len,
       struct blame_origin *new_suspect)
{
 struct blame_entry *n = xcalloc(1, sizeof(struct blame_entry));

 n->suspect = new_suspect;
 n->ignored = e->ignored;
 n->unblamable = e->unblamable;
 n->lno = e->lno + len;
 n->s_lno = e->s_lno + len;
 n->num_lines = e->num_lines - len;
 e->num_lines = len;
 e->score = 0;
 return n;
}
