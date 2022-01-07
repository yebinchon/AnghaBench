
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct md_s {int mediasize; } ;
struct md_req {int dummy; } ;


 int EDOM ;
 int PAGE_SIZE ;

__attribute__((used)) static int
mdcreate_null(struct md_s *sc, struct md_req *mdr, struct thread *td)
{





 if (sc->mediasize <= 0 || (sc->mediasize % PAGE_SIZE) != 0)
  return (EDOM);

 return (0);
}
