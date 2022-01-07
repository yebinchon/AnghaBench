
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image {char* buf; size_t len; int line_allocated; int line; } ;


 int add_line_info (struct image*,char const*,int,int ) ;
 int memset (struct image*,int ,int) ;

__attribute__((used)) static void prepare_image(struct image *image, char *buf, size_t len,
     int prepare_linetable)
{
 const char *cp, *ep;

 memset(image, 0, sizeof(*image));
 image->buf = buf;
 image->len = len;

 if (!prepare_linetable)
  return;

 ep = image->buf + image->len;
 cp = image->buf;
 while (cp < ep) {
  const char *next;
  for (next = cp; next < ep && *next != '\n'; next++)
   ;
  if (next < ep)
   next++;
  add_line_info(image, cp, next - cp, 0);
  cp = next;
 }
 image->line = image->line_allocated;
}
