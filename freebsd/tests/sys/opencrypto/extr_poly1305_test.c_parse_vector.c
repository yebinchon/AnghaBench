
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct poly1305_kat {int expected_tag_hex; int test_msg_len; int test_msg_hex; int test_key_hex; } ;


 int POLY1305_HASH_LEN ;
 int POLY1305_KEY_LEN ;
 int parse_hex (struct poly1305_kat const*,int ,char*,int ) ;

__attribute__((used)) static void
parse_vector(const struct poly1305_kat *kat,
    uint8_t key[__min_size(POLY1305_KEY_LEN)], char *msg,
    uint8_t exptag[__min_size(POLY1305_HASH_LEN)])
{
 parse_hex(kat, kat->test_key_hex, key, POLY1305_KEY_LEN);
 parse_hex(kat, kat->test_msg_hex, msg, kat->test_msg_len);
 parse_hex(kat, kat->expected_tag_hex, exptag, POLY1305_HASH_LEN);
}
