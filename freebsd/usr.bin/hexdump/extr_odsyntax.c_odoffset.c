
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* nextfs; TYPE_1__* nextfu; } ;
struct TYPE_7__ {TYPE_2__* nextfu; } ;
struct TYPE_6__ {char* fmt; } ;
struct TYPE_5__ {char* fmt; } ;


 size_t TYPE_OFFSET ;
 TYPE_4__* fshead ;
 scalar_t__ isdigit (char) ;
 scalar_t__ isxdigit (char) ;
 int skip ;
 int strtoll (char*,char**,int) ;

__attribute__((used)) static void
odoffset(int argc, char ***argvp)
{
 char *p, *num, *end;
 int base;
 p = argc == 1 ? (*argvp)[0] : (*argvp)[1];

 if (*p != '+' && (argc < 2 ||
     (!isdigit(p[0]) && (p[0] != 'x' || !isxdigit(p[1])))))
  return;

 base = 0;




 if (p[0] == '+')
  ++p;
 if (p[0] == 'x' && isxdigit(p[1])) {
  ++p;
  base = 16;
 } else if (p[0] == '0' && p[1] == 'x') {
  p += 2;
  base = 16;
 }


 if (base == 16)
  for (num = p; isxdigit(*p); ++p);
 else
  for (num = p; isdigit(*p); ++p);


 if (num == p)
  return;


 if (*p == '.') {
  if (base)
   return;
  base = 10;
 }

 skip = strtoll(num, &end, base ? base : 8);


 if (end != p) {
  skip = 0;
  return;
 }

 if (*p) {
  if (*p == 'B') {
   skip *= 1024;
   ++p;
  } else if (*p == 'b') {
   skip *= 512;
   ++p;
  }
 }

 if (*p) {
  skip = 0;
  return;
 }





 if (base == 16) {
  fshead->nextfu->fmt[TYPE_OFFSET] = 'x';
  fshead->nextfs->nextfu->fmt[TYPE_OFFSET] = 'x';
 } else if (base == 10) {
  fshead->nextfu->fmt[TYPE_OFFSET] = 'd';
  fshead->nextfs->nextfu->fmt[TYPE_OFFSET] = 'd';
 }


 (*argvp)[1] = ((void*)0);
}
