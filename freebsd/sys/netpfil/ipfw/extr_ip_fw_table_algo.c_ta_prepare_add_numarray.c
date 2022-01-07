
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tentry_info {scalar_t__ paddr; } ;
struct TYPE_2__ {int number; } ;
struct ta_buf_numarray {TYPE_1__ na; } ;
struct ip_fw_chain {int dummy; } ;



__attribute__((used)) static int
ta_prepare_add_numarray(struct ip_fw_chain *ch, struct tentry_info *tei,
    void *ta_buf)
{
 struct ta_buf_numarray *tb;

 tb = (struct ta_buf_numarray *)ta_buf;

 tb->na.number = *((uint32_t *)tei->paddr);

 return (0);
}
