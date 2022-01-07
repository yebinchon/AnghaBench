
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stringlist {int string; struct stringlist* next; } ;


 int FALSE ;
 int TRUE ;
 int strcmp (int ,char const*) ;

bool
onlist(struct stringlist *listp, const char *funcname)
{
    struct stringlist *slp;

    for ( slp = listp -> next ; slp ; slp = slp -> next ) {
 if ( ! strcmp( slp -> string , funcname ) ) {
     return TRUE;
 }
 if ( funcname[0] == '_' && ! strcmp( slp -> string , &funcname[1] ) ) {
     return TRUE;
 }
    }
    return FALSE;
}
