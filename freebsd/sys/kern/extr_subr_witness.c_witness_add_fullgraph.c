
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct witness {int w_displayed; scalar_t__ w_line; size_t w_index; int w_name; int * w_file; } ;
struct sbuf {int dummy; } ;


 int WITNESS_INDEX_ASSERT (size_t) ;
 int WITNESS_PARENT ;
 int sbuf_printf (struct sbuf*,char*,int ,int ) ;
 struct witness* w_data ;
 int w_max_used_index ;
 int** w_rmatrix ;

__attribute__((used)) static void
witness_add_fullgraph(struct sbuf *sb, struct witness *w)
{
 int i;

 if (w->w_displayed != 0 || (w->w_file == ((void*)0) && w->w_line == 0))
  return;
 w->w_displayed = 1;

 WITNESS_INDEX_ASSERT(w->w_index);
 for (i = 1; i <= w_max_used_index; i++) {
  if (w_rmatrix[w->w_index][i] & WITNESS_PARENT) {
   sbuf_printf(sb, "\"%s\",\"%s\"\n", w->w_name,
       w_data[i].w_name);
   witness_add_fullgraph(sb, &w_data[i]);
  }
 }
}
