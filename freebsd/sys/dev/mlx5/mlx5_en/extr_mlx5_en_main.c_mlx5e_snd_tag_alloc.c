
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union if_snd_tag_alloc_params {TYPE_1__ hdr; } ;
struct m_snd_tag {int dummy; } ;
struct ifnet {int dummy; } ;


 int EOPNOTSUPP ;


 int mlx5e_rl_snd_tag_alloc (struct ifnet*,union if_snd_tag_alloc_params*,struct m_snd_tag**) ;
 int mlx5e_ul_snd_tag_alloc (struct ifnet*,union if_snd_tag_alloc_params*,struct m_snd_tag**) ;

__attribute__((used)) static int
mlx5e_snd_tag_alloc(struct ifnet *ifp,
    union if_snd_tag_alloc_params *params,
    struct m_snd_tag **ppmt)
{

 switch (params->hdr.type) {




 case 128:
  return (mlx5e_ul_snd_tag_alloc(ifp, params, ppmt));
 default:
  return (EOPNOTSUPP);
 }
}
