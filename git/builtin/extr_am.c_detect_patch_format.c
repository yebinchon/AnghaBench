
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; scalar_t__ len; } ;
typedef enum patch_format { ____Placeholder_patch_format } patch_format ;
typedef int FILE ;


 int PATCH_FORMAT_HG ;
 int PATCH_FORMAT_MBOX ;
 int PATCH_FORMAT_STGIT ;
 int PATCH_FORMAT_STGIT_SERIES ;
 int PATCH_FORMAT_UNKNOWN ;
 struct strbuf STRBUF_INIT ;
 int fclose (int *) ;
 scalar_t__ is_directory (char const*) ;
 scalar_t__ is_mail (int *) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strbuf_getline (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;
 int * xfopen (char const*,char*) ;

__attribute__((used)) static int detect_patch_format(const char **paths)
{
 enum patch_format ret = PATCH_FORMAT_UNKNOWN;
 struct strbuf l1 = STRBUF_INIT;
 struct strbuf l2 = STRBUF_INIT;
 struct strbuf l3 = STRBUF_INIT;
 FILE *fp;




 if (!*paths || !strcmp(*paths, "-") || is_directory(*paths))
  return PATCH_FORMAT_MBOX;






 fp = xfopen(*paths, "r");

 while (!strbuf_getline(&l1, fp)) {
  if (l1.len)
   break;
 }

 if (starts_with(l1.buf, "From ") || starts_with(l1.buf, "From: ")) {
  ret = PATCH_FORMAT_MBOX;
  goto done;
 }

 if (starts_with(l1.buf, "# This series applies on GIT commit")) {
  ret = PATCH_FORMAT_STGIT_SERIES;
  goto done;
 }

 if (!strcmp(l1.buf, "# HG changeset patch")) {
  ret = PATCH_FORMAT_HG;
  goto done;
 }

 strbuf_getline(&l2, fp);
 strbuf_getline(&l3, fp);





 if (l1.len && !l2.len &&
  (starts_with(l3.buf, "From:") ||
   starts_with(l3.buf, "Author:") ||
   starts_with(l3.buf, "Date:"))) {
  ret = PATCH_FORMAT_STGIT;
  goto done;
 }

 if (l1.len && is_mail(fp)) {
  ret = PATCH_FORMAT_MBOX;
  goto done;
 }

done:
 fclose(fp);
 strbuf_release(&l1);
 strbuf_release(&l2);
 strbuf_release(&l3);
 return ret;
}
