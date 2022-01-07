
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color {scalar_t__ member_0; scalar_t__ type; } ;


 int COLOR_MAXLEN ;
 scalar_t__ COLOR_UNSPECIFIED ;
 int GIT_COLOR_RESET ;
 int OUT (char) ;
 int _ (char*) ;
 int color_empty (struct color*) ;
 char* color_output (char*,int,struct color*,char) ;
 int error (int ,int,char const*) ;
 scalar_t__ isspace (char const) ;
 int parse_attr (char const*,int) ;
 int parse_color (struct color*,char const*,int) ;
 int strncasecmp (char const*,char*,int) ;
 int xsnprintf (char*,int,char*,...) ;

int color_parse_mem(const char *value, int value_len, char *dst)
{
 const char *ptr = value;
 int len = value_len;
 char *end = dst + COLOR_MAXLEN;
 unsigned int attr = 0;
 struct color fg = { COLOR_UNSPECIFIED };
 struct color bg = { COLOR_UNSPECIFIED };

 while (len > 0 && isspace(*ptr)) {
  ptr++;
  len--;
 }

 if (!len) {
  dst[0] = '\0';
  return 0;
 }

 if (!strncasecmp(ptr, "reset", len)) {
  xsnprintf(dst, end - dst, GIT_COLOR_RESET);
  return 0;
 }


 while (len > 0) {
  const char *word = ptr;
  struct color c = { COLOR_UNSPECIFIED };
  int val, wordlen = 0;

  while (len > 0 && !isspace(word[wordlen])) {
   wordlen++;
   len--;
  }

  ptr = word + wordlen;
  while (len > 0 && isspace(*ptr)) {
   ptr++;
   len--;
  }

  if (!parse_color(&c, word, wordlen)) {
   if (fg.type == COLOR_UNSPECIFIED) {
    fg = c;
    continue;
   }
   if (bg.type == COLOR_UNSPECIFIED) {
    bg = c;
    continue;
   }
   goto bad;
  }
  val = parse_attr(word, wordlen);
  if (0 <= val)
   attr |= (1 << val);
  else
   goto bad;
 }
 if (attr || !color_empty(&fg) || !color_empty(&bg)) {
  int sep = 0;
  int i;

  do { if (dst == end) BUG("color parsing ran out of space"); *dst++ = ('\033'); } while(0);
  do { if (dst == end) BUG("color parsing ran out of space"); *dst++ = ('['); } while(0);

  for (i = 0; attr; i++) {
   unsigned bit = (1 << i);
   if (!(attr & bit))
    continue;
   attr &= ~bit;
   if (sep++)
    do { if (dst == end) BUG("color parsing ran out of space"); *dst++ = (';'); } while(0);
   dst += xsnprintf(dst, end - dst, "%d", i);
  }
  if (!color_empty(&fg)) {
   if (sep++)
    do { if (dst == end) BUG("color parsing ran out of space"); *dst++ = (';'); } while(0);

   dst = color_output(dst, end - dst, &fg, '3');
  }
  if (!color_empty(&bg)) {
   if (sep++)
    do { if (dst == end) BUG("color parsing ran out of space"); *dst++ = (';'); } while(0);

   dst = color_output(dst, end - dst, &bg, '4');
  }
  do { if (dst == end) BUG("color parsing ran out of space"); *dst++ = ('m'); } while(0);
 }
 do { if (dst == end) BUG("color parsing ran out of space"); *dst++ = (0); } while(0);
 return 0;
bad:
 return error(_("invalid color value: %.*s"), value_len, value);

}
