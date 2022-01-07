
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jobspec {char* fmtoutput; int pluralfmt; char* wanteduser; char* wantedhost; int startnum; int endrange; } ;
typedef int rangestr ;
typedef int buildstr ;




 int free (char*) ;
 void* malloc (size_t) ;
 int snprintf (char*,int,char*,int ,...) ;
 int strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;

void
format_jobspec(struct jobspec *jspec, int fmt_wanted)
{
 char rangestr[40], buildstr[200];
 const char fromuser[] = "from user ";
 const char fromhost[] = "from host ";
 size_t strsize;





 if (jspec->fmtoutput != ((void*)0)) {
  free(jspec->fmtoutput);
  jspec->fmtoutput = ((void*)0);
 }

 jspec->pluralfmt = 1;
 rangestr[0] = '\0';
 if (jspec->startnum >= 0) {
  if (jspec->startnum != jspec->endrange)
   snprintf(rangestr, sizeof(rangestr), "%ld-%ld",
       jspec->startnum, jspec->endrange);
  else {
   jspec->pluralfmt = 0;
   snprintf(rangestr, sizeof(rangestr), "%ld",
       jspec->startnum);
  }
 }

 strsize = sizeof(buildstr);
 buildstr[0] = '\0';
 switch (fmt_wanted) {
 case 129:

  if (jspec->wanteduser != ((void*)0))
   strlcat(buildstr, jspec->wanteduser, strsize);
  if (rangestr[0] != '\0') {
   if (buildstr[0] != '\0')
    strlcat(buildstr, ":", strsize);
   strlcat(buildstr, rangestr, strsize);
  }
  if (jspec->wantedhost != ((void*)0))
    strlcat(buildstr, "@", strsize);


  strsize = strlen(buildstr) + 1;
  if (jspec->wantedhost != ((void*)0))
   strsize += strlen(jspec->wantedhost);
  jspec->fmtoutput = malloc(strsize);


  strlcpy(jspec->fmtoutput, buildstr, strsize);
  if (jspec->wantedhost != ((void*)0))
   strlcat(jspec->fmtoutput, jspec->wantedhost, strsize);
  break;

 case 128:
 default:

  strlcat(buildstr, rangestr, strsize);
  if (jspec->wanteduser != ((void*)0)) {
   if (rangestr[0] != '\0')
    strlcat(buildstr, " ", strsize);
   strlcat(buildstr, fromuser, strsize);
   strlcat(buildstr, jspec->wanteduser, strsize);
  }
  if (jspec->wantedhost != ((void*)0)) {
   if (jspec->wanteduser == ((void*)0)) {
    if (rangestr[0] != '\0')
     strlcat(buildstr, " ", strsize);
    strlcat(buildstr, fromhost, strsize);
   } else
    strlcat(buildstr, "@", strsize);
  }


  strsize = strlen(buildstr) + 1;
  if (jspec->wantedhost != ((void*)0))
   strsize += strlen(jspec->wantedhost);
  jspec->fmtoutput = malloc(strsize);


  strlcpy(jspec->fmtoutput, buildstr, strsize);
  if (jspec->wantedhost != ((void*)0))
   strlcat(jspec->fmtoutput, jspec->wantedhost, strsize);
  break;
 }
}
