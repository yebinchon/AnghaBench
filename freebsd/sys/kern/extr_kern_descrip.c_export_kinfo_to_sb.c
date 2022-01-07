
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_file {scalar_t__ kf_structsize; } ;
struct export_fd_buf {int remainder; int sb; struct kinfo_file kif; } ;


 int ENOMEM ;
 scalar_t__ sbuf_bcat (int ,struct kinfo_file*,scalar_t__) ;

__attribute__((used)) static int
export_kinfo_to_sb(struct export_fd_buf *efbuf)
{
 struct kinfo_file *kif;

 kif = &efbuf->kif;
 if (efbuf->remainder != -1) {
  if (efbuf->remainder < kif->kf_structsize) {

   efbuf->remainder = 0;
   return (0);
  }
  efbuf->remainder -= kif->kf_structsize;
 }
 return (sbuf_bcat(efbuf->sb, kif, kif->kf_structsize) == 0 ? 0 : ENOMEM);
}
