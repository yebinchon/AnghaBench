
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
typedef int u32 ;
struct virtchnl_rss_key {int key_len; int vsi_id; int * key; } ;
struct iavf_sc {TYPE_1__* vsi_res; int dev; } ;
struct TYPE_2__ {int vsi_id; } ;


 int ENOMEM ;
 int IXL_RSS_KEY_SIZE ;
 int M_IAVF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int VIRTCHNL_OP_CONFIG_RSS_KEY ;
 int bcopy (int *,int *,int) ;
 int device_printf (int ,char*) ;
 int free (struct virtchnl_rss_key*,int ) ;
 int iavf_dbg_vc (struct iavf_sc*,char*,int ,int) ;
 int iavf_send_pf_msg (struct iavf_sc*,int ,int *,int) ;
 int ixl_get_default_rss_key (int *) ;
 struct virtchnl_rss_key* malloc (int,int ,int) ;
 int rss_getkey (int *) ;

int
iavf_config_rss_key(struct iavf_sc *sc)
{
 struct virtchnl_rss_key *rss_key_msg;
 int msg_len, key_length;
 u8 rss_seed[IXL_RSS_KEY_SIZE];





 ixl_get_default_rss_key((u32 *)rss_seed);



 key_length = IXL_RSS_KEY_SIZE;
 msg_len = sizeof(struct virtchnl_rss_key) + (sizeof(u8) * key_length) - 1;
 rss_key_msg = malloc(msg_len, M_IAVF, M_NOWAIT | M_ZERO);
 if (rss_key_msg == ((void*)0)) {
  device_printf(sc->dev, "Unable to allocate msg memory for RSS key msg.\n");
  return (ENOMEM);
 }

 rss_key_msg->vsi_id = sc->vsi_res->vsi_id;
 rss_key_msg->key_len = key_length;
 bcopy(rss_seed, &rss_key_msg->key[0], key_length);

 iavf_dbg_vc(sc, "config_rss: vsi_id %d, key_len %d\n",
     rss_key_msg->vsi_id, rss_key_msg->key_len);

 iavf_send_pf_msg(sc, VIRTCHNL_OP_CONFIG_RSS_KEY,
     (u8 *)rss_key_msg, msg_len);

 free(rss_key_msg, M_IAVF);
 return (0);
}
