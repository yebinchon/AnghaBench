
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cshape {int* shape; } ;


 int CONS_GETCURSORSHAPE ;
 int CONS_SETCURSORSHAPE ;
 int err (int,char*) ;
 scalar_t__ ioctl (int ,int ,struct cshape*) ;
 int parse_cursor_params (char*,struct cshape*) ;
 int revert () ;

__attribute__((used)) static void
set_cursor_type(char *param)
{
 struct cshape shape;


 shape.shape[0] = 0;
 shape.shape[1] = -1;
 shape.shape[2] = -1;
 parse_cursor_params(param, &shape);


 if (ioctl(0, CONS_GETCURSORSHAPE, &shape) != 0) {
  revert();
  err(1, "ioctl(CONS_GETCURSORSHAPE)");
 }

 parse_cursor_params(param, &shape);
 if (ioctl(0, CONS_SETCURSORSHAPE, &shape) != 0) {
  revert();
  err(1, "ioctl(CONS_SETCURSORSHAPE)");
 }
}
