
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ recursed; void* www; int n_rdep; void* rdep; int n_bdep; void* bdep; int n_fdep; void* fdep; int n_pdep; void* pdep; int n_edep; void* edep; void* categories; void* maintainer; void* pkgdescr; void* comment; void* prefix; void* portdir; void* pkgname; } ;
typedef TYPE_1__ PORT ;


 int err (int,char*) ;
 int errx (int,char*,char*) ;
 void* makelist (int ,int *) ;
 TYPE_1__* malloc (int) ;
 void* strdup2 (int ) ;
 int strsep (char**,char*) ;

__attribute__((used)) static PORT *
portify(char * line)
{
 PORT * p;
 size_t i, n;


 for (n = i = 0; line[i] != 0; i++)
  if (line[i] == '|')
   n++;
 if (n != 12)
  errx(1, "Port describe line is corrupt:\n%s\n", line);

 p = malloc(sizeof(PORT));
 if (p == ((void*)0))
  err(1, "malloc(PORT)");

 p->pkgname = strdup2(strsep(&line, "|"));
 p->portdir = strdup2(strsep(&line, "|"));
 p->prefix = strdup2(strsep(&line, "|"));
 p->comment = strdup2(strsep(&line, "|"));
 p->pkgdescr = strdup2(strsep(&line, "|"));
 p->maintainer = strdup2(strsep(&line, "|"));
 p->categories = strdup2(strsep(&line, "|"));
 p->edep = makelist(strsep(&line, "|"), &p->n_edep);
 p->pdep = makelist(strsep(&line, "|"), &p->n_pdep);
 p->fdep = makelist(strsep(&line, "|"), &p->n_fdep);
 p->bdep = makelist(strsep(&line, "|"), &p->n_bdep);
 p->rdep = makelist(strsep(&line, "|"), &p->n_rdep);
 p->www = strdup2(strsep(&line, "|"));

 p->recursed = 0;






 return p;
}
