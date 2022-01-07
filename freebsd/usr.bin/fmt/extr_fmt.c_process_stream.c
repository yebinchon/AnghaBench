
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef scalar_t__ HdrType ;
typedef int FILE ;


 size_t SILLY ;
 int allow_indented_paragraphs ;
 scalar_t__ centerP ;
 int center_stream (int *,char const*) ;
 scalar_t__ ferror (int *) ;
 int format_troff ;
 char* get_line (int *,size_t*) ;
 scalar_t__ grok_mail_headers ;
 scalar_t__ hdr_Continuation ;
 scalar_t__ hdr_Header ;
 scalar_t__ hdr_NonHeader ;
 scalar_t__ hdr_ParagraphStart ;
 size_t indent_length (char*,size_t) ;
 scalar_t__ might_be_header (char*) ;
 int n_errors ;
 int new_paragraph (size_t,size_t) ;
 scalar_t__ output_in_paragraph ;
 int output_word (size_t,size_t,char*,size_t,size_t) ;
 int putwchar (char) ;
 int warn (char*,char const*) ;
 int wprintf (char*,int,char*) ;

__attribute__((used)) static void
process_stream(FILE *stream, const char *name)
{
 size_t last_indent = SILLY;
 size_t para_line_number = 0;
 size_t first_indent = SILLY;
 HdrType prev_header_type = hdr_ParagraphStart;


 wchar_t *line;
 size_t length;

 if (centerP) {
  center_stream(stream, name);
  return;
 }
 while ((line = get_line(stream, &length)) != ((void*)0)) {
  size_t np = indent_length(line, length);

  {
   HdrType header_type = hdr_NonHeader;

   if (grok_mail_headers && prev_header_type != hdr_NonHeader) {
    if (np == 0 && might_be_header(line))
     header_type = hdr_Header;
    else if (np > 0 && prev_header_type > hdr_NonHeader)
     header_type = hdr_Continuation;
   }
   if (length == 0
       || (line[0] == '.' && !format_troff)
       || header_type == hdr_Header
       || (header_type == hdr_NonHeader && prev_header_type > hdr_NonHeader)
       || (np != last_indent
       && header_type != hdr_Continuation
       && (!allow_indented_paragraphs || para_line_number != 1))) {
    new_paragraph(output_in_paragraph ? last_indent : first_indent, np);
    para_line_number = 0;
    first_indent = np;
    last_indent = np;
    if (header_type == hdr_Header)
     last_indent = 2;
    if (length == 0 || (line[0] == '.' && !format_troff)) {
     if (length == 0)
      putwchar('\n');
     else
      wprintf(L"%.*ls\n", (int)length,
          line);
     prev_header_type = hdr_ParagraphStart;
     continue;
    }
   } else {





    if (np != last_indent &&
        header_type != hdr_Continuation)
     last_indent = np;
   }
   prev_header_type = header_type;
  }

  {
   size_t n = np;

   while (n < length) {

    size_t word_length = 0, space_length = 0;

    while (n + word_length < length &&
        line[n + word_length] != ' ')
     ++word_length;
    space_length = word_length;
    while (n + space_length < length &&
        line[n + space_length] == ' ')
     ++space_length;

    output_word(first_indent, last_indent,
        line + n, word_length,
        space_length - word_length);
    n += space_length;
   }
  }
  ++para_line_number;
 }
 new_paragraph(output_in_paragraph ? last_indent : first_indent, 0);
 if (ferror(stream)) {
  warn("%s", name);
  ++n_errors;
 }
}
