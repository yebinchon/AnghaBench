
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ippseudo {unsigned char ippseudo_src; unsigned char ippseudo_dst; int ippseudo_len; int ippseudo_p; scalar_t__ ippseudo_pad; } ;
typedef unsigned char in_addr ;


 int IPPROTO_UDP ;
 int exit (int) ;
 int htons (int) ;
 unsigned int in_cksum (unsigned short*,int) ;
 scalar_t__ malloc (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int perror (char*) ;

unsigned int udp_checksum(unsigned char *stuff0, int len, struct in_addr *sip,
                          struct in_addr *dip) {
        unsigned char *stuff;
        struct ippseudo *ph;

        stuff = (unsigned char*) malloc(len + sizeof(struct ippseudo));
        if(!stuff) {
                perror("malloc()");
                exit(1);
        }

        ph = (struct ippseudo*) stuff;

        memcpy(&ph->ippseudo_src, sip, 4);
        memcpy(&ph->ippseudo_dst, dip, 4);
        ph->ippseudo_pad = 0;
        ph->ippseudo_p = IPPROTO_UDP;
        ph->ippseudo_len = htons(len);

        memcpy(stuff + sizeof(struct ippseudo), stuff0, len);

        return in_cksum((unsigned short*)stuff, len+sizeof(struct ippseudo));
}
