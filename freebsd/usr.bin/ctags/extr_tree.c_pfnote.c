
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int nbuf ;
struct TYPE_7__ {char* file; int lno; void* pat; scalar_t__ right; scalar_t__ left; void* entry; } ;
typedef TYPE_1__ NODE ;


 char EOS ;
 int MAXTOKEN ;
 int add_node (TYPE_1__*,TYPE_1__*) ;
 char* curfile ;
 int err (int,int *) ;
 int errx (int,char*) ;
 int free_tree (TYPE_1__*) ;
 TYPE_1__* head ;
 char const* lbuf ;
 scalar_t__ malloc (int) ;
 int put_entries (TYPE_1__*) ;
 int snprintf (char*,int,char*,char*) ;
 int strcmp (char const*,char*) ;
 void* strdup (char const*) ;
 char* strrchr (char*,char) ;
 int warnx (char*) ;
 int xflag ;

void
pfnote(const char *name, int ln)
{
 NODE *np;
 char *fp;
 char nbuf[MAXTOKEN];


 if (!(np = (NODE *)malloc(sizeof(NODE)))) {
  warnx("too many entries to sort");
  put_entries(head);
  free_tree(head);

  if (!(head = np = (NODE *)malloc(sizeof(NODE))))
   errx(1, "out of space");
 }
 if (!xflag && !strcmp(name, "main")) {
  if (!(fp = strrchr(curfile, '/')))
   fp = curfile;
  else
   ++fp;
  (void)snprintf(nbuf, sizeof(nbuf), "M%s", fp);
  fp = strrchr(nbuf, '.');
  if (fp && !fp[2])
   *fp = EOS;
  name = nbuf;
 }
 if (!(np->entry = strdup(name)))
  err(1, ((void*)0));
 np->file = curfile;
 np->lno = ln;
 np->left = np->right = 0;
 if (!(np->pat = strdup(lbuf)))
  err(1, ((void*)0));
 if (!head)
  head = np;
 else
  add_node(np, head);
}
