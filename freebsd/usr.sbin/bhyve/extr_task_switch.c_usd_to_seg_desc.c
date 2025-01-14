
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct user_segment_descriptor {int sd_gran; int sd_type; int sd_dpl; int sd_p; int sd_xx; int sd_def32; } ;
struct seg_desc {int base; int limit; int access; } ;


 scalar_t__ USD_GETBASE (struct user_segment_descriptor*) ;
 int USD_GETLIMIT (struct user_segment_descriptor*) ;

__attribute__((used)) static struct seg_desc
usd_to_seg_desc(struct user_segment_descriptor *usd)
{
 struct seg_desc seg_desc;

 seg_desc.base = (u_int)USD_GETBASE(usd);
 if (usd->sd_gran)
  seg_desc.limit = (u_int)(USD_GETLIMIT(usd) << 12) | 0xfff;
 else
  seg_desc.limit = (u_int)USD_GETLIMIT(usd);
 seg_desc.access = usd->sd_type | usd->sd_dpl << 5 | usd->sd_p << 7;
 seg_desc.access |= usd->sd_xx << 12;
 seg_desc.access |= usd->sd_def32 << 14;
 seg_desc.access |= usd->sd_gran << 15;

 return (seg_desc);
}
