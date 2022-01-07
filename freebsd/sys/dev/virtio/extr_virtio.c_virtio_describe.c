
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
struct virtio_feature_desc {int dummy; } ;
struct sbuf {int dummy; } ;
typedef int device_t ;


 int M_NOWAIT ;
 int M_TEMP ;
 int SBUF_FIXEDLEN ;
 int VIRTIO_F_BAD_FEATURE ;
 int device_printf (int ,char*,char const*,...) ;
 int free (char*,int ) ;
 char* malloc (int,int ,int ) ;
 int sbuf_cat (struct sbuf*,char const*) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 scalar_t__ sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;
 scalar_t__ sbuf_overflowed (struct sbuf*) ;
 int sbuf_printf (struct sbuf*,char*,char const*,...) ;
 char* virtio_feature_name (int,struct virtio_feature_desc*) ;

void
virtio_describe(device_t dev, const char *msg,
    uint64_t features, struct virtio_feature_desc *desc)
{
 struct sbuf sb;
 uint64_t val;
 char *buf;
 const char *name;
 int n;

 if ((buf = malloc(512, M_TEMP, M_NOWAIT)) == ((void*)0)) {
  device_printf(dev, "%s features: %#jx\n", msg, (uintmax_t) features);
  return;
 }

 sbuf_new(&sb, buf, 512, SBUF_FIXEDLEN);
 sbuf_printf(&sb, "%s features: %#jx", msg, (uintmax_t) features);

 for (n = 0, val = 1ULL << 63; val != 0; val >>= 1) {




  if (((features & val) == 0) || val == VIRTIO_F_BAD_FEATURE)
   continue;

  if (n++ == 0)
   sbuf_cat(&sb, " <");
  else
   sbuf_cat(&sb, ",");

  name = virtio_feature_name(val, desc);
  if (name == ((void*)0))
   sbuf_printf(&sb, "%#jx", (uintmax_t) val);
  else
   sbuf_cat(&sb, name);
 }

 if (n > 0)
  sbuf_cat(&sb, ">");


 sbuf_finish(&sb);
 if (sbuf_overflowed(&sb) == 0)



  device_printf(dev, "%s\n", sbuf_data(&sb));

 sbuf_delete(&sb);
 free(buf, M_TEMP);
}
