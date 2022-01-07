
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fw; } ;
struct bwn_fw {TYPE_2__ initvals_band; TYPE_2__ initvals; } ;
struct bwn_mac {struct bwn_fw mac_fw; } ;
struct bwn_fwhdr {int size; } ;
struct TYPE_3__ {scalar_t__ datasize; scalar_t__ data; } ;


 int GETFWOFFSET (TYPE_2__,size_t const) ;
 int be32toh (int ) ;
 int bwn_fwinitvals_write (struct bwn_mac*,int ,int ,scalar_t__) ;

__attribute__((used)) static int
bwn_fw_loadinitvals(struct bwn_mac *mac)
{


 const size_t hdr_len = sizeof(struct bwn_fwhdr);
 const struct bwn_fwhdr *hdr;
 struct bwn_fw *fw = &mac->mac_fw;
 int error;

 hdr = (const struct bwn_fwhdr *)(fw->initvals.fw->data);
 error = bwn_fwinitvals_write(mac, ((const struct bwn_fwinitvals *)((const char *)fw->initvals.fw->data + hdr_len)),
     be32toh(hdr->size), fw->initvals.fw->datasize - hdr_len);
 if (error)
  return (error);
 if (fw->initvals_band.fw) {
  hdr = (const struct bwn_fwhdr *)(fw->initvals_band.fw->data);
  error = bwn_fwinitvals_write(mac,
      ((const struct bwn_fwinitvals *)((const char *)fw->initvals_band.fw->data + hdr_len)),
      be32toh(hdr->size),
      fw->initvals_band.fw->datasize - hdr_len);
 }
 return (error);

}
