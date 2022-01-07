
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t glyph_count; size_t height; struct vt4font_header* glyphs; struct vt4font_header** map; void** map_count; int width; } ;
typedef TYPE_1__ vfnt_t ;
struct vt4font_header {size_t height; int width; int glyph_count; int * map_count; int magic; } ;
typedef int FILE ;


 int PIO_VFONT ;
 int STDIN_FILENO ;
 unsigned int VFNT_MAPS ;
 void* be32toh (int ) ;
 int fread (struct vt4font_header*,size_t,int,int *) ;
 int free (struct vt4font_header*) ;
 size_t howmany (int ,int) ;
 int ioctl (int ,int ,TYPE_1__*) ;
 struct vt4font_header* load_vt4mappingtable (void*,int *) ;
 struct vt4font_header* malloc (size_t) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static void
load_vt4font(FILE *f)
{
 struct vt4font_header fh;
 static vfnt_t vfnt;
 size_t glyphsize;
 unsigned int i;

 if (fread(&fh, sizeof fh, 1, f) != 1) {
  warn("read file_header");
  return;
 }

 if (memcmp(fh.magic, "VFNT0002", 8) != 0) {
  warnx("bad magic in font file\n");
  return;
 }

 for (i = 0; i < VFNT_MAPS; i++)
  vfnt.map_count[i] = be32toh(fh.map_count[i]);
 vfnt.glyph_count = be32toh(fh.glyph_count);
 vfnt.width = fh.width;
 vfnt.height = fh.height;

 glyphsize = howmany(vfnt.width, 8) * vfnt.height * vfnt.glyph_count;
 if ((vfnt.glyphs = malloc(glyphsize)) == ((void*)0)) {
  warn("malloc");
  return;
 }

 if (fread(vfnt.glyphs, glyphsize, 1, f) != 1) {
  warn("read glyphs");
  free(vfnt.glyphs);
  return;
 }

 for (i = 0; i < VFNT_MAPS; i++)
  vfnt.map[i] = load_vt4mappingtable(vfnt.map_count[i], f);

 if (ioctl(STDIN_FILENO, PIO_VFONT, &vfnt) == -1)
  warn("PIO_VFONT");

 for (i = 0; i < VFNT_MAPS; i++)
  free(vfnt.map[i]);
 free(vfnt.glyphs);
}
