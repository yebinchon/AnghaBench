
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct xs_transaction {scalar_t__ id; } ;
struct sbuf {int dummy; } ;


 int EAGAIN ;
 int ENOTEMPTY ;
 int KASSERT (int ,char*) ;
 int M_XENSTORE ;
 int free (char const**,int ) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int strcmp (char*,char*) ;
 char* strrchr (char*,char) ;
 int xs_directory (struct xs_transaction,char*,char*,size_t*,char const***) ;
 struct sbuf* xs_join (char const*,char const*) ;
 int xs_rm (struct xs_transaction,char*,char const*) ;
 int xs_transaction_end (struct xs_transaction,int) ;
 int xs_transaction_start (struct xs_transaction*) ;

int
xs_rm_tree(struct xs_transaction xbt, const char *base, const char *node)
{
 struct xs_transaction local_xbt;
 struct sbuf *root_path_sbuf;
 struct sbuf *cur_path_sbuf;
 char *root_path;
 char *cur_path;
 const char **dir;
 int error;

retry:
 root_path_sbuf = xs_join(base, node);
 cur_path_sbuf = xs_join(base, node);
 root_path = sbuf_data(root_path_sbuf);
 cur_path = sbuf_data(cur_path_sbuf);
 dir = ((void*)0);
 local_xbt.id = 0;

 if (xbt.id == 0) {
  error = xs_transaction_start(&local_xbt);
  if (error != 0)
   goto out;
  xbt = local_xbt;
 }

 while (1) {
  u_int count;
  u_int i;

  error = xs_directory(xbt, cur_path, "", &count, &dir);
  if (error)
   goto out;

  for (i = 0; i < count; i++) {
   error = xs_rm(xbt, cur_path, dir[i]);
   if (error == ENOTEMPTY) {
    struct sbuf *push_dir;






    push_dir = xs_join(cur_path, dir[i]);
    sbuf_delete(cur_path_sbuf);
    cur_path_sbuf = push_dir;
    cur_path = sbuf_data(cur_path_sbuf);
    break;
   } else if (error != 0) {
    goto out;
   }
  }

  free(dir, M_XENSTORE);
  dir = ((void*)0);

  if (i == count) {
   char *last_slash;


   error = xs_rm(xbt, cur_path, "");
   if (error != 0)
    goto out;

   if (!strcmp(cur_path, root_path))
    break;


   last_slash = strrchr(cur_path, '/');
   KASSERT(last_slash != ((void*)0),
    ("xs_rm_tree: mangled path %s", cur_path));
   *last_slash = '\0';
  }
 }

out:
 sbuf_delete(cur_path_sbuf);
 sbuf_delete(root_path_sbuf);
 if (dir != ((void*)0))
  free(dir, M_XENSTORE);

 if (local_xbt.id != 0) {
  int terror;

  terror = xs_transaction_end(local_xbt, error != 0);
  xbt.id = 0;
  if (terror == EAGAIN && error == 0)
   goto retry;
 }
 return (error);
}
