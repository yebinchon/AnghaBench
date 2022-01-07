
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int AUTO_MASTER_PATH ;
 char* concat (char*,char,int ) ;
 int defined_init () ;
 int defined_parse_and_add (int ) ;
 int flush_caches () ;
 int getopt (int,char**,char*) ;
 int log_init (int) ;
 int mount_unmount (struct node*) ;
 int node_expand_ampersand (struct node*,int *) ;
 int node_expand_defined (struct node*) ;
 int node_expand_indirect_maps (struct node*) ;
 struct node* node_new_root () ;
 int node_print (struct node*,char*) ;
 int optarg ;
 scalar_t__ optind ;
 int parse_master (struct node*,int ) ;
 int unmount_automounted (int) ;
 int usage_automount () ;

int
main_automount(int argc, char **argv)
{
 struct node *root;
 int ch, debug = 0, show_maps = 0;
 char *options = ((void*)0);
 bool do_unmount = 0, force_unmount = 0, flush = 0;





 defined_init();

 while ((ch = getopt(argc, argv, "D:Lfco:uv")) != -1) {
  switch (ch) {
  case 'D':
   defined_parse_and_add(optarg);
   break;
  case 'L':
   show_maps++;
   break;
  case 'c':
   flush = 1;
   break;
  case 'f':
   force_unmount = 1;
   break;
  case 'o':
   options = concat(options, ',', optarg);
   break;
  case 'u':
   do_unmount = 1;
   break;
  case 'v':
   debug++;
   break;
  case '?':
  default:
   usage_automount();
  }
 }
 argc -= optind;
 if (argc != 0)
  usage_automount();

 if (force_unmount && !do_unmount)
  usage_automount();

 log_init(debug);

 if (flush) {
  flush_caches();
  return (0);
 }

 if (do_unmount) {
  unmount_automounted(force_unmount);
  return (0);
 }

 root = node_new_root();
 parse_master(root, AUTO_MASTER_PATH);

 if (show_maps) {
  if (show_maps > 1) {
   node_expand_indirect_maps(root);
   node_expand_ampersand(root, ((void*)0));
  }
  node_expand_defined(root);
  node_print(root, options);
  return (0);
 }

 mount_unmount(root);

 return (0);
}
