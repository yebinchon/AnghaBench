
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int FILE ;


 int add_char (unsigned int,unsigned int,scalar_t__*,scalar_t__*) ;
 int atoi (char*) ;
 int errx (int,char*,...) ;
 char* fgetln (int *,size_t*) ;
 int free (scalar_t__*) ;
 int height ;
 unsigned int howmany (unsigned int,int) ;
 int set_height (int ) ;
 int set_width (int ) ;
 int split_row (scalar_t__*,scalar_t__*,scalar_t__*,unsigned int) ;
 scalar_t__ sscanf (char*,char*,unsigned int*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int wbytes ;
 int width ;
 scalar_t__* xmalloc (int) ;

__attribute__((used)) static int
parse_hex(FILE *fp, unsigned int map_idx)
{
 char *ln, *p;
 size_t length;
 uint8_t *bytes = ((void*)0), *bytes_r = ((void*)0), *line = ((void*)0);
 unsigned curchar = 0, gwidth, gwbytes, i, j, chars_per_row;
 int rv = 0;

 while ((ln = fgetln(fp, &length)) != ((void*)0)) {
  ln[length - 1] = '\0';

  if (strncmp(ln, "# Height: ", 10) == 0) {
   if (bytes != ((void*)0))
    errx(1, "malformed input: Height tag after font data");
   set_height(atoi(ln + 10));
  } else if (strncmp(ln, "# Width: ", 9) == 0) {
   if (bytes != ((void*)0))
    errx(1, "malformed input: Width tag after font data");
   set_width(atoi(ln + 9));
  } else if (sscanf(ln, "%6x:", &curchar)) {
   if (bytes == ((void*)0)) {
    bytes = xmalloc(wbytes * height);
    bytes_r = xmalloc(wbytes * height);
    line = xmalloc(wbytes * 2);
   }

   p = strchr(ln, ':') + 1;
   chars_per_row = strlen(p) / height;
   if (chars_per_row < wbytes * 2)
    errx(1,
        "malformed input: broken bitmap, character %06x",
        curchar);
   gwidth = width * 2;
   gwbytes = howmany(gwidth, 8);
   if (chars_per_row < gwbytes * 2 || gwidth <= 8) {
    gwidth = width;
    gwbytes = wbytes;
   }

   for (i = 0; i < height; i++) {
    for (j = 0; j < gwbytes; j++) {
     unsigned int val;
     if (sscanf(p + j * 2, "%2x", &val) == 0)
      break;
     *(line + j) = (uint8_t)val;
    }
    rv = split_row(bytes + i * wbytes,
        bytes_r + i * wbytes, line, gwidth);
    if (rv != 0)
     goto out;
    p += gwbytes * 2;
   }

   rv = add_char(curchar, map_idx, bytes,
       gwidth != width ? bytes_r : ((void*)0));
   if (rv != 0)
    goto out;
  }
 }
out:
 free(bytes);
 free(bytes_r);
 free(line);
 return (rv);
}
