
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NUM_THREADS ;
 int htonl (int) ;

__attribute__((used)) static void
marker_fill(uint64_t* buf, int file_ofs, size_t len, int thread_num){
  int ofs;
  uint32_t thread_mark = thread_num;
  uint32_t final_mark = 0xe005b0ca;
  for (ofs = file_ofs; ofs < file_ofs + len; ofs += sizeof(uint64_t)){
    uint64_t mark = ((thread_num == (NUM_THREADS - 1) ?
          (uint64_t)final_mark : (uint64_t)thread_mark) << (uint64_t)32) |
      htonl(ofs & 0xFFFFFFFF);
    int buf_idx = (ofs - file_ofs) / sizeof(uint64_t);
    buf[buf_idx] = mark;
  }
}
