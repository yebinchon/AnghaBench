
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ginfo ;
typedef int buf ;
struct TYPE_7__ {scalar_t__ type; int flags; struct TYPE_7__* next; struct TYPE_7__* prev; struct TYPE_7__* parent; struct TYPE_7__* child; int name; } ;
typedef TYPE_1__ NODE ;
typedef int FILE ;


 scalar_t__ F_DIR ;
 int F_DONE ;
 int F_MAGIC ;
 int MAGIC ;
 int bzero (TYPE_1__*,int) ;
 TYPE_1__* calloc (int,scalar_t__) ;
 int errx (int,char*,...) ;
 scalar_t__ fgets (char*,int,int *) ;
 int fprintf (int ,char*,int,char*) ;
 scalar_t__ isspace (char) ;
 int lineno ;
 int set (char*,TYPE_1__*) ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strpbrk (char*,int ) ;
 char* strtok (char*,char*) ;
 int strunvis (int ,char*) ;
 int unset (int *,TYPE_1__*) ;

NODE *
mtree_readspec(FILE *fi)
{
 NODE *centry, *last;
 char *p;
 NODE ginfo, *root;
 int c_cur, c_next;
 char buf[2048];

 centry = last = root = ((void*)0);
 bzero(&ginfo, sizeof(ginfo));
 c_cur = c_next = 0;
 for (lineno = 1; fgets(buf, sizeof(buf), fi);
     ++lineno, c_cur = c_next, c_next = 0) {

  if (buf[0] == '\n')
   continue;


  if ((p = strchr(buf, '\n')) == ((void*)0))
   errx(1, "line %d too long", lineno);


  if (p[-1] == '\\') {
   --p;
   c_next = 1;
  }


  *p = '\0';


  for (p = buf; *p && isspace(*p); ++p);


  if (!*p || *p == '#')
   continue;




  if (c_cur) {
   set(p, centry);
   continue;
  }


  if ((p = strtok(p, "\n\t ")) == ((void*)0))
   errx(1, "line %d: missing field", lineno);

  if (p[0] == '/')
   switch(p[1]) {
   case 's':
    if (strcmp(p + 1, "set"))
     break;
    set(((void*)0), &ginfo);
    continue;
   case 'u':
    if (strcmp(p + 1, "unset"))
     break;
    unset(((void*)0), &ginfo);
    continue;
   }

  if (strchr(p, '/'))
   errx(1, "line %d: slash character in file name",
   lineno);

  if (!strcmp(p, "..")) {

   if (!root)
    goto noparent;
   if (last->type != F_DIR || last->flags & F_DONE) {
    if (last == root)
     goto noparent;
    last = last->parent;
   }
   last->flags |= F_DONE;
   continue;

noparent: errx(1, "line %d: no parent node", lineno);
  }

  if ((centry = calloc(1, sizeof(NODE) + strlen(p))) == ((void*)0))
   errx(1, "calloc");
  *centry = ginfo;

  if (strpbrk(p, "?*["))
   centry->flags |= F_MAGIC;
  if (strunvis(centry->name, p) == -1)
   errx(1, "filename %s is ill-encoded", p);
  set(((void*)0), centry);

  if (!root) {
   last = root = centry;
   root->parent = root;
  } else if (last->type == F_DIR && !(last->flags & F_DONE)) {
   centry->parent = last;
   last = last->child = centry;
  } else {
   centry->parent = last->parent;
   centry->prev = last;
   last = last->next = centry;
  }
 }
 return (root);
}
