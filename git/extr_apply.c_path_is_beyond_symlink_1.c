
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {size_t len; char* buf; } ;
struct stat {int st_mode; } ;
struct cache_entry {int ce_mode; } ;
struct apply_state {TYPE_1__* repo; scalar_t__ check_index; } ;
struct TYPE_2__ {int index; } ;


 unsigned int APPLY_SYMLINK_GOES_AWAY ;
 unsigned int APPLY_SYMLINK_IN_RESULT ;
 scalar_t__ S_ISLNK (int ) ;
 unsigned int check_symlink_changes (struct apply_state*,char*) ;
 int ignore_case ;
 struct cache_entry* index_file_exists (int ,char*,size_t,int ) ;
 int lstat (char*,struct stat*) ;

__attribute__((used)) static int path_is_beyond_symlink_1(struct apply_state *state, struct strbuf *name)
{
 do {
  unsigned int change;

  while (--name->len && name->buf[name->len] != '/')
   ;
  if (!name->len)
   break;
  name->buf[name->len] = '\0';
  change = check_symlink_changes(state, name->buf);
  if (change & APPLY_SYMLINK_IN_RESULT)
   return 1;
  if (change & APPLY_SYMLINK_GOES_AWAY)




   continue;


  if (state->check_index) {
   struct cache_entry *ce;

   ce = index_file_exists(state->repo->index, name->buf,
            name->len, ignore_case);
   if (ce && S_ISLNK(ce->ce_mode))
    return 1;
  } else {
   struct stat st;
   if (!lstat(name->buf, &st) && S_ISLNK(st.st_mode))
    return 1;
  }
 } while (1);
 return 0;
}
