
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {int width; int height; scalar_t__* map_count; } ;


 int be32toh (scalar_t__) ;
 char** map_names ;
 int printf (char*,...) ;

__attribute__((used)) static int
print_info(struct file_header *fh)
{
 unsigned int i;

 printf(
     "\nstruct vt_font vt_font_default = {\n"
     "\t.vf_width\t\t= %u,\n"
     "\t.vf_height\t\t= %u,\n"
     "\t.vf_bytes\t\t= font_bytes,\n",
     fh->width, fh->height);

 printf("\t.vf_map\t\t\t= {\n");
 for (i = 0; i < 4; i++) {
  if (fh->map_count[i] > 0)
   printf("\t\t\t\t    font_mapping_%s,\n", map_names[i]);
  else
   printf("\t\t\t\t    NULL,\n");
 }
 printf("\t\t\t\t  },\n");
 printf("\t.vf_map_count\t\t= { %u, %u, %u, %u },\n",
     be32toh(fh->map_count[0]),
     be32toh(fh->map_count[1]),
     be32toh(fh->map_count[2]),
     be32toh(fh->map_count[3]));
 printf("\t.vf_refcount\t\t= 1,\n};\n");

 return (0);
}
