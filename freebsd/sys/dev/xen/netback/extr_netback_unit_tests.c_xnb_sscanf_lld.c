
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XNB_ASSERT (int) ;
 int sscanf (char const*,char*,long long*) ;

__attribute__((used)) static void
xnb_sscanf_lld(char *buffer, size_t buflen)
{
 const char mystr[] = "-123456789012345";
 long long dest[3];
 int i;

 for (i = 0; i < 3; i++)
  dest[i] = (long long)0xdeadbeefdeadbeef;

 XNB_ASSERT(sscanf(mystr, "%lld", &dest[1]) == 1);
 for (i = 0; i < 3; i++)
  XNB_ASSERT(dest[i] == (i != 1 ? (long long)0xdeadbeefdeadbeef :
      -123456789012345));
}
