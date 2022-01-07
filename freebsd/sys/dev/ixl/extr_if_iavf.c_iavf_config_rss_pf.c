
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_sc {int dummy; } ;


 int IAVF_FLAG_AQ_CONFIG_RSS_KEY ;
 int IAVF_FLAG_AQ_CONFIG_RSS_LUT ;
 int IAVF_FLAG_AQ_SET_RSS_HENA ;
 int iavf_send_vc_msg (struct iavf_sc*,int ) ;

__attribute__((used)) static void
iavf_config_rss_pf(struct iavf_sc *sc)
{
 iavf_send_vc_msg(sc, IAVF_FLAG_AQ_CONFIG_RSS_KEY);

 iavf_send_vc_msg(sc, IAVF_FLAG_AQ_SET_RSS_HENA);

 iavf_send_vc_msg(sc, IAVF_FLAG_AQ_CONFIG_RSS_LUT);
}
