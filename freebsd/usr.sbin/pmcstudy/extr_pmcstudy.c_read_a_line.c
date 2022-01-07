
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_2__ {int pos; scalar_t__* vals; int sum; } ;
typedef int FILE ;


 TYPE_1__* cnts ;
 int * fgets (char*,int,int *) ;
 int ncnts ;
 scalar_t__ strtol (char*,char**,int ) ;

__attribute__((used)) static int
read_a_line(FILE *io)
{
 char buffer[8192], *p, *stop;
 int pos, i;

 if (fgets(buffer, sizeof(buffer), io) == ((void*)0)) {
  return(0);
 }
 p = buffer;
 for (i=0; i<ncnts; i++) {
  pos = cnts[i].pos;
  cnts[i].vals[pos] = strtol(p, &stop, 0);
  cnts[i].pos++;
  cnts[i].sum += cnts[i].vals[pos];
  p = stop;
 }
 return (1);
}
