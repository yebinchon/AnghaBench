
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct filter_params {char const* src; size_t size; int fd; char const* cmd; char const* path; } ;
struct async {int out; struct filter_params* data; int proc; } ;
typedef int async ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ close (int) ;
 int error (int ,char const*) ;
 int fflush (int *) ;
 int filter_buffer_or_fd ;
 scalar_t__ finish_async (struct async*) ;
 int memset (struct async*,int ,int) ;
 scalar_t__ start_async (struct async*) ;
 scalar_t__ strbuf_read (struct strbuf*,int,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_swap (struct strbuf*,struct strbuf*) ;

__attribute__((used)) static int apply_single_file_filter(const char *path, const char *src, size_t len, int fd,
        struct strbuf *dst, const char *cmd)
{






 int err = 0;
 struct strbuf nbuf = STRBUF_INIT;
 struct async async;
 struct filter_params params;

 memset(&async, 0, sizeof(async));
 async.proc = filter_buffer_or_fd;
 async.data = &params;
 async.out = -1;
 params.src = src;
 params.size = len;
 params.fd = fd;
 params.cmd = cmd;
 params.path = path;

 fflush(((void*)0));
 if (start_async(&async))
  return 0;

 if (strbuf_read(&nbuf, async.out, 0) < 0) {
  err = error(_("read from external filter '%s' failed"), cmd);
 }
 if (close(async.out)) {
  err = error(_("read from external filter '%s' failed"), cmd);
 }
 if (finish_async(&async)) {
  err = error(_("external filter '%s' failed"), cmd);
 }

 if (!err) {
  strbuf_swap(dst, &nbuf);
 }
 strbuf_release(&nbuf);
 return !err;
}
