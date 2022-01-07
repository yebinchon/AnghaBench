
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct file_header {unsigned int height; int glyph_count; int width; } ;


 unsigned int be32toh (int ) ;
 int fread (int *,unsigned int,int,int ) ;
 int free (int *) ;
 unsigned int howmany (int ,int) ;
 int * malloc (unsigned int) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int stdin ;

__attribute__((used)) static int
print_glyphs(struct file_header *fh)
{
 unsigned int gbytes, glyph_count, j, k, total;
 uint8_t *gbuf;

 gbytes = howmany(fh->width, 8) * fh->height;
 glyph_count = be32toh(fh->glyph_count);

 printf("\nstatic uint8_t font_bytes[%u * %u] = {", glyph_count, gbytes);
 total = glyph_count * gbytes;
 gbuf = malloc(total);

 if (fread(gbuf, total, 1, stdin) != 1) {
  perror("glyph");
  return (1);
 }

 for (j = 0; j < total; j += 12) {
  for (k = 0; k < 12 && k < total - j; k++) {
   printf(k == 0 ? "\n\t" : " ");
   printf("0x%02hhx,", gbuf[j + k]);
  }
 }

 free(gbuf);
 printf("\n};\n");

 return (0);
}
