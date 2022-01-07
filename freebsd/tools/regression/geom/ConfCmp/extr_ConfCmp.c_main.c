
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mytree {int top; } ;


 int compare_node (int ,int ,int ) ;
 struct mytree* dofile (char*) ;
 int errx (int,char*,char*) ;
 int fopen (char*,char*) ;
 int fsubs ;
 int setbuf (int ,int *) ;
 int sort_node (int ) ;
 int stderr ;
 int stdout ;

int
main(int argc, char **argv)
{
 struct mytree *t1, *t2;
 int i;

 fsubs = fopen("_.subs", "w");
 setbuf(stdout, ((void*)0));
 setbuf(stderr, ((void*)0));
 if (argc != 3)
  errx(1, "usage: %s file1 file2", argv[0]);

 t1 = dofile(argv[1]);
 if (t1 == ((void*)0))
  errx(2, "XML parser error on file %s", argv[1]);
 sort_node(t1->top);
 t2 = dofile(argv[2]);
 if (t2 == ((void*)0))
  errx(2, "XML parser error on file %s", argv[2]);
 sort_node(t2->top);
 i = compare_node(t1->top, t2->top, 0);
 return (i);
}
