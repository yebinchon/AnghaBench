
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 size_t END ;
 int FREQUENCY ;
 int PLAY ;
 size_t SILENCE ;
 int delay (int) ;
 int* frequencies ;
 size_t* music ;
 int update_value (size_t,int ,int) ;

void play_music(UBYTE mode)
{
  UBYTE i = 0;

  while(music[i] != END) {
    if(music[i] != SILENCE) {
      update_value(mode, FREQUENCY, frequencies[music[i]]);
      update_value(mode, PLAY, 1);
    }
    delay(500);
    i++;
  }
}
