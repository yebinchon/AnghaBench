
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct hostent {int * h_addr_list; } ;


 int RESTRICTED_SERVERS ;
 int YPSET_NO ;
 int bcopy (int ,int *,int) ;
 char* domain_name ;
 struct hostent* gethostbyname (char*) ;
 int * restricted_addrs ;
 char* strsep (char**,char*) ;
 int yp_restricted ;
 int ypsetmode ;

void
yp_restricted_mode(char *args)
{
 struct hostent *h;
 int i = 0;
 char *s;


 if ((s = strsep(&args, ",")) == ((void*)0))
  return;
 domain_name = s;


 while ((s = strsep(&args, ",")) != ((void*)0) && i < RESTRICTED_SERVERS) {
  if ((h = gethostbyname(s)) == ((void*)0))
   return;
  bcopy (h->h_addr_list[0], &restricted_addrs[i],
      sizeof(struct in_addr));
  i++;
 }


 ypsetmode = YPSET_NO;

 yp_restricted = i;
 return;
}
