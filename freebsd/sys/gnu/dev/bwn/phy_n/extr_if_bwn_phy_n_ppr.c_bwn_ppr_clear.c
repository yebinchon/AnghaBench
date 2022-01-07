
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bwn_ppr {int dummy; } ;
struct bwn_mac {int dummy; } ;


 int BWN_PPR_RATES_NUM ;
 int CTASSERT (int) ;
 int memset (struct bwn_ppr*,int ,int) ;

void bwn_ppr_clear(struct bwn_mac *mac, struct bwn_ppr *ppr)
{
 memset(ppr, 0, sizeof(*ppr));


 CTASSERT(sizeof(struct bwn_ppr) == BWN_PPR_RATES_NUM * sizeof(uint8_t));
}
