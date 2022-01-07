
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct poly1305_kat {int vector_name; int test_msg_len; } ;
typedef int key ;
typedef int exptag ;


 int ATF_CHECK_EQ_MSG (int ,int ,char*,int ) ;
 int ATF_REQUIRE_KERNEL_MODULE (char const*) ;
 int CRYPTO_POLY1305 ;
 int POLY1305_HASH_LEN ;
 int POLY1305_KEY_LEN ;
 int create_session (int,int ,int,int *,int) ;
 int destroy_session (int,int) ;
 int do_cryptop (int,int,int *,int ,int *) ;
 int get_handle_fd () ;
 int memcmp (int *,int *,int) ;
 size_t nitems (struct poly1305_kat*) ;
 int parse_vector (struct poly1305_kat const*,int *,int *,int *) ;
 struct poly1305_kat* rfc7539_kats ;

__attribute__((used)) static void
test_rfc7539_poly1305_vectors(int crid, const char *modname)
{
 uint8_t comptag[POLY1305_HASH_LEN], exptag[POLY1305_HASH_LEN],
     key[POLY1305_KEY_LEN], msg[512];
 int fd, ses;
 size_t i;

 ATF_REQUIRE_KERNEL_MODULE(modname);
 ATF_REQUIRE_KERNEL_MODULE("cryptodev");

 fd = get_handle_fd();

 for (i = 0; i < nitems(rfc7539_kats); i++) {
  const struct poly1305_kat *kat;

  kat = &rfc7539_kats[i];
  parse_vector(kat, key, msg, exptag);

  ses = create_session(fd, CRYPTO_POLY1305, crid, key, sizeof(key));

  do_cryptop(fd, ses, msg, kat->test_msg_len, comptag);
  ATF_CHECK_EQ_MSG(memcmp(comptag, exptag, sizeof(exptag)), 0,
      "KAT %s failed:", kat->vector_name);

  destroy_session(fd, ses);
 }
}
