
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int key ;
typedef int k_opad ;
typedef int k_ipad ;
typedef int git_hash_ctx ;
struct TYPE_2__ {size_t blksz; int rawsz; int (* final_fn ) (unsigned char*,int *) ;int (* update_fn ) (int *,unsigned char*,int) ;int (* init_fn ) (int *) ;} ;


 int GIT_MAX_BLKSZ ;
 int memcpy (unsigned char*,char const*,size_t) ;
 int memset (unsigned char*,char,int) ;
 int stub1 (int *) ;
 int stub10 (int *,unsigned char*,int) ;
 int stub11 (unsigned char*,int *) ;
 int stub2 (int *,char const*,size_t) ;
 int stub3 (unsigned char*,int *) ;
 int stub4 (int *) ;
 int stub5 (int *,unsigned char*,int) ;
 int stub6 (int *,char const*,size_t) ;
 int stub7 (unsigned char*,int *) ;
 int stub8 (int *) ;
 int stub9 (int *,unsigned char*,int) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void hmac(unsigned char *out,
        const char *key_in, size_t key_len,
        const char *text, size_t text_len)
{
 unsigned char key[GIT_MAX_BLKSZ];
 unsigned char k_ipad[GIT_MAX_BLKSZ];
 unsigned char k_opad[GIT_MAX_BLKSZ];
 int i;
 git_hash_ctx ctx;


 memset(key, '\0', GIT_MAX_BLKSZ);
 if (the_hash_algo->blksz < key_len) {
  the_hash_algo->init_fn(&ctx);
  the_hash_algo->update_fn(&ctx, key_in, key_len);
  the_hash_algo->final_fn(key, &ctx);
 } else {
  memcpy(key, key_in, key_len);
 }


 for (i = 0; i < sizeof(key); i++) {
  k_ipad[i] = key[i] ^ 0x36;
  k_opad[i] = key[i] ^ 0x5c;
 }


 the_hash_algo->init_fn(&ctx);
 the_hash_algo->update_fn(&ctx, k_ipad, sizeof(k_ipad));
 the_hash_algo->update_fn(&ctx, text, text_len);
 the_hash_algo->final_fn(out, &ctx);


 the_hash_algo->init_fn(&ctx);
 the_hash_algo->update_fn(&ctx, k_opad, sizeof(k_opad));
 the_hash_algo->update_fn(&ctx, out, the_hash_algo->rawsz);
 the_hash_algo->final_fn(out, &ctx);
}
