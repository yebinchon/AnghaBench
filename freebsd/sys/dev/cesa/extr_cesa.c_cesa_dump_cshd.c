
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_softc {int sc_dev; } ;
struct cesa_sa_hdesc {int cshd_mac_iv_out; int cshd_mac_iv_in; int cshd_mac_total_dlen; int cshd_mac_dlen; int cshd_mac_dst; int cshd_mac_src; int cshd_enc_iv_buf; int cshd_enc_iv; int cshd_enc_key; int cshd_enc_dlen; int cshd_enc_dst; int cshd_enc_src; int cshd_config; } ;
typedef int device_t ;


 int device_printf (int ,char*,...) ;

__attribute__((used)) static void
cesa_dump_cshd(struct cesa_softc *sc, struct cesa_sa_hdesc *cshd)
{
}
