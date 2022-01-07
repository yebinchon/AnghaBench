
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int version ;
typedef int uint8_t ;
struct acctv3 {int dummy; } ;
typedef int magic ;
typedef int FILE ;


 int EFTYPE ;
 scalar_t__ EOF ;
 int errno ;
 scalar_t__ fread_record (int*,int,int *) ;
 int readrec_v2 (int *,struct acctv3*) ;
 int readrec_v3 (int *,struct acctv3*) ;
 scalar_t__ ungetc (int,int *) ;

__attribute__((used)) static int
readrec_vx(FILE *f, struct acctv3 *av3)
{
 uint8_t magic, version;

 if (fread_record(&magic, sizeof(magic), f) == EOF ||
     fread_record(&version, sizeof(version), f) == EOF ||
     ungetc(version, f) == EOF ||
     ungetc(magic, f) == EOF)
  return (EOF);
 switch (version) {
 case 2:
  return (readrec_v2(f, av3));
 case 3:
  return (readrec_v3(f, av3));



 default:
  errno = EFTYPE;
  return (EOF);
 }
}
