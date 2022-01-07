
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iavf_sc {int dummy; } ;
struct iavf_mac_filter {int flags; } ;


 int ENOENT ;
 int IXL_FILTER_DEL ;
 struct iavf_mac_filter* iavf_find_mac_filter (struct iavf_sc*,int *) ;

__attribute__((used)) static int
iavf_del_mac_filter(struct iavf_sc *sc, u8 *macaddr)
{
 struct iavf_mac_filter *f;

 f = iavf_find_mac_filter(sc, macaddr);
 if (f == ((void*)0))
  return (ENOENT);

 f->flags |= IXL_FILTER_DEL;
 return (0);
}
