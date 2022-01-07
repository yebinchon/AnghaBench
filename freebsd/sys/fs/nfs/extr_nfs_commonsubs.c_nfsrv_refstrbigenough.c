
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int M_NFSSTRING ;
 int M_WAITOK ;
 int NFSBCOPY (int *,int *,int) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;

__attribute__((used)) static void
nfsrv_refstrbigenough(int siz, u_char **cpp, u_char **cpp2, int *slenp)
{
 u_char *cp;
 int i;

 if (siz <= *slenp)
  return;
 cp = malloc(siz + 1024, M_NFSSTRING, M_WAITOK);
 NFSBCOPY(*cpp, cp, *slenp);
 free(*cpp, M_NFSSTRING);
 i = *cpp2 - *cpp;
 *cpp = cp;
 *cpp2 = cp + i;
 *slenp = siz + 1024;
}
