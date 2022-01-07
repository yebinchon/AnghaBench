
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dirent {char* d_name; } ;
struct TYPE_2__ {int hexsz; } ;
typedef int DIR ;


 int DIV_ROUND_UP (int ,int) ;
 int closedir (int *) ;
 int gc_auto_threshold ;
 int git_path (char*) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 unsigned int const strspn (char*,char*) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int too_many_loose_objects(void)
{






 DIR *dir;
 struct dirent *ent;
 int auto_threshold;
 int num_loose = 0;
 int needed = 0;
 const unsigned hexsz_loose = the_hash_algo->hexsz - 2;

 dir = opendir(git_path("objects/17"));
 if (!dir)
  return 0;

 auto_threshold = DIV_ROUND_UP(gc_auto_threshold, 256);
 while ((ent = readdir(dir)) != ((void*)0)) {
  if (strspn(ent->d_name, "0123456789abcdef") != hexsz_loose ||
      ent->d_name[hexsz_loose] != '\0')
   continue;
  if (++num_loose > auto_threshold) {
   needed = 1;
   break;
  }
 }
 closedir(dir);
 return needed;
}
