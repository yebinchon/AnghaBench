
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {int argc; char** argv; int v_obj; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
struct ar_obj {char* maddr; size_t size; int fd; scalar_t__ ino; scalar_t__ dev; int mtime; int md; int gid; int uid; int * name; } ;
typedef scalar_t__ ssize_t ;


 int AC (int ) ;
 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_RETRY ;
 int ARCHIVE_WARN ;
 int DEF_BLKSZ ;
 int EX_DATAERR ;
 int EX_SOFTWARE ;
 int TAILQ_INSERT_TAIL (int *,struct ar_obj*,int ) ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 size_t archive_entry_size (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_errno (struct archive*) ;
 int archive_error_string (struct archive*) ;
 int archive_read_close (struct archive*) ;
 scalar_t__ archive_read_data (struct archive*,char*,size_t) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int ) ;
 int archive_read_support_format_ar (struct archive*) ;
 char* basename (char*) ;
 int bsdar_errc (struct bsdar*,int ,int ,char*,...) ;
 int bsdar_warnc (struct bsdar*,int ,char*,...) ;
 int errno ;
 int free (char*) ;
 void* malloc (int) ;
 int objs ;
 scalar_t__ strcmp (char const*,char const*) ;
 int * strdup (char const*) ;

__attribute__((used)) static void
read_objs(struct bsdar *bsdar, const char *archive, int checkargv)
{
 struct archive *a;
 struct archive_entry *entry;
 struct ar_obj *obj;
 const char *name;
 const char *bname;
 char *buff;
 char **av;
 size_t size;
 int i, r, find;

 if ((a = archive_read_new()) == ((void*)0))
  bsdar_errc(bsdar, EX_SOFTWARE, 0, "archive_read_new failed");
 archive_read_support_format_ar(a);
 AC(archive_read_open_filename(a, archive, DEF_BLKSZ));
 for (;;) {
  r = archive_read_next_header(a, &entry);
  if (r == ARCHIVE_FATAL)
   bsdar_errc(bsdar, EX_DATAERR, archive_errno(a), "%s",
       archive_error_string(a));
  if (r == ARCHIVE_EOF)
   break;
  if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY)
   bsdar_warnc(bsdar, archive_errno(a), "%s",
       archive_error_string(a));
  if (r == ARCHIVE_RETRY) {
   bsdar_warnc(bsdar, 0, "Retrying...");
   continue;
  }

  name = archive_entry_pathname(entry);




  if (strcmp(name, "/") == 0 || strcmp(name, "//") == 0)
   continue;





  if (checkargv && bsdar->argc > 0) {
   find = 0;
   for(i = 0; i < bsdar->argc; i++) {
    av = &bsdar->argv[i];
    if (*av == ((void*)0))
     continue;
    if ((bname = basename(*av)) == ((void*)0))
     bsdar_errc(bsdar, EX_SOFTWARE, errno,
         "basename failed");
    if (strcmp(bname, name) != 0)
     continue;

    *av = ((void*)0);
    find = 1;
    break;
   }
   if (!find)
    continue;
  }

  size = archive_entry_size(entry);

  if (size > 0) {
   if ((buff = malloc(size)) == ((void*)0))
    bsdar_errc(bsdar, EX_SOFTWARE, errno,
        "malloc failed");
   if (archive_read_data(a, buff, size) != (ssize_t)size) {
    bsdar_warnc(bsdar, archive_errno(a), "%s",
        archive_error_string(a));
    free(buff);
    continue;
   }
  } else
   buff = ((void*)0);

  obj = malloc(sizeof(struct ar_obj));
  if (obj == ((void*)0))
   bsdar_errc(bsdar, EX_SOFTWARE, errno, "malloc failed");
  obj->maddr = buff;
  if ((obj->name = strdup(name)) == ((void*)0))
   bsdar_errc(bsdar, EX_SOFTWARE, errno, "strdup failed");
  obj->size = size;
  obj->uid = archive_entry_uid(entry);
  obj->gid = archive_entry_gid(entry);
  obj->md = archive_entry_mode(entry);
  obj->mtime = archive_entry_mtime(entry);
  obj->dev = 0;
  obj->ino = 0;





  obj->fd = -1;
  TAILQ_INSERT_TAIL(&bsdar->v_obj, obj, objs);
 }
 AC(archive_read_close(a));
 AC(archive_read_free(a));
}
