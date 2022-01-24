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

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ dev ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5( int argc, const char* argv[])
{
    if(argc != 3){
      FUNC4("usage: %s [c | d] wtap_id\n", argv[0]);
      return -1;
    }
    int id = FUNC0(argv[2]);
    if(!(id >= 0 && id < 64)){
	FUNC4("wtap_id must be between 0 and 7\n");
	return -1;
    }
    dev = FUNC3("/dev/wtapctl", O_RDONLY);
    if(dev < 0){
      FUNC4("error opening wtapctl cdev\n");
      return -1;
    }
    switch((char)*argv[1]){
      case 'c':
	FUNC1(id);
	break;
      case 'd':
	FUNC2(id);
	break;
      default:
	FUNC4("wtap ioctl: unknown command '%c'\n", *argv[1]);
	return -1;
    }
    return 0;
}