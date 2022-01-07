
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct cmsghdr {int cmsg_len; } ;
typedef int FILE ;


 int* CMSG_DATA (struct cmsghdr*) ;
 int fprintf (int *,char*,char*,int) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
print_gen_cmsg(FILE *fp, struct cmsghdr *cmsghdr)
{
 u_char *q;

 fputs("{", fp);
 for (q = CMSG_DATA(cmsghdr);
      q < (u_char *)cmsghdr + cmsghdr->cmsg_len; q++) {
  fprintf(fp, "%s0x%02x", q == CMSG_DATA(cmsghdr) ? "" : ",", *q);
 }
 fputs("}", fp);
}
