
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int page_plength; int page_pwidth; int page_length; int page_width; } ;


 int LOG_WARNING ;
 char* checkremote (struct printer*) ;
 int free (char*) ;
 int * length ;
 int * pxlength ;
 int * pxwidth ;
 int sprintf (int *,char*,int ) ;
 int syslog (int ,char*,char*) ;
 int * width ;

__attribute__((used)) static void
init(struct printer *pp)
{
 char *s;

 sprintf(&width[2], "%ld", pp->page_width);
 sprintf(&length[2], "%ld", pp->page_length);
 sprintf(&pxwidth[2], "%ld", pp->page_pwidth);
 sprintf(&pxlength[2], "%ld", pp->page_plength);
 if ((s = checkremote(pp)) != ((void*)0)) {
  syslog(LOG_WARNING, "%s", s);
  free(s);
 }
}
