
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* sign; } ;
struct TYPE_9__ {TYPE_2__ d; } ;
struct TYPE_7__ {int contents; } ;
typedef TYPE_3__ PKCS7 ;
typedef int CONF ;
typedef int BIO ;
typedef int ASN1_TYPE ;
typedef int ASN1_STRING ;


 int * ASN1_STRING_new () ;
 int ASN1_STRING_set (int *,unsigned char*,int) ;
 int * ASN1_TYPE_new () ;
 int ASN1_TYPE_set (int *,int ,int *) ;
 int * ASN1_generate_nconf (char*,int *) ;
 int * BIO_new_mem_buf (void*,int) ;
 int BIO_write (int *,unsigned char*,int) ;
 int ERR_print_errors_fp (int ) ;
 char* NCONF_get_string (int *,char*,char*) ;
 int NCONF_load_bio (int *,int *,int *) ;
 int * NCONF_new (int *) ;
 int OBJ_create (char*,int *,int *) ;
 int PKCS7_dataFinal (TYPE_3__*,int *) ;
 int * PKCS7_dataInit (TYPE_3__*,int *) ;
 int PKCS7_set0_type_other (int ,int,int *) ;
 int V_ASN1_SEQUENCE ;
 int asprintf (char**,int ,char*) ;
 char* bin2hex (char const*,size_t) ;
 unsigned char* calloc (int,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int i2d_ASN1_TYPE (int *,unsigned char**) ;
 int magic_fmt ;
 int stderr ;

__attribute__((used)) static void
magic(PKCS7 *pkcs7, const char *digest, size_t digest_len)
{
 BIO *bio, *t_bio;
 ASN1_TYPE *t;
 ASN1_STRING *s;
 CONF *cnf;
 unsigned char *buf, *tmp;
 char *digest_hex, *magic_conf, *str;
 int len, nid, ok;

 digest_hex = bin2hex(digest, digest_len);




 nid = OBJ_create("1.3.6.1.4.1.311.2.1.4", ((void*)0), ((void*)0));

 asprintf(&magic_conf, magic_fmt, digest_hex);
 if (magic_conf == ((void*)0))
  err(1, "asprintf");

 bio = BIO_new_mem_buf((void *)magic_conf, -1);
 if (bio == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "BIO_new_mem_buf(3) failed");
 }

 cnf = NCONF_new(((void*)0));
 if (cnf == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "NCONF_new(3) failed");
 }

 ok = NCONF_load_bio(cnf, bio, ((void*)0));
 if (ok == 0) {
  ERR_print_errors_fp(stderr);
  errx(1, "NCONF_load_bio(3) failed");
 }

 str = NCONF_get_string(cnf, "default", "asn1");
 if (str == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "NCONF_get_string(3) failed");
 }

 t = ASN1_generate_nconf(str, cnf);
 if (t == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "ASN1_generate_nconf(3) failed");
 }





 len = i2d_ASN1_TYPE(t, ((void*)0));
 tmp = buf = calloc(1, len);
 if (tmp == ((void*)0))
  err(1, "calloc");
 i2d_ASN1_TYPE(t, &tmp);




 tmp = ((void*)0);
 t = ((void*)0);

 t_bio = PKCS7_dataInit(pkcs7, ((void*)0));
 if (t_bio == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "PKCS7_dataInit(3) failed");
 }

 BIO_write(t_bio, buf + 2, len - 2);

 ok = PKCS7_dataFinal(pkcs7, t_bio);
 if (ok == 0) {
  ERR_print_errors_fp(stderr);
  errx(1, "PKCS7_dataFinal(3) failed");
 }

 t = ASN1_TYPE_new();
 s = ASN1_STRING_new();
 ASN1_STRING_set(s, buf, len);
 ASN1_TYPE_set(t, V_ASN1_SEQUENCE, s);

 PKCS7_set0_type_other(pkcs7->d.sign->contents, nid, t);
}
