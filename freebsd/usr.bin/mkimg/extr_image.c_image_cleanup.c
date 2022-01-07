
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct chunk* ptr; } ;
struct TYPE_4__ {int fd; } ;
struct TYPE_6__ {TYPE_2__ mem; TYPE_1__ file; } ;
struct chunk {int ch_type; TYPE_3__ ch_u; } ;




 struct chunk* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct chunk*,int ) ;
 int ch_list ;
 int close (int) ;
 int free (struct chunk*) ;
 int image_chunks ;
 int image_swap_fd ;
 int image_swap_file ;
 int unlink (int ) ;

__attribute__((used)) static void
image_cleanup(void)
{
 struct chunk *ch;

 while ((ch = TAILQ_FIRST(&image_chunks)) != ((void*)0)) {
  switch (ch->ch_type) {
  case 129:

   if (ch->ch_u.file.fd != -1)
    close(ch->ch_u.file.fd);
   break;
  case 128:
   free(ch->ch_u.mem.ptr);
   break;
  default:
   break;
  }
  TAILQ_REMOVE(&image_chunks, ch, ch_list);
  free(ch);
 }
 if (image_swap_fd != -1)
  close(image_swap_fd);
 unlink(image_swap_file);
}
