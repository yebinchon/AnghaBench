
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_directory {int path; } ;


 int printf (char*) ;
 int putchar (char) ;
 int quote_c_style (int ,int *,int ,int ) ;
 int stdout ;

__attribute__((used)) static int print_alternate(struct object_directory *odb, void *data)
{
 printf("alternate: ");
 quote_c_style(odb->path, ((void*)0), stdout, 0);
 putchar('\n');
 return 0;
}
