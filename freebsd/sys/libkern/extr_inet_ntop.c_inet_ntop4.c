
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int tmp ;
typedef scalar_t__ socklen_t ;


 int snprintf (char*,int,char const*,int const,int const,int const,int const) ;
 int strlcpy (char*,char*,scalar_t__) ;

__attribute__((used)) static char *
inet_ntop4(const u_char *src, char *dst, socklen_t size)
{
 static const char fmt[] = "%u.%u.%u.%u";
 char tmp[sizeof "255.255.255.255"];
 int l;

 l = snprintf(tmp, sizeof(tmp), fmt, src[0], src[1], src[2], src[3]);
 if (l <= 0 || (socklen_t) l >= size) {
  return (((void*)0));
 }
 strlcpy(dst, tmp, size);
 return (dst);
}
