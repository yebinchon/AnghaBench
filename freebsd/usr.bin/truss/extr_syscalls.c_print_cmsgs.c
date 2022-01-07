
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {scalar_t__ msg_controllen; char* msg_control; } ;
struct cmsghdr {int cmsg_level; int cmsg_type; scalar_t__ cmsg_len; } ;
typedef scalar_t__ socklen_t ;
typedef int pid_t ;
typedef int FILE ;


 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;

 char* calloc (int,scalar_t__) ;
 int fprintf (int *,char*,...) ;
 int fputs (char const*,int *) ;
 int free (char*) ;
 int get_struct (int ,uintptr_t,char*,scalar_t__) ;
 int print_gen_cmsg (int *,struct cmsghdr*) ;
 int print_integer_arg (int ,int *,int) ;
 int print_pointer (int *,uintptr_t) ;
 int print_sctp_cmsg (int *,int,struct cmsghdr*) ;
 char* sysdecode_cmsg_type (int,int) ;
 int sysdecode_sockopt_level ;

__attribute__((used)) static void
print_cmsgs(FILE *fp, pid_t pid, bool receive, struct msghdr *msghdr)
{
 struct cmsghdr *cmsghdr;
 char *cmsgbuf;
 const char *temp;
 socklen_t len;
 int level, type;
 bool first;

 len = msghdr->msg_controllen;
 if (len == 0) {
  fputs("{}", fp);
  return;
 }
 cmsgbuf = calloc(1, len);
 if (get_struct(pid, (uintptr_t)msghdr->msg_control, cmsgbuf, len) == -1) {
  print_pointer(fp, (uintptr_t)msghdr->msg_control);
  free(cmsgbuf);
  return;
 }
 msghdr->msg_control = cmsgbuf;
 first = 1;
 fputs("{", fp);
 for (cmsghdr = CMSG_FIRSTHDR(msghdr);
    cmsghdr != ((void*)0);
    cmsghdr = CMSG_NXTHDR(msghdr, cmsghdr)) {
  level = cmsghdr->cmsg_level;
  type = cmsghdr->cmsg_type;
  len = cmsghdr->cmsg_len;
  fprintf(fp, "%s{level=", first ? "" : ",");
  print_integer_arg(sysdecode_sockopt_level, fp, level);
  fputs(",type=", fp);
  temp = sysdecode_cmsg_type(level, type);
  if (temp) {
   fputs(temp, fp);
  } else {
   fprintf(fp, "%d", type);
  }
  fputs(",data=", fp);
  switch (level) {
  case 128:
   print_sctp_cmsg(fp, receive, cmsghdr);
   break;
  default:
   print_gen_cmsg(fp, cmsghdr);
   break;
  }
  fputs("}", fp);
  first = 0;
 }
 fputs("}", fp);
 free(cmsgbuf);
}
