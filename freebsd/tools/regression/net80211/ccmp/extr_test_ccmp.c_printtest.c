
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciphertest {int keyix; int plaintext_len; int key_len; int pn; } ;


 int printf (char*,int,int ,int ,int ) ;

__attribute__((used)) static void
printtest(const struct ciphertest *t)
{
 printf("keyix %u pn %llu key_len %u plaintext_len %u\n"
  , t->keyix
  , t->pn
  , t->key_len
  , t->plaintext_len
 );
}
