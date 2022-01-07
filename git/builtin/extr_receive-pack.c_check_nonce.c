
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;


 char* NONCE_BAD ;
 char* NONCE_MISSING ;
 char* NONCE_OK ;
 char* NONCE_SLOP ;
 char* NONCE_UNSOLICITED ;
 char* find_header (char const*,size_t,char*,int *) ;
 int free (char*) ;
 scalar_t__ labs (long) ;
 long nonce_stamp_slop ;
 scalar_t__ nonce_stamp_slop_limit ;
 scalar_t__ parse_timestamp (char*,char**,int) ;
 char* prepare_push_cert_nonce (int ,scalar_t__) ;
 char* push_cert_nonce ;
 int service_dir ;
 int stateless_rpc ;
 scalar_t__ strcmp (char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static const char *check_nonce(const char *buf, size_t len)
{
 char *nonce = find_header(buf, len, "nonce", ((void*)0));
 timestamp_t stamp, ostamp;
 char *bohmac, *expect = ((void*)0);
 const char *retval = NONCE_BAD;

 if (!nonce) {
  retval = NONCE_MISSING;
  goto leave;
 } else if (!push_cert_nonce) {
  retval = NONCE_UNSOLICITED;
  goto leave;
 } else if (!strcmp(push_cert_nonce, nonce)) {
  retval = NONCE_OK;
  goto leave;
 }

 if (!stateless_rpc) {

  retval = NONCE_BAD;
  goto leave;
 }
 if (*nonce <= '0' || '9' < *nonce) {
  retval = NONCE_BAD;
  goto leave;
 }
 stamp = parse_timestamp(nonce, &bohmac, 10);
 if (bohmac == nonce || bohmac[0] != '-') {
  retval = NONCE_BAD;
  goto leave;
 }

 expect = prepare_push_cert_nonce(service_dir, stamp);
 if (strcmp(expect, nonce)) {

  retval = NONCE_BAD;
  goto leave;
 }






 ostamp = parse_timestamp(push_cert_nonce, ((void*)0), 10);
 nonce_stamp_slop = (long)ostamp - (long)stamp;

 if (nonce_stamp_slop_limit &&
     labs(nonce_stamp_slop) <= nonce_stamp_slop_limit) {





  free((void *)push_cert_nonce);
  push_cert_nonce = xstrdup(nonce);
  retval = NONCE_OK;
 } else {
  retval = NONCE_SLOP;
 }

leave:
 free(nonce);
 free(expect);
 return retval;
}
