
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int macaddr; } ;
struct TYPE_4__ {TYPE_1__ is_u; } ;
struct ath_ratestats {TYPE_2__ re; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
ath_setsta(struct ath_ratestats *r, uint8_t *mac)
{

 memcpy(&r->re.is_u.macaddr, mac, sizeof(r->re.is_u.macaddr));
}
