
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ timestamp_t ;
struct write_commit_graph_context {char* obj_dir; size_t num_commit_graphs_after; char** commit_graph_filenames_after; int split; TYPE_1__* split_opts; } ;
struct strbuf {char* buf; size_t len; } ;
struct stat {scalar_t__ st_mtime; } ;
struct dirent {char* d_name; } ;
struct TYPE_2__ {scalar_t__ expire_time; } ;
typedef int DIR ;


 struct strbuf STRBUF_INIT ;
 int free (char*) ;
 char* get_chain_filename (char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int stat (char*,struct stat*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ time (int *) ;
 int unlink (char*) ;

__attribute__((used)) static void expire_commit_graphs(struct write_commit_graph_context *ctx)
{
 struct strbuf path = STRBUF_INIT;
 DIR *dir;
 struct dirent *de;
 size_t dirnamelen;
 timestamp_t expire_time = time(((void*)0));

 if (ctx->split_opts && ctx->split_opts->expire_time)
  expire_time -= ctx->split_opts->expire_time;
 if (!ctx->split) {
  char *chain_file_name = get_chain_filename(ctx->obj_dir);
  unlink(chain_file_name);
  free(chain_file_name);
  ctx->num_commit_graphs_after = 0;
 }

 strbuf_addstr(&path, ctx->obj_dir);
 strbuf_addstr(&path, "/info/commit-graphs");
 dir = opendir(path.buf);

 if (!dir)
  goto out;

 strbuf_addch(&path, '/');
 dirnamelen = path.len;
 while ((de = readdir(dir)) != ((void*)0)) {
  struct stat st;
  uint32_t i, found = 0;

  strbuf_setlen(&path, dirnamelen);
  strbuf_addstr(&path, de->d_name);

  stat(path.buf, &st);

  if (st.st_mtime > expire_time)
   continue;
  if (path.len < 6 || strcmp(path.buf + path.len - 6, ".graph"))
   continue;

  for (i = 0; i < ctx->num_commit_graphs_after; i++) {
   if (!strcmp(ctx->commit_graph_filenames_after[i],
        path.buf)) {
    found = 1;
    break;
   }
  }

  if (!found)
   unlink(path.buf);
 }

out:
 strbuf_release(&path);
}
