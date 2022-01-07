
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct prison* cr_prison; } ;
struct prison {int pr_mtx; int pr_hostname; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct prison prison0 ;
 int strlcpy (char*,int ,size_t) ;

void
getcredhostname(struct ucred *cred, char *buf, size_t size)
{
 struct prison *pr;





 pr = (cred != ((void*)0)) ? cred->cr_prison : &prison0;
 mtx_lock(&pr->pr_mtx);
 strlcpy(buf, pr->pr_hostname, size);
 mtx_unlock(&pr->pr_mtx);
}
