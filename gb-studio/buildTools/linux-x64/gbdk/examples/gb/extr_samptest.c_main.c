
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int J_START ;
 int SAMPLES ;
 int play_sample (int ,int) ;
 int puts (char*) ;
 int sample ;
 int waitpad (int ) ;
 int waitpadup () ;

void main()
{
 puts("\n    Ren & Stimpy\n");
 while(1)
 {
  waitpad(J_START);
  puts(".");
  play_sample(sample, SAMPLES / 32);
  waitpadup();
 }
}
