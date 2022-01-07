
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_sndrcvinfo {int dummy; } ;
struct sctp_sndinfo {int dummy; } ;
struct sctp_rcvinfo {int dummy; } ;
struct sctp_prinfo {int dummy; } ;
struct sctp_nxtinfo {int dummy; } ;
struct sctp_initmsg {int dummy; } ;
struct sctp_extrcvinfo {int dummy; } ;
struct sctp_authinfo {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct cmsghdr {int cmsg_type; int cmsg_len; } ;
typedef int socklen_t ;
typedef int FILE ;


 void* CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int) ;
 int print_gen_cmsg (int *,struct cmsghdr*) ;
 int print_sctp_authinfo (int *,struct sctp_authinfo*) ;
 int print_sctp_extrcvinfo (int *,struct sctp_extrcvinfo*) ;
 int print_sctp_initmsg (int *,struct sctp_initmsg*) ;
 int print_sctp_ipv4_addr (int *,struct in_addr*) ;
 int print_sctp_ipv6_addr (int *,struct in6_addr*) ;
 int print_sctp_nxtinfo (int *,struct sctp_nxtinfo*) ;
 int print_sctp_prinfo (int *,struct sctp_prinfo*) ;
 int print_sctp_rcvinfo (int *,struct sctp_rcvinfo*) ;
 int print_sctp_sndinfo (int *,struct sctp_sndinfo*) ;
 int print_sctp_sndrcvinfo (int *,int,struct sctp_sndrcvinfo*) ;

__attribute__((used)) static void
print_sctp_cmsg(FILE *fp, bool receive, struct cmsghdr *cmsghdr)
{
 void *data;
 socklen_t len;

 len = cmsghdr->cmsg_len;
 data = CMSG_DATA(cmsghdr);
 switch (cmsghdr->cmsg_type) {
 case 133:
  if (len == CMSG_LEN(sizeof(struct sctp_initmsg)))
   print_sctp_initmsg(fp, (struct sctp_initmsg *)data);
  else
   print_gen_cmsg(fp, cmsghdr);
  break;
 case 128:
  if (len == CMSG_LEN(sizeof(struct sctp_sndrcvinfo)))
   print_sctp_sndrcvinfo(fp, receive,
       (struct sctp_sndrcvinfo *)data);
  else
   print_gen_cmsg(fp, cmsghdr);
  break;
 case 129:
  if (len == CMSG_LEN(sizeof(struct sctp_sndinfo)))
   print_sctp_sndinfo(fp, (struct sctp_sndinfo *)data);
  else
   print_gen_cmsg(fp, cmsghdr);
  break;
 case 130:
  if (len == CMSG_LEN(sizeof(struct sctp_rcvinfo)))
   print_sctp_rcvinfo(fp, (struct sctp_rcvinfo *)data);
  else
   print_gen_cmsg(fp, cmsghdr);
  break;
 case 132:
  if (len == CMSG_LEN(sizeof(struct sctp_nxtinfo)))
   print_sctp_nxtinfo(fp, (struct sctp_nxtinfo *)data);
  else
   print_gen_cmsg(fp, cmsghdr);
  break;
 case 131:
  if (len == CMSG_LEN(sizeof(struct sctp_prinfo)))
   print_sctp_prinfo(fp, (struct sctp_prinfo *)data);
  else
   print_gen_cmsg(fp, cmsghdr);
  break;
 case 137:
  if (len == CMSG_LEN(sizeof(struct sctp_authinfo)))
   print_sctp_authinfo(fp, (struct sctp_authinfo *)data);
  else
   print_gen_cmsg(fp, cmsghdr);
  break;
 case 136:
  if (len == CMSG_LEN(sizeof(struct in_addr)))
   print_sctp_ipv4_addr(fp, (struct in_addr *)data);
  else
   print_gen_cmsg(fp, cmsghdr);
  break;
 case 135:
  if (len == CMSG_LEN(sizeof(struct in6_addr)))
   print_sctp_ipv6_addr(fp, (struct in6_addr *)data);
  else
   print_gen_cmsg(fp, cmsghdr);
  break;
 default:
  print_gen_cmsg(fp, cmsghdr);
 }
}
