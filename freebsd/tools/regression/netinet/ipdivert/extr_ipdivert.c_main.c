
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EADDRINUSE ;
 int ipdivert_bind (char const*,int,int,int ) ;
 int ipdivert_close (char const*,int) ;
 int ipdivert_create (char const*) ;
 int ok (char const*) ;

int
main(int argc, char *argv[])
{
 const char *test;
 int s1, s2;




 test = "create_close";
 s1 = ipdivert_create(test);
 ipdivert_close(test, s1);
 ok(test);




 test = "create_bind_close";
 s1 = ipdivert_create(test);
 ipdivert_bind(test, s1, 1000, 0);
 ipdivert_close(test, s1);
 ok(test);





 test = "create2_bind2_close2";
 s1 = ipdivert_create(test);
 s2 = ipdivert_create(test);
 ipdivert_bind(test, s1, 1000, 0);
 ipdivert_bind(test, s2, 1001, 0);
 ipdivert_close(test, s1);
 ipdivert_close(test, s2);
 ok(test);





 test = "create2_bind2_conflict_close2";
 s1 = ipdivert_create(test);
 s2 = ipdivert_create(test);
 ipdivert_bind(test, s1, 1000, 0);
 ipdivert_bind(test, s2, 1000, EADDRINUSE);
 ipdivert_close(test, s1);
 ipdivert_close(test, s2);
 ok(test);

 return (0);
}
