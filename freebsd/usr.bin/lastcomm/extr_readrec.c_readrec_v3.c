
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acctv3 {int dummy; } ;
typedef int FILE ;


 int fread_record (struct acctv3*,int,int *) ;

__attribute__((used)) static int
readrec_v3(FILE *f, struct acctv3 *av3)
{

 return (fread_record(av3, sizeof(*av3), f));
}
