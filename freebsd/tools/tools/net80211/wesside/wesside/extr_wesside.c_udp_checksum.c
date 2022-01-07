
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ippseudo {unsigned char ippseudo_src; unsigned char ippseudo_dst; int ippseudo_len; int ippseudo_p; scalar_t__ ippseudo_pad; } ;
typedef unsigned char in_addr ;


 int IPPROTO_UDP ;
 int err (int,char*) ;
 int htons (int) ;
 unsigned int in_cksum (unsigned short*,int) ;
 scalar_t__ malloc (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

unsigned int udp_checksum(unsigned char *stuff, int len, struct in_addr *sip,
                          struct in_addr *dip) {
        unsigned char *tmp;
        struct ippseudo *ph;

        tmp = (unsigned char*) malloc(len + sizeof(struct ippseudo));
        if(!tmp)
  err(1, "malloc()");

        ph = (struct ippseudo*) tmp;

        memcpy(&ph->ippseudo_src, sip, 4);
        memcpy(&ph->ippseudo_dst, dip, 4);
        ph->ippseudo_pad = 0;
        ph->ippseudo_p = IPPROTO_UDP;
        ph->ippseudo_len = htons(len);

        memcpy(tmp + sizeof(struct ippseudo), stuff, len);

        return in_cksum((unsigned short*)tmp, len+sizeof(struct ippseudo));
}
