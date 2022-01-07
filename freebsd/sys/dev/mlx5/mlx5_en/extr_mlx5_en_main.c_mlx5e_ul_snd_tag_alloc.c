
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ flowtype; int flowid; } ;
union if_snd_tag_alloc_params {TYPE_2__ hdr; } ;
typedef int u32 ;
struct TYPE_5__ {int num_channels; } ;
struct mlx5e_priv {struct mlx5e_channel* channel; TYPE_1__ params; scalar_t__ gone; } ;
struct m_snd_tag {int dummy; } ;
struct TYPE_8__ {struct m_snd_tag m_snd_tag; } ;
struct mlx5e_channel {TYPE_4__ tag; TYPE_3__* sq; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;
struct TYPE_7__ {scalar_t__ running; } ;


 int ENXIO ;
 int EOPNOTSUPP ;
 scalar_t__ M_HASHTYPE_NONE ;
 int m_snd_tag_ref (struct m_snd_tag*) ;
 scalar_t__ rss_hash2bucket (int,scalar_t__,int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
mlx5e_ul_snd_tag_alloc(struct ifnet *ifp,
    union if_snd_tag_alloc_params *params,
    struct m_snd_tag **ppmt)
{
 struct mlx5e_priv *priv;
 struct mlx5e_channel *pch;

 priv = ifp->if_softc;

 if (unlikely(priv->gone || params->hdr.flowtype == M_HASHTYPE_NONE)) {
  return (EOPNOTSUPP);
 } else {

  u32 ch = priv->params.num_channels;
   ch = (params->hdr.flowid % 128) % ch;







  pch = priv->channel + ch;


  if (unlikely(pch->sq[0].running == 0))
   return (ENXIO);
  m_snd_tag_ref(&pch->tag.m_snd_tag);
  *ppmt = &pch->tag.m_snd_tag;
  return (0);
 }
}
