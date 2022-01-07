
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {char* magic; void** map_count; void* glyph_count; int height; int width; } ;
typedef int FILE ;


 int VFNT_MAP_BOLD ;
 int VFNT_MAP_BOLD_RH ;
 int VFNT_MAP_NORMAL ;
 int VFNT_MAP_NORMAL_RH ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (struct file_header*,int,int,int *) ;
 int glyph_unique ;
 int height ;
 void* htobe32 (int ) ;
 int * map_folded_count ;
 int perror (char const*) ;
 int width ;
 scalar_t__ write_glyphs (int *) ;
 scalar_t__ write_mappings (int *,int ) ;

__attribute__((used)) static int
write_fnt(const char *filename)
{
 FILE *fp;
 struct file_header fh = {
  .magic = "VFNT0002",
 };

 fp = fopen(filename, "wb");
 if (fp == ((void*)0)) {
  perror(filename);
  return (1);
 }

 fh.width = width;
 fh.height = height;
 fh.glyph_count = htobe32(glyph_unique);
 fh.map_count[0] = htobe32(map_folded_count[0]);
 fh.map_count[1] = htobe32(map_folded_count[1]);
 fh.map_count[2] = htobe32(map_folded_count[2]);
 fh.map_count[3] = htobe32(map_folded_count[3]);
 if (fwrite(&fh, sizeof fh, 1, fp) != 1) {
  perror(filename);
  fclose(fp);
  return (1);
 }

 if (write_glyphs(fp) != 0 ||
     write_mappings(fp, VFNT_MAP_NORMAL) != 0 ||
     write_mappings(fp, VFNT_MAP_NORMAL_RH) != 0 ||
     write_mappings(fp, VFNT_MAP_BOLD) != 0 ||
     write_mappings(fp, VFNT_MAP_BOLD_RH) != 0) {
  perror(filename);
  fclose(fp);
  return (1);
 }

 fclose(fp);
 return (0);
}
