#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t UBYTE ;

/* Variables and functions */
 size_t END ; 
 int /*<<< orphan*/  FREQUENCY ; 
 int /*<<< orphan*/  PLAY ; 
 size_t SILENCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* frequencies ; 
 size_t* music ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ,int) ; 

void FUNC2(UBYTE mode)
{
  UBYTE i = 0;

  while(music[i] != END) {
    if(music[i] != SILENCE) {
      FUNC1(mode, FREQUENCY, frequencies[music[i]]);
      FUNC1(mode, PLAY, 1);
    }
    FUNC0(500);
    i++;
  }
}