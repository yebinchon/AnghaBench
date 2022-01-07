
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {scalar_t__ origin; } ;
struct refspec_item {char* src; scalar_t__ matching; scalar_t__ pattern; } ;
struct refspec {int nr; struct refspec_item* items; } ;
struct ref {int dummy; } ;
struct object_id {int dummy; } ;


 struct refspec REFSPEC_INIT_PUSH ;
 scalar_t__ REMOTE_UNCONFIGURED ;
 int _ (char*) ;
 int count_refspec_match (char*,struct ref*,int *) ;
 int die (char*,...) ;
 int free (char*) ;
 struct ref* get_local_heads () ;
 struct remote* pushremote_get (char const*) ;
 int refspec_appendn (struct refspec*,char const**,int) ;
 int refspec_clear (struct refspec*) ;
 char* resolve_refdup (char*,int ,struct object_id*,int *) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int push_check(int argc, const char **argv, const char *prefix)
{
 struct remote *remote;
 const char *superproject_head;
 char *head;
 int detached_head = 0;
 struct object_id head_oid;

 if (argc < 3)
  die("submodule--helper push-check requires at least 2 arguments");






 superproject_head = argv[1];
 argv++;
 argc--;

 head = resolve_refdup("HEAD", 0, &head_oid, ((void*)0));
 if (!head)
  die(_("Failed to resolve HEAD as a valid ref."));
 if (!strcmp(head, "HEAD"))
  detached_head = 1;





 remote = pushremote_get(argv[1]);
 if (!remote || remote->origin == REMOTE_UNCONFIGURED)
  die("remote '%s' not configured", argv[1]);


 if (argc > 2) {
  int i;
  struct ref *local_refs = get_local_heads();
  struct refspec refspec = REFSPEC_INIT_PUSH;

  refspec_appendn(&refspec, argv + 2, argc - 2);

  for (i = 0; i < refspec.nr; i++) {
   const struct refspec_item *rs = &refspec.items[i];

   if (rs->pattern || rs->matching)
    continue;


   switch (count_refspec_match(rs->src, local_refs, ((void*)0))) {
   case 1:
    break;
   case 0:





    if (!strcmp(rs->src, "HEAD")) {
     if (!detached_head &&
         !strcmp(head, superproject_head))
      break;
     die("HEAD does not match the named branch in the superproject");
    }

   default:
    die("src refspec '%s' must name a ref",
        rs->src);
   }
  }
  refspec_clear(&refspec);
 }
 free(head);

 return 0;
}
