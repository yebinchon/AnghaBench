
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct ipoib_path_iter {int dummy; } ;
struct TYPE_2__ {int sl; scalar_t__ dlid; int rate; int dgid; } ;
struct ipoib_path {TYPE_1__ pathrec; } ;


 int be16_to_cpu (scalar_t__) ;
 int format_gid (int *,char*) ;
 int ib_rate_to_mult (int ) ;
 int ipoib_path_iter_read (struct ipoib_path_iter*,struct ipoib_path*) ;
 int seq_printf (struct seq_file*,char*,char*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int ipoib_path_seq_show(struct seq_file *file, void *iter_ptr)
{
 struct ipoib_path_iter *iter = iter_ptr;
 char gid_buf[sizeof "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff"];
 struct ipoib_path path;
 int rate;

 if (!iter)
  return 0;

 ipoib_path_iter_read(iter, &path);

 format_gid(&path.pathrec.dgid, gid_buf);

 seq_printf(file,
     "GID: %s\n"
     "  complete: %6s\n",
     gid_buf, path.pathrec.dlid ? "yes" : "no");

 if (path.pathrec.dlid) {
  rate = ib_rate_to_mult(path.pathrec.rate) * 25;

  seq_printf(file,
      "  DLID:     0x%04x\n"
      "  SL: %12d\n"
      "  rate: %*d%s Gb/sec\n",
      be16_to_cpu(path.pathrec.dlid),
      path.pathrec.sl,
      10 - ((rate % 10) ? 2 : 0),
      rate / 10, rate % 10 ? ".5" : "");
 }

 seq_putc(file, '\n');

 return 0;
}
