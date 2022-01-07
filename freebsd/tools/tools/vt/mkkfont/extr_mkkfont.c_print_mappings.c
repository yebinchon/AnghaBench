
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_mapping {int length; int destination; int source; } ;
struct file_header {int * map_count; } ;


 int be16toh (int ) ;
 int be32toh (int ) ;
 int fread (struct file_mapping*,int,int,int ) ;
 char** map_names ;
 int perror (char*) ;
 int printf (char*,...) ;
 int stdin ;

__attribute__((used)) static int
print_mappings(struct file_header *fh, int map_index)
{
 struct file_mapping fm;
 unsigned int nmappings, i, col = 0;


 nmappings = be32toh(fh->map_count[map_index]);

 if (nmappings == 0)
  return (0);

 printf("\nstatic struct vt_font_map font_mapping_%s[%u] = {",
     map_names[map_index], nmappings);

 for (i = 0; i < nmappings; i++) {
  if (fread(&fm, sizeof fm, 1, stdin) != 1) {
   perror("mapping");
   return (1);
  }

  printf(col == 0 ? "\n\t" : " ");
  printf("{ 0x%04x, 0x%04x, 0x%02x },",
      be32toh(fm.source), be16toh(fm.destination),
      be16toh(fm.length));
  col = (col + 1) % 2;
 }

 printf("\n};\n");

 return (0);
}
