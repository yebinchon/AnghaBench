
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int * n_location; int n_config_line; int n_config_file; } ;
struct autofs_daemon_request {char* adr_from; char* adr_path; char* adr_prefix; char* adr_key; char* adr_options; int adr_id; } ;
typedef int FILE ;


 int assert (int ) ;
 int atexit (int ) ;
 int auto_pclose (int *) ;
 int * auto_popen (char*,char*,char*,char*,char*,int *,char*,int *) ;
 char* checked_strdup (char const*) ;
 char* concat (char*,char,char*) ;
 int create_subtree (struct node*,int) ;
 int done (int ,int) ;
 int exit_callback ;
 int lineno ;
 int log_debugx (char*,...) ;
 int log_errx (int,char*,...) ;
 int node_expand_ampersand (struct node*,char*) ;
 int node_expand_defined (struct node*) ;
 int node_expand_wildcard (struct node*,char*) ;
 struct node* node_find (struct node*,char*) ;
 int node_has_wildcards (struct node*) ;
 struct node* node_new_map (struct node*,char*,int *,char*,char*,int ) ;
 struct node* node_new_root () ;
 char* node_options (struct node*) ;
 int parse_map (struct node*,char const*,char*,int*) ;
 char* pick_option (char*,char**) ;
 int quick_exit (int ) ;
 int request_id ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
handle_request(const struct autofs_daemon_request *adr, char *cmdline_options,
    bool incomplete_hierarchy)
{
 const char *map;
 struct node *root, *parent, *node;
 FILE *f;
 char *key, *options, *fstype, *nobrowse, *retrycnt, *tmp;
 int error;
 bool wildcards;

 log_debugx("got request %d: from %s, path %s, prefix \"%s\", "
     "key \"%s\", options \"%s\"", adr->adr_id, adr->adr_from,
     adr->adr_path, adr->adr_prefix, adr->adr_key, adr->adr_options);




 request_id = adr->adr_id;
 atexit(exit_callback);

 if (strncmp(adr->adr_from, "map ", 4) != 0) {
  log_errx(1, "invalid mountfrom \"%s\"; failing request",
      adr->adr_from);
 }

 map = adr->adr_from + 4;
 root = node_new_root();
 if (adr->adr_prefix[0] == '\0' || strcmp(adr->adr_prefix, "/") == 0) {





  parent = root;
  key = checked_strdup(adr->adr_path);
 } else {



  parent = node_new_map(root, checked_strdup(adr->adr_prefix),
      ((void*)0), checked_strdup(map),
      checked_strdup("[kernel request]"), lineno);

  if (adr->adr_key[0] == '\0')
   key = ((void*)0);
  else
   key = checked_strdup(adr->adr_key);
 }
 parse_map(parent, map, key, &wildcards);
 if (!wildcards)
  wildcards = node_has_wildcards(parent);
 if (wildcards)
  log_debugx("map may contain wildcard entries");
 else
  log_debugx("map does not contain wildcard entries");

 if (key != ((void*)0))
  node_expand_wildcard(root, key);

 node = node_find(root, adr->adr_path);
 if (node == ((void*)0)) {
  log_errx(1, "map %s does not contain key for \"%s\"; "
      "failing mount", map, adr->adr_path);
 }

 options = node_options(node);




 options = concat(options, ',', adr->adr_options);




 options = concat(cmdline_options, ',', options);

 if (node->n_location == ((void*)0)) {
  log_debugx("found node defined at %s:%d; not a mountpoint",
      node->n_config_file, node->n_config_line);

  nobrowse = pick_option("nobrowse", &options);
  if (nobrowse != ((void*)0) && key == ((void*)0)) {
   log_debugx("skipping map %s due to \"nobrowse\" "
       "option; exiting", map);
   done(0, 1);




   quick_exit(0);
  }





  create_subtree(node, incomplete_hierarchy);

  if (incomplete_hierarchy && key != ((void*)0)) {




   tmp = concat(adr->adr_path, '/', key);
   node = node_find(root, tmp);
   if (node != ((void*)0))
    create_subtree(node, 0);
  }

  log_debugx("nothing to mount; exiting");
  done(0, wildcards);




  quick_exit(0);
 }

 log_debugx("found node defined at %s:%d; it is a mountpoint",
     node->n_config_file, node->n_config_line);

 if (key != ((void*)0))
  node_expand_ampersand(node, key);
 error = node_expand_defined(node);
 if (error != 0) {
  log_errx(1, "variable expansion failed for %s; "
      "failing mount", adr->adr_path);
 }




 options = concat(options, ',', "automounted");




 pick_option("nobrowse", &options);




 fstype = pick_option("fstype=", &options);
 if (fstype == ((void*)0)) {
  log_debugx("fstype not specified in options; "
      "defaulting to \"nfs\"");
  fstype = checked_strdup("nfs");
 }

 if (strcmp(fstype, "nfs") == 0) {






  retrycnt = pick_option("retrycnt=", &options);
  if (retrycnt == ((void*)0)) {
   log_debugx("retrycnt not specified in options; "
       "defaulting to 1");
   options = concat(options, ',', "retrycnt=1");
  } else {
   options = concat(options, ',',
       concat("retrycnt", '=', retrycnt));
  }
 }

 f = auto_popen("mount", "-t", fstype, "-o", options,
     node->n_location, adr->adr_path, ((void*)0));
 assert(f != ((void*)0));
 error = auto_pclose(f);
 if (error != 0)
  log_errx(1, "mount failed");

 log_debugx("mount done; exiting");
 done(0, wildcards);




 quick_exit(0);
}
