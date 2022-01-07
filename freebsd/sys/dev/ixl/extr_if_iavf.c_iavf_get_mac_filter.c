
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_sc {int mac_filters; } ;
struct iavf_mac_filter {int dummy; } ;


 int M_IAVF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SLIST_INSERT_HEAD (int ,struct iavf_mac_filter*,int ) ;
 struct iavf_mac_filter* malloc (int,int ,int) ;
 int next ;

__attribute__((used)) static struct iavf_mac_filter *
iavf_get_mac_filter(struct iavf_sc *sc)
{
 struct iavf_mac_filter *f;

 f = malloc(sizeof(struct iavf_mac_filter),
     M_IAVF, M_NOWAIT | M_ZERO);
 if (f)
  SLIST_INSERT_HEAD(sc->mac_filters, f, next);

 return (f);
}
