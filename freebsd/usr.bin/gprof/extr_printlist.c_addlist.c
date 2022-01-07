
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stringlist {char* string; struct stringlist* next; } ;


 int errx (int,char*) ;
 scalar_t__ malloc (int) ;

void
addlist(struct stringlist *listp, char *funcname)
{
    struct stringlist *slp;

    slp = (struct stringlist *) malloc( sizeof(struct stringlist));
    if ( slp == (struct stringlist *) 0 )
 errx( 1 , "no room for printlist");
    slp -> next = listp -> next;
    slp -> string = funcname;
    listp -> next = slp;
}
