
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_mapping {int dummy; } ;
struct file_header {int dummy; } ;


 int VFNT_MAP_BOLD ;
 int VFNT_MAP_BOLD_RH ;
 int VFNT_MAP_NORMAL ;
 int assert (int) ;
 void* atoi (int ) ;
 int dedup_mapping (int ) ;
 int fold_mappings (int) ;
 int getopt (int,char**,char*) ;
 void* height ;
 int number_glyphs () ;
 int optarg ;
 scalar_t__ optind ;
 scalar_t__ parse_file (char*,int ) ;
 int print_font_info () ;
 int set_height (void*) ;
 int set_width (void*) ;
 int usage () ;
 void* width ;
 scalar_t__ write_fnt (char*) ;

int
main(int argc, char *argv[])
{
 int ch, verbose = 0;

 assert(sizeof(struct file_header) == 32);
 assert(sizeof(struct file_mapping) == 8);

 while ((ch = getopt(argc, argv, "h:vw:")) != -1) {
  switch (ch) {
  case 'h':
   height = atoi(optarg);
   break;
  case 'v':
   verbose = 1;
   break;
  case 'w':
   width = atoi(optarg);
   break;
  case '?':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc < 2 || argc > 3)
  usage();

 set_width(width);
 set_height(height);

 if (parse_file(argv[0], VFNT_MAP_NORMAL) != 0)
  return (1);
 argc--;
 argv++;
 if (argc == 2) {
  if (parse_file(argv[0], VFNT_MAP_BOLD) != 0)
   return (1);
  argc--;
  argv++;
 }
 number_glyphs();
 dedup_mapping(VFNT_MAP_BOLD);
 dedup_mapping(VFNT_MAP_BOLD_RH);
 fold_mappings(0);
 fold_mappings(1);
 fold_mappings(2);
 fold_mappings(3);
 if (write_fnt(argv[0]) != 0)
  return (1);

 if (verbose)
  print_font_info();

 return (0);
}
