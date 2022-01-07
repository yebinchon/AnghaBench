
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int DIV_REG ;
 int DKGREY ;
 int LTGREY ;
 int SOLID ;
 int* accu ;
 int* accua ;
 int arand () ;
 int initarand (int) ;
 int plot (int,int,int ,int ) ;
 int puts (char*) ;
 int rand () ;
 int seed ;
 int waitpad (int) ;
 int waitpadup () ;

void main(void)
{
  UBYTE r, s, t, u;

  for(r = 0; r != 80; r++) {
    accu[r] = 0;
    accua[r] = 0;
  }


  puts("Getting seed");
  puts("Push any key (1)");
  waitpad(0xFF);
  waitpadup();
  seed = DIV_REG;
  puts("Push any key (2)");
  waitpad(0xFF);
  waitpadup();
  seed |= (UWORD)DIV_REG << 8;


  initarand(seed);

  do {
    r = rand();
    s = arand();

    if(r < 80) {
      t = ++accu[r];
      plot(r, 144-t, LTGREY, SOLID);
    }
    if(s < 80) {
      u = ++accua[s];
      plot(s+80, 144-u, DKGREY, SOLID);
    }
  }
  while(t != 144 && u != 144);
}
