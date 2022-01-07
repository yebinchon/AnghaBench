
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct eth_rss_update_ramrod_data {int * indirection_table; int rss_engine_id; int rss_result_mask; int capabilities; int * rss_key; int rss_mode; int echo; } ;
struct ecore_raw_obj {int cid; int state; int rdata_mapping; scalar_t__ rdata; } ;
struct ecore_rss_config_obj {int * ind_table; int engine_id; struct ecore_raw_obj raw; } ;
struct ecore_config_rss_params {int * ind_table; int rss_result_mask; int * rss_key; int rss_flags; struct ecore_rss_config_obj* rss_obj; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_CPU_TO_LE16 (int ) ;
 int ECORE_CPU_TO_LE32 (int) ;
 int ECORE_MEMCPY (int *,int *,int) ;
 int ECORE_MEMSET (struct eth_rss_update_ramrod_data*,int ,int) ;
 int ECORE_MSG (struct bxe_softc*,char*,...) ;
 int ECORE_PENDING ;
 int ECORE_RSS_IPV4 ;
 int ECORE_RSS_IPV4_TCP ;
 int ECORE_RSS_IPV4_UDP ;
 int ECORE_RSS_IPV4_VXLAN ;
 int ECORE_RSS_IPV6 ;
 int ECORE_RSS_IPV6_TCP ;
 int ECORE_RSS_IPV6_UDP ;
 int ECORE_RSS_IPV6_VXLAN ;
 int ECORE_RSS_MODE_DISABLED ;
 int ECORE_RSS_MODE_REGULAR ;
 int ECORE_RSS_SET_SRCH ;
 int ECORE_RSS_TUNN_INNER_HDRS ;
 int ECORE_SWCID_MASK ;
 int ECORE_SWCID_SHIFT ;
 scalar_t__ ECORE_TEST_BIT (int ,int *) ;
 int ETH_CONNECTION_TYPE ;
 int ETH_RSS_MODE_DISABLED ;
 int ETH_RSS_MODE_REGULAR ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV4_VXLAN_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_IPV6_VXLAN_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_TUNN_INNER_HDRS_CAPABILITY ;
 int ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY ;
 int RAMROD_CMD_ID_ETH_RSS_UPDATE ;
 int T_ETH_INDIRECTION_TABLE_SIZE ;
 int ecore_sp_post (struct bxe_softc*,int ,int,int ,int ) ;

__attribute__((used)) static int ecore_setup_rss(struct bxe_softc *sc,
      struct ecore_config_rss_params *p)
{
 struct ecore_rss_config_obj *o = p->rss_obj;
 struct ecore_raw_obj *r = &o->raw;
 struct eth_rss_update_ramrod_data *data =
  (struct eth_rss_update_ramrod_data *)(r->rdata);
 uint16_t caps = 0;
 uint8_t rss_mode = 0;
 int rc;

 ECORE_MEMSET(data, 0, sizeof(*data));

 ECORE_MSG(sc, "Configuring RSS\n");


 data->echo = ECORE_CPU_TO_LE32((r->cid & ECORE_SWCID_MASK) |
     (r->state << ECORE_SWCID_SHIFT));


 if (ECORE_TEST_BIT(ECORE_RSS_MODE_DISABLED, &p->rss_flags))
  rss_mode = ETH_RSS_MODE_DISABLED;
 else if (ECORE_TEST_BIT(ECORE_RSS_MODE_REGULAR, &p->rss_flags))
  rss_mode = ETH_RSS_MODE_REGULAR;

 data->rss_mode = rss_mode;

 ECORE_MSG(sc, "rss_mode=%d\n", rss_mode);


 if (ECORE_TEST_BIT(ECORE_RSS_IPV4, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY;

 if (ECORE_TEST_BIT(ECORE_RSS_IPV4_TCP, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY;

 if (ECORE_TEST_BIT(ECORE_RSS_IPV4_UDP, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY;

 if (ECORE_TEST_BIT(ECORE_RSS_IPV6, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY;

 if (ECORE_TEST_BIT(ECORE_RSS_IPV6_TCP, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY;

 if (ECORE_TEST_BIT(ECORE_RSS_IPV6_UDP, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY;

 if (ECORE_TEST_BIT(ECORE_RSS_IPV4_VXLAN, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV4_VXLAN_CAPABILITY;

 if (ECORE_TEST_BIT(ECORE_RSS_IPV6_VXLAN, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_IPV6_VXLAN_CAPABILITY;

 if (ECORE_TEST_BIT(ECORE_RSS_TUNN_INNER_HDRS, &p->rss_flags))
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_TUNN_INNER_HDRS_CAPABILITY;


 if (ECORE_TEST_BIT(ECORE_RSS_SET_SRCH, &p->rss_flags)) {
  ECORE_MEMCPY(&data->rss_key[0], &p->rss_key[0],
         sizeof(data->rss_key));
  caps |= ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY;
 }

 data->capabilities = ECORE_CPU_TO_LE16(caps);


 data->rss_result_mask = p->rss_result_mask;


 data->rss_engine_id = o->engine_id;

 ECORE_MSG(sc, "rss_engine_id=%d\n", data->rss_engine_id);


 ECORE_MEMCPY(data->indirection_table, p->ind_table,
    T_ETH_INDIRECTION_TABLE_SIZE);


 ECORE_MEMCPY(o->ind_table, p->ind_table, T_ETH_INDIRECTION_TABLE_SIZE);
 rc = ecore_sp_post(sc,
        RAMROD_CMD_ID_ETH_RSS_UPDATE,
        r->cid,
        r->rdata_mapping,
        ETH_CONNECTION_TYPE);

 if (rc < 0)
  return rc;

 return ECORE_PENDING;
}
