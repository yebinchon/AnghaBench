
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int atoi (char const*) ;
 int create (int) ;
 int delete (int) ;
 scalar_t__ dev ;
 scalar_t__ open (char*,int ) ;
 int printf (char*,...) ;

int main( int argc, const char* argv[])
{
    if(argc != 3){
      printf("usage: %s [c | d] wtap_id\n", argv[0]);
      return -1;
    }
    int id = atoi(argv[2]);
    if(!(id >= 0 && id < 64)){
 printf("wtap_id must be between 0 and 7\n");
 return -1;
    }
    dev = open("/dev/wtapctl", O_RDONLY);
    if(dev < 0){
      printf("error opening wtapctl cdev\n");
      return -1;
    }
    switch((char)*argv[1]){
      case 'c':
 create(id);
 break;
      case 'd':
 delete(id);
 break;
      default:
 printf("wtap ioctl: unknown command '%c'\n", *argv[1]);
 return -1;
    }
    return 0;
}
