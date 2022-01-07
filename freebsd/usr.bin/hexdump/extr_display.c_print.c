
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char* u_quad_t ;
typedef char* u_int64_t ;
typedef char* u_int32_t ;
typedef char* u_int16_t ;
typedef char u_char ;
typedef int u8 ;
typedef int u4 ;
typedef int u2 ;
typedef int s8 ;
typedef int s4 ;
typedef int s2 ;
typedef char* quad_t ;
typedef int ldbl ;
typedef char* int8_t ;
typedef char* int32_t ;
typedef char* int16_t ;
typedef int f8 ;
typedef int f4 ;
struct TYPE_5__ {int flags; char* fmt; int bcnt; } ;
typedef TYPE_1__ PR ;
 int address ;
 int bcopy (char*,...) ;
 int blocksize ;
 int conv_c (TYPE_1__*,char*,int) ;
 int conv_u (TYPE_1__*,char*) ;
 int eaddress ;
 int isprint (char) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print(PR *pr, u_char *bp)
{
 long double ldbl;
    double f8;
     float f4;
   int16_t s2;
    int8_t s8;
   int32_t s4;
 u_int16_t u2;
 u_int32_t u4;
 u_int64_t u8;

 switch(pr->flags) {
 case 138:
  (void)printf(pr->fmt, (quad_t)address);
  break;
 case 137:
  (void)printf(pr->fmt, "");
  break;
 case 136:
  conv_c(pr, bp, eaddress ? eaddress - address :
      blocksize - address % blocksize);
  break;
 case 135:
  (void)printf(pr->fmt, *bp);
  break;
 case 134:
  switch(pr->bcnt) {
  case 4:
   bcopy(bp, &f4, sizeof(f4));
   (void)printf(pr->fmt, f4);
   break;
  case 8:
   bcopy(bp, &f8, sizeof(f8));
   (void)printf(pr->fmt, f8);
   break;
  default:
   if (pr->bcnt == sizeof(long double)) {
    bcopy(bp, &ldbl, sizeof(ldbl));
    (void)printf(pr->fmt, ldbl);
   }
   break;
  }
  break;
 case 133:
  switch(pr->bcnt) {
  case 1:
   (void)printf(pr->fmt, (quad_t)(signed char)*bp);
   break;
  case 2:
   bcopy(bp, &s2, sizeof(s2));
   (void)printf(pr->fmt, (quad_t)s2);
   break;
  case 4:
   bcopy(bp, &s4, sizeof(s4));
   (void)printf(pr->fmt, (quad_t)s4);
   break;
  case 8:
   bcopy(bp, &s8, sizeof(s8));
   (void)printf(pr->fmt, s8);
   break;
  }
  break;
 case 132:
  (void)printf(pr->fmt, isprint(*bp) ? *bp : '.');
  break;
 case 131:
  (void)printf(pr->fmt, (char *)bp);
  break;
 case 130:
  (void)printf("%s", pr->fmt);
  break;
 case 129:
  conv_u(pr, bp);
  break;
 case 128:
  switch(pr->bcnt) {
  case 1:
   (void)printf(pr->fmt, (u_quad_t)*bp);
   break;
  case 2:
   bcopy(bp, &u2, sizeof(u2));
   (void)printf(pr->fmt, (u_quad_t)u2);
   break;
  case 4:
   bcopy(bp, &u4, sizeof(u4));
   (void)printf(pr->fmt, (u_quad_t)u4);
   break;
  case 8:
   bcopy(bp, &u8, sizeof(u8));
   (void)printf(pr->fmt, u8);
   break;
  }
  break;
 }
}
