
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tentry_info {scalar_t__ paddr; } ;
struct ta_buf_ifidx {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int EINVAL ;
 scalar_t__ IF_NAMESIZE ;
 scalar_t__ strnlen (char*,scalar_t__) ;

__attribute__((used)) static int
ta_prepare_del_ifidx(struct ip_fw_chain *ch, struct tentry_info *tei,
    void *ta_buf)
{
 struct ta_buf_ifidx *tb;
 char *ifname;

 tb = (struct ta_buf_ifidx *)ta_buf;


 ifname = (char *)tei->paddr;
 if (strnlen(ifname, IF_NAMESIZE) == IF_NAMESIZE)
  return (EINVAL);

 return (0);
}
