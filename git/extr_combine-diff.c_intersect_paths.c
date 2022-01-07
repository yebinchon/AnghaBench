
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct diff_queue_struct {int nr; TYPE_3__** queue; } ;
struct combine_diff_path {char* path; struct combine_diff_path* next; TYPE_2__* parent; int mode; int oid; } ;
struct TYPE_8__ {char* path; int mode; int oid; } ;
struct TYPE_7__ {TYPE_1__* one; int status; TYPE_4__* two; } ;
struct TYPE_6__ {int path; int status; int mode; int oid; } ;
struct TYPE_5__ {int path; int mode; int oid; } ;


 int combine_diff_path_size (int,int) ;
 int compare_paths (struct combine_diff_path*,TYPE_4__*) ;
 struct diff_queue_struct diff_queued_diff ;
 scalar_t__ diff_unmodified_pair (TYPE_3__*) ;
 scalar_t__ filename_changed (int ) ;
 int free (struct combine_diff_path*) ;
 int memcpy (char*,char const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int oidcpy (int *,int *) ;
 int strbuf_addstr (int *,int ) ;
 int strbuf_init (int *,int ) ;
 int strbuf_release (int *) ;
 int strlen (char const*) ;
 struct combine_diff_path* xmalloc (int ) ;

__attribute__((used)) static struct combine_diff_path *intersect_paths(
 struct combine_diff_path *curr,
 int n,
 int num_parent,
 int combined_all_paths)
{
 struct diff_queue_struct *q = &diff_queued_diff;
 struct combine_diff_path *p, **tail = &curr;
 int i, j, cmp;

 if (!n) {
  for (i = 0; i < q->nr; i++) {
   int len;
   const char *path;
   if (diff_unmodified_pair(q->queue[i]))
    continue;
   path = q->queue[i]->two->path;
   len = strlen(path);
   p = xmalloc(combine_diff_path_size(num_parent, len));
   p->path = (char *) &(p->parent[num_parent]);
   memcpy(p->path, path, len);
   p->path[len] = 0;
   p->next = ((void*)0);
   memset(p->parent, 0,
          sizeof(p->parent[0]) * num_parent);

   oidcpy(&p->oid, &q->queue[i]->two->oid);
   p->mode = q->queue[i]->two->mode;
   oidcpy(&p->parent[n].oid, &q->queue[i]->one->oid);
   p->parent[n].mode = q->queue[i]->one->mode;
   p->parent[n].status = q->queue[i]->status;

   if (combined_all_paths &&
       filename_changed(p->parent[n].status)) {
    strbuf_init(&p->parent[n].path, 0);
    strbuf_addstr(&p->parent[n].path,
           q->queue[i]->one->path);
   }
   *tail = p;
   tail = &p->next;
  }
  return curr;
 }





 i = 0;
 while ((p = *tail) != ((void*)0)) {
  cmp = ((i >= q->nr)
         ? -1 : compare_paths(p, q->queue[i]->two));

  if (cmp < 0) {

   *tail = p->next;
   for (j = 0; j < num_parent; j++)
    if (combined_all_paths &&
        filename_changed(p->parent[j].status))
     strbuf_release(&p->parent[j].path);
   free(p);
   continue;
  }

  if (cmp > 0) {

   i++;
   continue;
  }

  oidcpy(&p->parent[n].oid, &q->queue[i]->one->oid);
  p->parent[n].mode = q->queue[i]->one->mode;
  p->parent[n].status = q->queue[i]->status;
  if (combined_all_paths &&
      filename_changed(p->parent[n].status))
   strbuf_addstr(&p->parent[n].path,
          q->queue[i]->one->path);

  tail = &p->next;
  i++;
 }
 return curr;
}
