
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poly1305_kat {int vector_name; } ;
typedef int hbyte ;


 int ATF_REQUIRE_EQ_MSG (size_t,size_t,char*,...) ;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;
 int sscanf (char*,char*,char*) ;
 size_t strlen (char const*) ;
 char* strpbrk (char const*,char*) ;

__attribute__((used)) static void
parse_hex(const struct poly1305_kat *kat, const char *hexstr, void *voutput,
    size_t explen)
{



 const char *sep, *it;
 size_t sym_len, count;
 char hbyte[3], *out;
 int res;

 out = voutput;
 memset(hbyte, 0, sizeof(hbyte));

 it = hexstr;
 count = 0;
 while (1) {
  sep = strpbrk(it, " :");
  if (sep == ((void*)0))
   sym_len = strlen(it);
  else
   sym_len = sep - it;

  ATF_REQUIRE_EQ_MSG(sym_len, 2,
      "invalid hex byte '%.*s' in vector %s", (int)sym_len, it,
      kat->vector_name);

  memcpy(hbyte, it, 2);
  res = sscanf(hbyte, "%hhx", &out[count]);
  ATF_REQUIRE_EQ_MSG(res, 1,
      "invalid hex byte '%s' in vector %s", hbyte,
      kat->vector_name);

  count++;
  ATF_REQUIRE_MSG(count <= explen,
      "got longer than expected value at %s", kat->vector_name);

  if (sep == ((void*)0))
   break;
  it = sep;
  while (*it == ' ' || *it == ':')
   it++;
  if (*it == 0)
   break;
 }

 ATF_REQUIRE_EQ_MSG(count, explen, "got short value at %s",
     kat->vector_name);
}
