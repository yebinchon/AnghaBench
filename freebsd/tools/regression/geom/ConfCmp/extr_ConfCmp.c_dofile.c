
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; } ;
struct mytree {TYPE_1__* top; TYPE_1__* cur; } ;
typedef int XML_Parser ;
struct TYPE_2__ {char* name; int cont; int key; struct TYPE_2__* parent; } ;


 int CharData ;
 int EndElement ;
 int MAP_NOCORE ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int StartElement ;
 int XML_Parse (int ,char*,int ,int) ;
 int XML_ParserCreate (int *) ;
 int XML_ParserFree (int ) ;
 int XML_SetCharacterDataHandler (int ,int ) ;
 int XML_SetElementHandler (int ,int ,int ) ;
 int XML_SetUserData (int ,struct mytree*) ;
 struct mytree* calloc (int,int) ;
 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*,int) ;
 int fstat (int,struct stat*) ;
 char* mmap (int *,int ,int ,int,int,int ) ;
 int munmap (char*,int ) ;
 TYPE_1__* new_node () ;
 int open (char*,int ) ;
 int sbuf_finish (int ) ;

__attribute__((used)) static struct mytree *
dofile(char *filename)
{
 XML_Parser parser;
 struct mytree *mt;
 struct stat st;
 int fd;
 char *p;
 int i;

 parser = XML_ParserCreate(((void*)0));
 mt = calloc(1, sizeof *mt);
 mt->top = new_node();
 mt->top->name = "(top)";
 mt->top->parent = mt->top;
 mt->cur = mt->top;
 sbuf_finish(mt->top->key);
 sbuf_finish(mt->top->cont);
 XML_SetUserData(parser, mt);
 XML_SetElementHandler(parser, StartElement, EndElement);
 XML_SetCharacterDataHandler(parser, CharData);
 fd = open(filename, O_RDONLY);
 if (fd < 0)
  err(1, filename);
 fstat(fd, &st);
 p = mmap(((void*)0), st.st_size, PROT_READ, MAP_NOCORE|MAP_PRIVATE, fd, 0);
 i = XML_Parse(parser, p, st.st_size, 1);
 if (i != 1)
  errx(1, "XML_Parse complained -> %d", i);
 munmap(p, st.st_size);
 close(fd);
 XML_ParserFree(parser);
 sbuf_finish(mt->top->cont);
 if (i)
  return (mt);
 else
  return (((void*)0));
}
