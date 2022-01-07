
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uid_t ;
typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
struct stat {scalar_t__ st_mtime; } ;
struct bsdar {char const* filename; int argc; char** argv; int options; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int mode_t ;
typedef int gid_t ;
typedef int buf ;


 int AC (int ) ;
 int ARCHIVE_EOF ;
 int ARCHIVE_EXTRACT_SECURE_NODOTDOT ;
 int ARCHIVE_EXTRACT_SECURE_SYMLINKS ;
 int ARCHIVE_EXTRACT_TIME ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_RETRY ;
 int ARCHIVE_WARN ;
 int AR_CC ;
 int AR_O ;
 int AR_U ;
 int AR_V ;
 int DEF_BLKSZ ;
 scalar_t__ ENOENT ;
 int EX_SOFTWARE ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 scalar_t__ archive_entry_mtime (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 size_t archive_entry_size (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_errno (struct archive*) ;
 char const* archive_error_string (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data_into_fd (struct archive*,int) ;
 int archive_read_data_skip (struct archive*) ;
 int archive_read_extract (struct archive*,struct archive_entry*,int) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int ) ;
 int archive_read_support_format_ar (struct archive*) ;
 char* basename (char*) ;
 int bsdar_errc (struct bsdar*,int ,scalar_t__,char*) ;
 int bsdar_warnc (struct bsdar*,int ,char*,...) ;
 scalar_t__ errno ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 struct tm* localtime (scalar_t__*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stdout ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int strmode (int ,char*) ;

__attribute__((used)) static void
read_archive(struct bsdar *bsdar, char mode)
{
 struct archive *a;
 struct archive_entry *entry;
 struct stat sb;
 struct tm *tp;
 const char *bname;
 const char *name;
 mode_t md;
 size_t size;
 time_t mtime;
 uid_t uid;
 gid_t gid;
 char **av;
 char buf[25];
 char find;
 int flags, r, i;

 if ((a = archive_read_new()) == ((void*)0))
  bsdar_errc(bsdar, EX_SOFTWARE, 0, "archive_read_new failed");
 archive_read_support_format_ar(a);
 AC(archive_read_open_filename(a, bsdar->filename, DEF_BLKSZ));

 for (;;) {
  r = archive_read_next_header(a, &entry);
  if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY ||
      r == ARCHIVE_FATAL)
   bsdar_warnc(bsdar, archive_errno(a), "%s",
       archive_error_string(a));
  if (r == ARCHIVE_EOF || r == ARCHIVE_FATAL)
   break;
  if (r == ARCHIVE_RETRY) {
   bsdar_warnc(bsdar, 0, "Retrying...");
   continue;
  }

  if ((name = archive_entry_pathname(entry)) == ((void*)0))
   break;


  if (strcmp(name, "/") == 0 || strcmp(name, "//") == 0 ||
      strcmp(name, "/SYM64/") == 0)
   continue;

  if (bsdar->argc > 0) {
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

  if (mode == 't') {
   if (bsdar->options & AR_V) {
    md = archive_entry_mode(entry);
    uid = archive_entry_uid(entry);
    gid = archive_entry_gid(entry);
    size = archive_entry_size(entry);
    mtime = archive_entry_mtime(entry);
    (void)strmode(md, buf);
    (void)fprintf(stdout, "%s %6d/%-6d %8ju ",
        buf + 1, uid, gid, (uintmax_t)size);
    tp = localtime(&mtime);
    (void)strftime(buf, sizeof(buf),
        "%b %e %H:%M %Y", tp);
    (void)fprintf(stdout, "%s %s", buf, name);
   } else
    (void)fprintf(stdout, "%s", name);
   r = archive_read_data_skip(a);
   if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY ||
       r == ARCHIVE_FATAL) {
    (void)fprintf(stdout, "\n");
    bsdar_warnc(bsdar, archive_errno(a), "%s",
        archive_error_string(a));
   }

   if (r == ARCHIVE_FATAL)
    break;

   (void)fprintf(stdout, "\n");
  } else {

   if (mode == 'p') {
    if (bsdar->options & AR_V) {
     (void)fprintf(stdout, "\n<%s>\n\n",
         name);
     fflush(stdout);
    }
    r = archive_read_data_into_fd(a, 1);
   } else {

    if (stat(name, &sb) != 0) {
     if (errno != ENOENT) {
      bsdar_warnc(bsdar, 0,
          "stat %s failed",
          bsdar->filename);
      continue;
     }
    } else {

     if (bsdar->options & AR_CC)
      continue;
     if (bsdar->options & AR_U &&
         archive_entry_mtime(entry) <=
         sb.st_mtime)
      continue;
    }

    if (bsdar->options & AR_V)
     (void)fprintf(stdout, "x - %s\n", name);

    if (name[0] == '/') {
     bsdar_warnc(bsdar, 0,
         "Absolute path '%s'", name);
     continue;
    }

    flags = ARCHIVE_EXTRACT_SECURE_SYMLINKS |
        ARCHIVE_EXTRACT_SECURE_NODOTDOT;
    if (bsdar->options & AR_O)
     flags |= ARCHIVE_EXTRACT_TIME;

    r = archive_read_extract(a, entry, flags);
   }

   if (r)
    bsdar_warnc(bsdar, archive_errno(a), "%s",
        archive_error_string(a));
  }
 }
 AC(archive_read_close(a));
 AC(archive_read_free(a));
}
