
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ether_addr {int octet; } ;
struct ath_ratestats {int dummy; } ;


 int STATS_BUF_SIZE ;
 int ath_rate_ioctl (struct ath_ratestats*) ;
 int ath_setsta (struct ath_ratestats*,int ) ;
 int memset (int *,char,int ) ;
 int rate_node_stats (struct ath_ratestats*,struct ether_addr*) ;

__attribute__((used)) static void
fetch_and_print_stats(struct ath_ratestats *r, struct ether_addr *e,
    uint8_t *buf)
{


 memset(buf, '\0', STATS_BUF_SIZE);




 ath_setsta(r, e->octet);




 ath_rate_ioctl(r);




 rate_node_stats(r, e);
}
