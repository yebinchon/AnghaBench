
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct rdnss_addr {int ra_dns; } ;
struct rdnss {int rd_ltime; } ;
typedef int ntopbuf ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int SSBUFLEN ;
 char* inet_ntop (int ,int *,char*,int) ;
 int printf (char*,char*,char*) ;
 char* sec2str (int ,char*) ;

__attribute__((used)) static int
action_show_rdnss(void *msg)
{
 struct rdnss *rdn;
 struct rdnss_addr *rda;
 uint16_t *rdn_cnt;
 uint16_t *rda_cnt;
 int i;
 int j;
 char *p;
 uint32_t ltime;
 char ntopbuf[INET6_ADDRSTRLEN];
 char ssbuf[SSBUFLEN];

 p = msg;
 rdn_cnt = (uint16_t *)p;
 p += sizeof(*rdn_cnt);

 if (*rdn_cnt > 0) {
  for (i = 0; i < *rdn_cnt; i++) {
   rdn = (struct rdnss *)p;
   ltime = rdn->rd_ltime;
   p += sizeof(*rdn);

   rda_cnt = (uint16_t *)p;
   p += sizeof(*rda_cnt);
   if (*rda_cnt > 0)
    for (j = 0; j < *rda_cnt; j++) {
     rda = (struct rdnss_addr *)p;
     printf("\t  %s (ltime=%s)\n",
         inet_ntop(AF_INET6,
      &rda->ra_dns,
      ntopbuf,
      sizeof(ntopbuf)),
         sec2str(ltime, ssbuf));
     p += sizeof(*rda);
    }
  }
 }

 return (0);
}
