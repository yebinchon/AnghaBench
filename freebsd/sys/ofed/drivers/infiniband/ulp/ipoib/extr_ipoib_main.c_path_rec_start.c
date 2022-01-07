
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; } ;
struct ib_sa_path_rec {int mtu; TYPE_1__ dgid; int mtu_selector; } ;
struct ipoib_path {scalar_t__ query_id; int done; int * query; struct ib_sa_path_rec pathrec; } ;
struct ipoib_dev_priv {int port; int ca; struct ifnet* dev; } ;
struct ifnet {scalar_t__ if_mtu; } ;
typedef int ib_sa_comp_mask ;


 int GFP_ATOMIC ;
 int IB_MTU_1024 ;
 int IB_MTU_2048 ;
 int IB_MTU_256 ;
 int IB_MTU_512 ;
 int IB_SA_GT ;
 int IB_SA_PATH_REC_DGID ;
 int IB_SA_PATH_REC_MTU ;
 int IB_SA_PATH_REC_MTU_SELECTOR ;
 int IB_SA_PATH_REC_NUMB_PATH ;
 int IB_SA_PATH_REC_PKEY ;
 int IB_SA_PATH_REC_SGID ;
 int IB_SA_PATH_REC_TRAFFIC_CLASS ;
 scalar_t__ IPOIB_ENCAP_LEN ;
 int complete (int *) ;
 int ib_mtu_enum_to_int (int ) ;
 scalar_t__ ib_sa_path_rec_get (int *,int ,int ,struct ib_sa_path_rec*,int,int,int ,int ,struct ipoib_path*,int **) ;
 int init_completion (int *) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,int ,char*,int ) ;
 int ipoib_sa_client ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,scalar_t__) ;
 int path_rec_completion ;
 int roundup_pow_of_two (scalar_t__) ;

__attribute__((used)) static int
path_rec_start(struct ipoib_dev_priv *priv, struct ipoib_path *path)
{
 struct ifnet *dev = priv->dev;

 ib_sa_comp_mask comp_mask = IB_SA_PATH_REC_MTU_SELECTOR | IB_SA_PATH_REC_MTU;
 struct ib_sa_path_rec p_rec;

 p_rec = path->pathrec;
 p_rec.mtu_selector = IB_SA_GT;

 switch (roundup_pow_of_two(dev->if_mtu + IPOIB_ENCAP_LEN)) {
 case 512:
  p_rec.mtu = IB_MTU_256;
  break;
 case 1024:
  p_rec.mtu = IB_MTU_512;
  break;
 case 2048:
  p_rec.mtu = IB_MTU_1024;
  break;
 case 4096:
  p_rec.mtu = IB_MTU_2048;
  break;
 default:

  comp_mask = 0;
  p_rec.mtu = 0;
  p_rec.mtu_selector = 0;
 }

 ipoib_dbg(priv, "Start path record lookup for %16D MTU > %d\n",
    p_rec.dgid.raw, ":",
    comp_mask ? ib_mtu_enum_to_int(p_rec.mtu) : 0);

 init_completion(&path->done);

 path->query_id =
  ib_sa_path_rec_get(&ipoib_sa_client, priv->ca, priv->port,
       &p_rec, comp_mask |
       IB_SA_PATH_REC_DGID |
       IB_SA_PATH_REC_SGID |
       IB_SA_PATH_REC_NUMB_PATH |
       IB_SA_PATH_REC_TRAFFIC_CLASS |
       IB_SA_PATH_REC_PKEY,
       1000, GFP_ATOMIC,
       path_rec_completion,
       path, &path->query);
 if (path->query_id < 0) {
  ipoib_warn(priv, "ib_sa_path_rec_get failed: %d\n", path->query_id);
  path->query = ((void*)0);
  complete(&path->done);
  return path->query_id;
 }

 return 0;
}
