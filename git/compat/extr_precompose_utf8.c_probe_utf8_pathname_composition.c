
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int R_OK ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ access (int ,int ) ;
 int close (int) ;
 int die_errno (int ,int ) ;
 int git_config_set (char*,char*) ;
 int git_path_buf (struct strbuf*,char*,char const*) ;
 int open (int ,int,int) ;
 int precomposed_unicode ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ unlink (int ) ;

void probe_utf8_pathname_composition(void)
{
 struct strbuf path = STRBUF_INIT;
 static const char *auml_nfc = "\xc3\xa4";
 static const char *auml_nfd = "\x61\xcc\x88";
 int output_fd;
 if (precomposed_unicode != -1)
  return;
 git_path_buf(&path, "%s", auml_nfc);
 output_fd = open(path.buf, O_CREAT|O_EXCL|O_RDWR, 0600);
 if (output_fd >= 0) {
  close(output_fd);
  git_path_buf(&path, "%s", auml_nfd);
  precomposed_unicode = access(path.buf, R_OK) ? 0 : 1;
  git_config_set("core.precomposeunicode",
          precomposed_unicode ? "true" : "false");
  git_path_buf(&path, "%s", auml_nfc);
  if (unlink(path.buf))
   die_errno(_("failed to unlink '%s'"), path.buf);
 }
 strbuf_release(&path);
}
