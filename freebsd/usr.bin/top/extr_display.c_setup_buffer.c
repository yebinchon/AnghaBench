
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SETUPBUFFER_MIN_SCREENWIDTH ;
 int SETUPBUFFER_REQUIRED_ADDBUFSIZ ;
 char* calloc (size_t,int) ;
 int errx (int,char*) ;
 int free (char*) ;
 int memcpy (char*,char*,size_t) ;
 int screen_width ;
 int setup_buffer_bufsiz ;
 size_t strlen (char*) ;

__attribute__((used)) static char *
setup_buffer(char *buffer, int addlen)
{
    size_t len, old_len;
    char *new_buffer;

    setup_buffer_bufsiz = screen_width;
    if (setup_buffer_bufsiz < SETUPBUFFER_MIN_SCREENWIDTH)
    {
 setup_buffer_bufsiz = SETUPBUFFER_MIN_SCREENWIDTH;
    }

    len = setup_buffer_bufsiz + addlen + SETUPBUFFER_REQUIRED_ADDBUFSIZ;
    new_buffer = calloc(len, sizeof(char));
    if (new_buffer == ((void*)0))
    {
 errx(4, "can't allocate sufficient memory");
    }
    if (buffer != ((void*)0))
    {
 old_len = strlen(buffer);
 memcpy(new_buffer, buffer, old_len < len - 1 ? old_len : len - 1);
 free(buffer);
    }

    return new_buffer;
}
