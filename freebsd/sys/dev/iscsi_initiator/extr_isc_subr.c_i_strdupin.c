
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_ISC ;
 int M_WAITOK ;
 int bcopy (char*,char*,size_t) ;
 scalar_t__ copyinstr (char*,char*,size_t,size_t*) ;
 int free (char*,int ) ;
 char* malloc (size_t,int ,int ) ;

__attribute__((used)) static char *
i_strdupin(char *s, size_t maxlen)
{
     size_t len;
     char *p, *q;

     p = malloc(maxlen, M_ISC, M_WAITOK);
     if(copyinstr(s, p, maxlen, &len)) {
   free(p, M_ISC);
   return ((void*)0);
     }
     q = malloc(len, M_ISC, M_WAITOK);
     bcopy(p, q, len);
     free(p, M_ISC);

     return q;
}
