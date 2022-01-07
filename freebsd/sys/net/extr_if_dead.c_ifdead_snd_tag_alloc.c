
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union if_snd_tag_alloc_params {int dummy; } if_snd_tag_alloc_params ;
struct m_snd_tag {int dummy; } ;
struct ifnet {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
ifdead_snd_tag_alloc(struct ifnet *ifp, union if_snd_tag_alloc_params *params,
    struct m_snd_tag **ppmt)
{
 return (EOPNOTSUPP);
}
