
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {unsigned long len; char* buf; } ;
struct stat {int st_mode; } ;
struct apply_state {TYPE_1__* repo; } ;
struct TYPE_2__ {int index; } ;


 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (unsigned int) ;
 scalar_t__ S_ISLNK (unsigned int) ;
 int _ (char*) ;
 scalar_t__ close (int) ;
 scalar_t__ convert_to_working_tree (int ,char const*,char const*,unsigned long,struct strbuf*) ;
 int error_errno (int ,char const*) ;
 scalar_t__ has_symlinks ;
 int lstat (char const*,struct stat*) ;
 int mkdir (char const*,int) ;
 int open (char const*,int,int) ;
 int strbuf_release (struct strbuf*) ;
 int symlink (char const*,char const*) ;
 scalar_t__ write_in_full (int,char const*,unsigned long) ;

__attribute__((used)) static int try_create_file(struct apply_state *state, const char *path,
      unsigned int mode, const char *buf,
      unsigned long size)
{
 int fd, res;
 struct strbuf nbuf = STRBUF_INIT;

 if (S_ISGITLINK(mode)) {
  struct stat st;
  if (!lstat(path, &st) && S_ISDIR(st.st_mode))
   return 0;
  return !!mkdir(path, 0777);
 }

 if (has_symlinks && S_ISLNK(mode))



  return !!symlink(buf, path);

 fd = open(path, O_CREAT | O_EXCL | O_WRONLY, (mode & 0100) ? 0777 : 0666);
 if (fd < 0)
  return 1;

 if (convert_to_working_tree(state->repo->index, path, buf, size, &nbuf)) {
  size = nbuf.len;
  buf = nbuf.buf;
 }

 res = write_in_full(fd, buf, size) < 0;
 if (res)
  error_errno(_("failed to write to '%s'"), path);
 strbuf_release(&nbuf);

 if (close(fd) < 0 && !res)
  return error_errno(_("closing file '%s'"), path);

 return res ? -1 : 0;
}
