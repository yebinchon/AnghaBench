
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct TYPE_2__ {int st_mode; } ;
struct dir_iterator {int relative_path; TYPE_1__ st; } ;


 unsigned int DIR_ITERATOR_FOLLOW_SYMLINKS ;
 unsigned int DIR_ITERATOR_PEDANTIC ;
 scalar_t__ ENOENT ;
 int ITER_DONE ;
 int ITER_OK ;
 scalar_t__ S_ISDIR (int ) ;
 int _ (char*) ;
 int copy_alternates (struct strbuf*,char const*) ;
 scalar_t__ copy_file_with_time (int ,int ,int) ;
 int die (int ,int ) ;
 int die_errno (int ,int ) ;
 int dir_iterator_advance (struct dir_iterator*) ;
 struct dir_iterator* dir_iterator_begin (int ,unsigned int) ;
 scalar_t__ errno ;
 int fspathcmp (int ,char*) ;
 int link (int ,int ) ;
 int mkdir_if_missing (int ,int) ;
 scalar_t__ option_local ;
 int option_no_hardlinks ;
 int real_path (int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_setlen (struct strbuf*,int) ;
 scalar_t__ unlink (int ) ;

__attribute__((used)) static void copy_or_link_directory(struct strbuf *src, struct strbuf *dest,
       const char *src_repo)
{
 int src_len, dest_len;
 struct dir_iterator *iter;
 int iter_status;
 unsigned int flags;

 mkdir_if_missing(dest->buf, 0777);

 flags = DIR_ITERATOR_PEDANTIC | DIR_ITERATOR_FOLLOW_SYMLINKS;
 iter = dir_iterator_begin(src->buf, flags);

 if (!iter)
  die_errno(_("failed to start iterator over '%s'"), src->buf);

 strbuf_addch(src, '/');
 src_len = src->len;
 strbuf_addch(dest, '/');
 dest_len = dest->len;

 while ((iter_status = dir_iterator_advance(iter)) == ITER_OK) {
  strbuf_setlen(src, src_len);
  strbuf_addstr(src, iter->relative_path);
  strbuf_setlen(dest, dest_len);
  strbuf_addstr(dest, iter->relative_path);

  if (S_ISDIR(iter->st.st_mode)) {
   mkdir_if_missing(dest->buf, 0777);
   continue;
  }


  if (!fspathcmp(iter->relative_path, "info/alternates")) {
   copy_alternates(src, src_repo);
   continue;
  }

  if (unlink(dest->buf) && errno != ENOENT)
   die_errno(_("failed to unlink '%s'"), dest->buf);
  if (!option_no_hardlinks) {
   if (!link(real_path(src->buf), dest->buf))
    continue;
   if (option_local > 0)
    die_errno(_("failed to create link '%s'"), dest->buf);
   option_no_hardlinks = 1;
  }
  if (copy_file_with_time(dest->buf, src->buf, 0666))
   die_errno(_("failed to copy file to '%s'"), dest->buf);
 }

 if (iter_status != ITER_DONE) {
  strbuf_setlen(src, src_len);
  die(_("failed to iterate over '%s'"), src->buf);
 }
}
