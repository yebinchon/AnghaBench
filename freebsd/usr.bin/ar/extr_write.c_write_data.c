
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {int dummy; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int EX_SOFTWARE ;
 int archive_errno (struct archive*) ;
 int archive_error_string (struct archive*) ;
 scalar_t__ archive_write_data (struct archive*,void const*,size_t) ;
 int bsdar_errc (struct bsdar*,int ,int ,char*,int ) ;
 int prefault_buffer (void const*,size_t) ;

__attribute__((used)) static void
write_data(struct bsdar *bsdar, struct archive *a, const void *buf, size_t s)
{
 ssize_t written;

 prefault_buffer(buf, s);
 while (s > 0) {
  written = archive_write_data(a, buf, s);
  if (written < 0)
   bsdar_errc(bsdar, EX_SOFTWARE, archive_errno(a), "%s",
       archive_error_string(a));
  buf = (const char *)buf + written;
  s -= written;
 }
}
