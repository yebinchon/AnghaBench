
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef int fsnode ;
struct TYPE_5__ {scalar_t__ type; int name; } ;
typedef TYPE_1__ NODE ;
typedef int FILE ;


 int DEBUG_APPLY_SPECFILE ;
 scalar_t__ EOF ;
 scalar_t__ F_DIR ;
 int TIMER_RESULTS (struct timeval,char*) ;
 int TIMER_START (struct timeval) ;
 int apply_specdir (char const*,TYPE_1__*,int *,int) ;
 int assert (int) ;
 int debug ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free_nodes (TYPE_1__*) ;
 int printf (char*,char const*,char const*,int *) ;
 TYPE_1__* spec (int *) ;
 scalar_t__ strcmp (int ,char*) ;

void
apply_specfile(const char *specfile, const char *dir, fsnode *parent, int speconly)
{
 struct timeval start;
 FILE *fp;
 NODE *root;

 assert(specfile != ((void*)0));
 assert(parent != ((void*)0));

 if (debug & DEBUG_APPLY_SPECFILE)
  printf("apply_specfile: %s, %s %p\n", specfile, dir, parent);


 if ((fp = fopen(specfile, "r")) == ((void*)0))
  err(1, "Can't open `%s'", specfile);
 TIMER_START(start);
 root = spec(fp);
 TIMER_RESULTS(start, "spec");
 if (fclose(fp) == EOF)
  err(1, "Can't close `%s'", specfile);


 if (root == ((void*)0))
  errx(1, "Specfile `%s' did not contain a tree", specfile);
 assert(strcmp(root->name, ".") == 0);
 assert(root->type == F_DIR);


 apply_specdir(dir, root, parent, speconly);

 free_nodes(root);
}
