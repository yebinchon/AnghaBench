
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct object {unsigned int flags; } ;
struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct commit_dist {int distance; TYPE_1__* commit; } ;
struct TYPE_2__ {struct object object; } ;


 int DECORATION_NONE ;
 int QSORT (struct commit_dist*,int,int ) ;
 struct strbuf STRBUF_INIT ;
 unsigned int TREESAME ;
 int add_name_decoration (int ,int ,struct object*) ;
 int compare_commit_dist ;
 int free (struct commit_dist*) ;
 int free_commit_list (struct commit_list*) ;
 int strbuf_addf (struct strbuf*,char*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int weight (struct commit_list*) ;
 struct commit_dist* xcalloc (int,int) ;

__attribute__((used)) static struct commit_list *best_bisection_sorted(struct commit_list *list, int nr)
{
 struct commit_list *p;
 struct commit_dist *array = xcalloc(nr, sizeof(*array));
 struct strbuf buf = STRBUF_INIT;
 int cnt, i;

 for (p = list, cnt = 0; p; p = p->next) {
  int distance;
  unsigned flags = p->item->object.flags;

  if (flags & TREESAME)
   continue;
  distance = weight(p);
  if (nr - distance < distance)
   distance = nr - distance;
  array[cnt].commit = p->item;
  array[cnt].distance = distance;
  cnt++;
 }
 QSORT(array, cnt, compare_commit_dist);
 for (p = list, i = 0; i < cnt; i++) {
  struct object *obj = &(array[i].commit->object);

  strbuf_reset(&buf);
  strbuf_addf(&buf, "dist=%d", array[i].distance);
  add_name_decoration(DECORATION_NONE, buf.buf, obj);

  p->item = array[i].commit;
  if (i < cnt - 1)
   p = p->next;
 }
 if (p) {
  free_commit_list(p->next);
  p->next = ((void*)0);
 }
 strbuf_release(&buf);
 free(array);
 return list;
}
