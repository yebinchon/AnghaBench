
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct ether_header {int* ether_shost; int* ether_dhost; } ;


 int ntohl (int) ;
 scalar_t__ ntohs (int) ;
 int sym_hash_fn (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32_t
decode_others_n_hash(struct ether_header *ethh, uint8_t seed)
{
 uint32_t saddr, daddr, rc;

 saddr = ethh->ether_shost[5] |
  (ethh->ether_shost[4] << 8) |
  (ethh->ether_shost[3] << 16) |
  (ethh->ether_shost[2] << 24);
 daddr = ethh->ether_dhost[5] |
  (ethh->ether_dhost[4] << 8) |
  (ethh->ether_dhost[3] << 16) |
  (ethh->ether_dhost[2] << 24);

 rc = sym_hash_fn(ntohl(saddr),
    ntohl(daddr),
    ntohs(0xFFFD) + seed,
    ntohs(0xFFFE) + seed);

 return rc;
}
