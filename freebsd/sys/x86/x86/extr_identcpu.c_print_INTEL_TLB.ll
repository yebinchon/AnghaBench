; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_print_INTEL_TLB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_print_INTEL_TLB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"Instruction TLB: 4 KB pages, 4-way set associative, 32 entries\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Instruction TLB: 4 MB pages, fully associative, 2 entries\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Data TLB: 4 KB pages, 4-way set associative, 64 entries\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Data TLB: 4 MB Pages, 4-way set associative, 8 entries\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"1st-level instruction cache: 8 KB, 4-way set associative, 32 byte line size\0A\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"1st-level instruction cache: 16 KB, 4-way set associative, 32 byte line size\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"1st-level instruction cache: 32 KB, 4-way set associative, 64 byte line size\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"1st-level data cache: 8 KB, 2-way set associative, 32 byte line size\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Instruction TLB: 4 MByte pages, 4-way set associative, 4 entries\0A\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"1st-level data cache: 16 KB, 4-way set associative, 32 byte line size\0A\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"1st-level data cache: 16 KBytes, 4-way set associative, 64 byte line size\00", align 1
@.str.11 = private unnamed_addr constant [75 x i8] c"1st-level data cache: 24 KBytes, 6-way set associative, 64 byte line size\0A\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"2nd-level cache: 128 KBytes, 2-way set associative, 64 byte line size\0A\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"2nd-level cache: 256 KBytes, 8-way set associative, 64 byte line size\0A\00", align 1
@.str.14 = private unnamed_addr constant [83 x i8] c"3rd-level cache: 512 KB, 4-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.15 = private unnamed_addr constant [81 x i8] c"3rd-level cache: 1 MB, 8-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"2nd-level cache: 1 MBytes, 16-way set associative, 64 byte line size\0A\00", align 1
@.str.17 = private unnamed_addr constant [81 x i8] c"3rd-level cache: 2 MB, 8-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.18 = private unnamed_addr constant [81 x i8] c"3rd-level cache: 4 MB, 8-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"1st-level data cache: 32 KB, 8-way set associative, 64 byte line size\0A\00", align 1
@.str.20 = private unnamed_addr constant [78 x i8] c"1st-level instruction cache: 32 KB, 8-way set associative, 64 byte line size\0A\00", align 1
@.str.21 = private unnamed_addr constant [83 x i8] c"2nd-level cache: 128 KB, 4-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.22 = private unnamed_addr constant [83 x i8] c"2nd-level cache: 128 KB, 2-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.23 = private unnamed_addr constant [83 x i8] c"2nd-level cache: 256 KB, 4-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"2nd-level cache: 128 KB, 4-way set associative, 32 byte line size\0A\00", align 1
@.str.25 = private unnamed_addr constant [67 x i8] c"2nd-level cache: 256 KB, 4-way set associative, 32 byte line size\0A\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"2nd-level cache: 512 KB, 4-way set associative, 32 byte line size\0A\00", align 1
@.str.27 = private unnamed_addr constant [65 x i8] c"2nd-level cache: 1 MB, 4-way set associative, 32 byte line size\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"2nd-level cache: 2 MB, 4-way set associative, 32 byte line size\0A\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"3rd-level cache: 4 MB, 4-way set associative, 64 byte line size\0A\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"3rd-level cache: 8 MB, 8-way set associative, 64 byte line size\0A\00", align 1
@.str.31 = private unnamed_addr constant [68 x i8] c"2nd-level cache: 3MByte, 12-way set associative, 64 byte line size\0A\00", align 1
@cpu_id = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [65 x i8] c"3rd-level cache: 4MB, 16-way set associative, 64-byte line size\0A\00", align 1
@.str.33 = private unnamed_addr constant [68 x i8] c"2nd-level cache: 4 MByte, 16-way set associative, 64 byte line size\00", align 1
@.str.34 = private unnamed_addr constant [68 x i8] c"3rd-level cache: 6MByte, 12-way set associative, 64 byte line size\0A\00", align 1
@.str.35 = private unnamed_addr constant [68 x i8] c"3rd-level cache: 8MByte, 16-way set associative, 64 byte line size\0A\00", align 1
@.str.36 = private unnamed_addr constant [69 x i8] c"3rd-level cache: 12MByte, 12-way set associative, 64 byte line size\0A\00", align 1
@.str.37 = private unnamed_addr constant [69 x i8] c"3rd-level cache: 16MByte, 16-way set associative, 64 byte line size\0A\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"2nd-level cache: 6MByte, 24-way set associative, 64 byte line size\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"Instruction TLB: 4 KByte pages, 32 entries\0A\00", align 1
@.str.40 = private unnamed_addr constant [74 x i8] c"Instruction TLB: 4 KB, 2 MB or 4 MB pages, fully associative, 64 entries\0A\00", align 1
@.str.41 = private unnamed_addr constant [75 x i8] c"Instruction TLB: 4 KB, 2 MB or 4 MB pages, fully associative, 128 entries\0A\00", align 1
@.str.42 = private unnamed_addr constant [75 x i8] c"Instruction TLB: 4 KB, 2 MB or 4 MB pages, fully associative, 256 entries\0A\00", align 1
@.str.43 = private unnamed_addr constant [73 x i8] c"Instruction TLB: 2-MByte or 4-MByte pages, fully associative, 7 entries\0A\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"Data TLB0: 4 MByte pages, 4-way set associative, 16 entries\0A\00", align 1
@.str.45 = private unnamed_addr constant [57 x i8] c"Data TLB0: 4 KByte pages, 4-way associative, 16 entries\0A\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"Data TLB0: 4 KByte pages, fully associative, 16 entries\0A\00", align 1
@.str.47 = private unnamed_addr constant [72 x i8] c"Data TLB0: 2-MByte or 4 MByte pages, 4-way set associative, 32 entries\0A\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"Data TLB: 4 KB or 4 MB pages, fully associative, 64 entries\0A\00", align 1
@.str.49 = private unnamed_addr constant [62 x i8] c"Data TLB: 4 KB or 4 MB pages, fully associative, 128 entries\0A\00", align 1
@.str.50 = private unnamed_addr constant [62 x i8] c"Data TLB: 4 KB or 4 MB pages, fully associative, 256 entries\0A\00", align 1
@.str.51 = private unnamed_addr constant [87 x i8] c"1st-level data cache: 16 KB, 8-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.52 = private unnamed_addr constant [63 x i8] c"Instruction TLB: 4 KByte pages, fully associative, 48 entries\0A\00", align 1
@.str.53 = private unnamed_addr constant [145 x i8] c"Data TLB: 2 MByte or 4 MByte pages, 4-way set associative, 32 entries and a separate array with 1 GByte pages, 4-way set associative, 4 entries\0A\00", align 1
@.str.54 = private unnamed_addr constant [62 x i8] c"Data TLB: 4 KBytes pages, 4-way set associative, 512 entries\0A\00", align 1
@.str.55 = private unnamed_addr constant [86 x i8] c"1st-level data cache: 8 KB, 4-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.56 = private unnamed_addr constant [87 x i8] c"1st-level data cache: 16 KB, 4-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.57 = private unnamed_addr constant [87 x i8] c"1st-level data cache: 32 KB, 4 way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.58 = private unnamed_addr constant [55 x i8] c"uTLB: 4KByte pages, 8-way set associative, 64 entries\0A\00", align 1
@.str.59 = private unnamed_addr constant [56 x i8] c"DTLB: 4KByte pages, 8-way set associative, 256 entries\0A\00", align 1
@.str.60 = private unnamed_addr constant [55 x i8] c"DTLB: 2M/4M pages, 8-way set associative, 128 entries\0A\00", align 1
@.str.61 = private unnamed_addr constant [52 x i8] c"DTLB: 1 GByte pages, fully associative, 16 entries\0A\00", align 1
@.str.62 = private unnamed_addr constant [46 x i8] c"Trace cache: 12K-uops, 8-way set associative\0A\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"Trace cache: 16K-uops, 8-way set associative\0A\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"Trace cache: 32K-uops, 8-way set associative\0A\00", align 1
@.str.65 = private unnamed_addr constant [60 x i8] c"Instruction TLB: 2M/4M pages, fully associative, 8 entries\0A\00", align 1
@.str.66 = private unnamed_addr constant [65 x i8] c"2nd-level cache: 1 MB, 4-way set associative, 64-byte line size\0A\00", align 1
@.str.67 = private unnamed_addr constant [83 x i8] c"2nd-level cache: 128 KB, 8-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.68 = private unnamed_addr constant [83 x i8] c"2nd-level cache: 256 KB, 8-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.69 = private unnamed_addr constant [83 x i8] c"2nd-level cache: 512 KB, 8-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.70 = private unnamed_addr constant [81 x i8] c"2nd-level cache: 1 MB, 8-way set associative, sectored cache, 64 byte line size\0A\00", align 1
@.str.71 = private unnamed_addr constant [65 x i8] c"2nd-level cache: 2-MB, 8-way set associative, 64-byte line size\0A\00", align 1
@.str.72 = private unnamed_addr constant [67 x i8] c"2nd-level cache: 512-KB, 2-way set associative, 64-byte line size\0A\00", align 1
@.str.73 = private unnamed_addr constant [70 x i8] c"2nd-level cache: 512 KByte, 8-way set associative, 64-byte line size\0A\00", align 1
@.str.74 = private unnamed_addr constant [67 x i8] c"2nd-level cache: 256 KB, 8-way set associative, 32 byte line size\0A\00", align 1
@.str.75 = private unnamed_addr constant [67 x i8] c"2nd-level cache: 512 KB, 8-way set associative, 32 byte line size\0A\00", align 1
@.str.76 = private unnamed_addr constant [65 x i8] c"2nd-level cache: 1 MB, 8-way set associative, 32 byte line size\0A\00", align 1
@.str.77 = private unnamed_addr constant [65 x i8] c"2nd-level cache: 2 MB, 8-way set associative, 32 byte line size\0A\00", align 1
@.str.78 = private unnamed_addr constant [67 x i8] c"2nd-level cache: 512 KB, 4-way set associative, 64 byte line size\0A\00", align 1
@.str.79 = private unnamed_addr constant [65 x i8] c"2nd-level cache: 1 MB, 8-way set associative, 64 byte line size\0A\00", align 1
@.str.80 = private unnamed_addr constant [47 x i8] c"DTLB: 4k pages, fully associative, 32 entries\0A\00", align 1
@.str.81 = private unnamed_addr constant [65 x i8] c"Instruction TLB: 4 KB Pages, 4-way set associative, 128 entries\0A\00", align 1
@.str.82 = private unnamed_addr constant [75 x i8] c"Instruction TLB: 2M pages, 4-way, 8 entries or 4M pages, 4-way, 4 entries\0A\00", align 1
@.str.83 = private unnamed_addr constant [66 x i8] c"Instruction TLB: 4KByte pages, 4-way set associative, 64 entries\0A\00", align 1
@.str.84 = private unnamed_addr constant [58 x i8] c"Data TLB: 4 KB Pages, 4-way set associative, 128 entries\0A\00", align 1
@.str.85 = private unnamed_addr constant [58 x i8] c"Data TLB1: 4 KByte pages, 4-way associative, 256 entries\0A\00", align 1
@.str.86 = private unnamed_addr constant [66 x i8] c"Instruction TLB: 4KByte pages, 8-way set associative, 64 entries\0A\00", align 1
@.str.87 = private unnamed_addr constant [67 x i8] c"Instruction TLB: 4KByte pages, 8-way set associative, 128 entries\0A\00", align 1
@.str.88 = private unnamed_addr constant [57 x i8] c"Data TLB1: 4 KByte pages, 4-way associative, 64 entries\0A\00", align 1
@.str.89 = private unnamed_addr constant [67 x i8] c"Data TLB: 4 KByte and 4 MByte pages, 4-way associative, 8 entries\0A\00", align 1
@.str.90 = private unnamed_addr constant [77 x i8] c"Shared 2nd-Level TLB: 4 KByte/2MByte pages, 8-way associative, 1024 entries\0A\00", align 1
@.str.91 = private unnamed_addr constant [60 x i8] c"DTLB: 4 KByte/2 MByte pages, 4-way associative, 16 entries\0A\00", align 1
@.str.92 = private unnamed_addr constant [118 x i8] c"Shared 2nd-Level TLB: 4 KByte /2 MByte pages, 6-way associative, 1536 entries. Also 1GBbyte pages, 4-way, 16 entries\0A\00", align 1
@.str.93 = private unnamed_addr constant [55 x i8] c"DTLB: 2M/4M Byte pages, 4-way associative, 32 entries\0A\00", align 1
@.str.94 = private unnamed_addr constant [69 x i8] c"Shared 2nd-Level TLB: 4 KByte pages, 4-way associative, 512 entries\0A\00", align 1
@.str.95 = private unnamed_addr constant [70 x i8] c"3rd-level cache: 512 KByte, 4-way set associative, 64 byte line size\0A\00", align 1
@.str.96 = private unnamed_addr constant [68 x i8] c"3rd-level cache: 1 MByte, 4-way set associative, 64 byte line size\0A\00", align 1
@.str.97 = private unnamed_addr constant [68 x i8] c"3rd-level cache: 2 MByte, 4-way set associative, 64 byte line size\0A\00", align 1
@.str.98 = private unnamed_addr constant [68 x i8] c"3rd-level cache: 1 MByte, 8-way set associative, 64 byte line size\0A\00", align 1
@.str.99 = private unnamed_addr constant [68 x i8] c"3rd-level cache: 2 MByte, 8-way set associative, 64 byte line size\0A\00", align 1
@.str.100 = private unnamed_addr constant [68 x i8] c"3rd-level cache: 4 MByte, 8-way set associative, 64 byte line size\0A\00", align 1
@.str.101 = private unnamed_addr constant [71 x i8] c"3rd-level cache: 1.5 MByte, 12-way set associative, 64 byte line size\0A\00", align 1
@.str.102 = private unnamed_addr constant [69 x i8] c"3rd-level cache: 3 MByte, 12-way set associative, 64 byte line size\0A\00", align 1
@.str.103 = private unnamed_addr constant [69 x i8] c"3rd-level cache: 6 MByte, 12-way set associative, 64 byte line size\0A\00", align 1
@.str.104 = private unnamed_addr constant [69 x i8] c"3rd-level cache: 2 MByte, 16-way set associative, 64 byte line size\0A\00", align 1
@.str.105 = private unnamed_addr constant [69 x i8] c"3rd-level cache: 4 MByte, 16-way set associative, 64 byte line size\0A\00", align 1
@.str.106 = private unnamed_addr constant [69 x i8] c"3rd-level cache: 8 MByte, 16-way set associative, 64 byte line size\0A\00", align 1
@.str.107 = private unnamed_addr constant [69 x i8] c"3rd-level cache: 12MByte, 24-way set associative, 64 byte line size\0A\00", align 1
@.str.108 = private unnamed_addr constant [69 x i8] c"3rd-level cache: 18MByte, 24-way set associative, 64 byte line size\0A\00", align 1
@.str.109 = private unnamed_addr constant [69 x i8] c"3rd-level cache: 24MByte, 24-way set associative, 64 byte line size\0A\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"64-Byte prefetching\0A\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"128-Byte prefetching\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_INTEL_TLB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_INTEL_TLB(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %5 [
    i32 0, label %4
    i32 64, label %4
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 6, label %14
    i32 8, label %16
    i32 9, label %18
    i32 10, label %20
    i32 11, label %22
    i32 12, label %24
    i32 13, label %26
    i32 14, label %28
    i32 29, label %30
    i32 33, label %32
    i32 34, label %34
    i32 35, label %36
    i32 36, label %38
    i32 37, label %40
    i32 41, label %42
    i32 44, label %44
    i32 48, label %46
    i32 57, label %48
    i32 59, label %50
    i32 60, label %52
    i32 65, label %54
    i32 66, label %56
    i32 67, label %58
    i32 68, label %60
    i32 69, label %62
    i32 70, label %64
    i32 71, label %66
    i32 72, label %68
    i32 73, label %70
    i32 74, label %83
    i32 75, label %85
    i32 76, label %87
    i32 77, label %89
    i32 78, label %91
    i32 79, label %93
    i32 80, label %95
    i32 81, label %97
    i32 82, label %99
    i32 85, label %101
    i32 86, label %103
    i32 87, label %105
    i32 89, label %107
    i32 90, label %109
    i32 91, label %111
    i32 92, label %113
    i32 93, label %115
    i32 96, label %117
    i32 97, label %119
    i32 99, label %121
    i32 100, label %123
    i32 102, label %125
    i32 103, label %127
    i32 104, label %129
    i32 106, label %131
    i32 107, label %133
    i32 108, label %135
    i32 109, label %137
    i32 112, label %139
    i32 113, label %141
    i32 114, label %143
    i32 118, label %145
    i32 120, label %147
    i32 121, label %149
    i32 122, label %151
    i32 123, label %153
    i32 124, label %155
    i32 125, label %157
    i32 127, label %159
    i32 128, label %161
    i32 130, label %163
    i32 131, label %165
    i32 132, label %167
    i32 133, label %169
    i32 134, label %171
    i32 135, label %173
    i32 160, label %175
    i32 176, label %177
    i32 177, label %179
    i32 178, label %181
    i32 179, label %183
    i32 180, label %185
    i32 181, label %187
    i32 182, label %189
    i32 186, label %191
    i32 192, label %193
    i32 193, label %195
    i32 194, label %197
    i32 195, label %199
    i32 196, label %201
    i32 202, label %203
    i32 208, label %205
    i32 209, label %207
    i32 210, label %209
    i32 214, label %211
    i32 215, label %213
    i32 216, label %215
    i32 220, label %217
    i32 221, label %219
    i32 222, label %221
    i32 226, label %223
    i32 227, label %225
    i32 228, label %227
    i32 234, label %229
    i32 235, label %231
    i32 236, label %233
    i32 240, label %235
    i32 241, label %237
  ]

4:                                                ; preds = %1, %1
  br label %5

5:                                                ; preds = %1, %4
  br label %239

6:                                                ; preds = %1
  %7 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %239

8:                                                ; preds = %1
  %9 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %239

10:                                               ; preds = %1
  %11 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %239

12:                                               ; preds = %1
  %13 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %239

14:                                               ; preds = %1
  %15 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  br label %239

16:                                               ; preds = %1
  %17 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0))
  br label %239

18:                                               ; preds = %1
  %19 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0))
  br label %239

20:                                               ; preds = %1
  %21 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  br label %239

22:                                               ; preds = %1
  %23 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0))
  br label %239

24:                                               ; preds = %1
  %25 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0))
  br label %239

26:                                               ; preds = %1
  %27 = call i32 @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i64 0, i64 0))
  br label %239

28:                                               ; preds = %1
  %29 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i64 0, i64 0))
  br label %239

30:                                               ; preds = %1
  %31 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0))
  br label %239

32:                                               ; preds = %1
  %33 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i64 0, i64 0))
  br label %239

34:                                               ; preds = %1
  %35 = call i32 @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.14, i64 0, i64 0))
  br label %239

36:                                               ; preds = %1
  %37 = call i32 @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.15, i64 0, i64 0))
  br label %239

38:                                               ; preds = %1
  %39 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i64 0, i64 0))
  br label %239

40:                                               ; preds = %1
  %41 = call i32 @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.17, i64 0, i64 0))
  br label %239

42:                                               ; preds = %1
  %43 = call i32 @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.18, i64 0, i64 0))
  br label %239

44:                                               ; preds = %1
  %45 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i64 0, i64 0))
  br label %239

46:                                               ; preds = %1
  %47 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.20, i64 0, i64 0))
  br label %239

48:                                               ; preds = %1
  %49 = call i32 @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.21, i64 0, i64 0))
  br label %239

50:                                               ; preds = %1
  %51 = call i32 @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.22, i64 0, i64 0))
  br label %239

52:                                               ; preds = %1
  %53 = call i32 @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.23, i64 0, i64 0))
  br label %239

54:                                               ; preds = %1
  %55 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i64 0, i64 0))
  br label %239

56:                                               ; preds = %1
  %57 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.25, i64 0, i64 0))
  br label %239

58:                                               ; preds = %1
  %59 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i64 0, i64 0))
  br label %239

60:                                               ; preds = %1
  %61 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.27, i64 0, i64 0))
  br label %239

62:                                               ; preds = %1
  %63 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i64 0, i64 0))
  br label %239

64:                                               ; preds = %1
  %65 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i64 0, i64 0))
  br label %239

66:                                               ; preds = %1
  %67 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.30, i64 0, i64 0))
  br label %239

68:                                               ; preds = %1
  %69 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i64 0, i64 0))
  br label %239

70:                                               ; preds = %1
  %71 = load i32, i32* @cpu_id, align 4
  %72 = call i32 @CPUID_TO_FAMILY(i32 %71)
  %73 = icmp eq i32 %72, 15
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @cpu_id, align 4
  %76 = call i32 @CPUID_TO_MODEL(i32 %75)
  %77 = icmp eq i32 %76, 6
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.32, i64 0, i64 0))
  br label %82

80:                                               ; preds = %74, %70
  %81 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.33, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %78
  br label %239

83:                                               ; preds = %1
  %84 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.34, i64 0, i64 0))
  br label %239

85:                                               ; preds = %1
  %86 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.35, i64 0, i64 0))
  br label %239

87:                                               ; preds = %1
  %88 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.36, i64 0, i64 0))
  br label %239

89:                                               ; preds = %1
  %90 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.37, i64 0, i64 0))
  br label %239

91:                                               ; preds = %1
  %92 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.38, i64 0, i64 0))
  br label %239

93:                                               ; preds = %1
  %94 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i64 0, i64 0))
  br label %239

95:                                               ; preds = %1
  %96 = call i32 @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.40, i64 0, i64 0))
  br label %239

97:                                               ; preds = %1
  %98 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.41, i64 0, i64 0))
  br label %239

99:                                               ; preds = %1
  %100 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.42, i64 0, i64 0))
  br label %239

101:                                              ; preds = %1
  %102 = call i32 @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.43, i64 0, i64 0))
  br label %239

103:                                              ; preds = %1
  %104 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0))
  br label %239

105:                                              ; preds = %1
  %106 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.45, i64 0, i64 0))
  br label %239

107:                                              ; preds = %1
  %108 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i64 0, i64 0))
  br label %239

109:                                              ; preds = %1
  %110 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.47, i64 0, i64 0))
  br label %239

111:                                              ; preds = %1
  %112 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.48, i64 0, i64 0))
  br label %239

113:                                              ; preds = %1
  %114 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.49, i64 0, i64 0))
  br label %239

115:                                              ; preds = %1
  %116 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.50, i64 0, i64 0))
  br label %239

117:                                              ; preds = %1
  %118 = call i32 @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.51, i64 0, i64 0))
  br label %239

119:                                              ; preds = %1
  %120 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.52, i64 0, i64 0))
  br label %239

121:                                              ; preds = %1
  %122 = call i32 @printf(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.53, i64 0, i64 0))
  br label %239

123:                                              ; preds = %1
  %124 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.54, i64 0, i64 0))
  br label %239

125:                                              ; preds = %1
  %126 = call i32 @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.55, i64 0, i64 0))
  br label %239

127:                                              ; preds = %1
  %128 = call i32 @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.56, i64 0, i64 0))
  br label %239

129:                                              ; preds = %1
  %130 = call i32 @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.57, i64 0, i64 0))
  br label %239

131:                                              ; preds = %1
  %132 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.58, i64 0, i64 0))
  br label %239

133:                                              ; preds = %1
  %134 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0))
  br label %239

135:                                              ; preds = %1
  %136 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i64 0, i64 0))
  br label %239

137:                                              ; preds = %1
  %138 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.61, i64 0, i64 0))
  br label %239

139:                                              ; preds = %1
  %140 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.62, i64 0, i64 0))
  br label %239

141:                                              ; preds = %1
  %142 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i64 0, i64 0))
  br label %239

143:                                              ; preds = %1
  %144 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0))
  br label %239

145:                                              ; preds = %1
  %146 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.65, i64 0, i64 0))
  br label %239

147:                                              ; preds = %1
  %148 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.66, i64 0, i64 0))
  br label %239

149:                                              ; preds = %1
  %150 = call i32 @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.67, i64 0, i64 0))
  br label %239

151:                                              ; preds = %1
  %152 = call i32 @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.68, i64 0, i64 0))
  br label %239

153:                                              ; preds = %1
  %154 = call i32 @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.69, i64 0, i64 0))
  br label %239

155:                                              ; preds = %1
  %156 = call i32 @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.70, i64 0, i64 0))
  br label %239

157:                                              ; preds = %1
  %158 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.71, i64 0, i64 0))
  br label %239

159:                                              ; preds = %1
  %160 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.72, i64 0, i64 0))
  br label %239

161:                                              ; preds = %1
  %162 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.73, i64 0, i64 0))
  br label %239

163:                                              ; preds = %1
  %164 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.74, i64 0, i64 0))
  br label %239

165:                                              ; preds = %1
  %166 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.75, i64 0, i64 0))
  br label %239

167:                                              ; preds = %1
  %168 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.76, i64 0, i64 0))
  br label %239

169:                                              ; preds = %1
  %170 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.77, i64 0, i64 0))
  br label %239

171:                                              ; preds = %1
  %172 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.78, i64 0, i64 0))
  br label %239

173:                                              ; preds = %1
  %174 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.79, i64 0, i64 0))
  br label %239

175:                                              ; preds = %1
  %176 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.80, i64 0, i64 0))
  br label %239

177:                                              ; preds = %1
  %178 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.81, i64 0, i64 0))
  br label %239

179:                                              ; preds = %1
  %180 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.82, i64 0, i64 0))
  br label %239

181:                                              ; preds = %1
  %182 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.83, i64 0, i64 0))
  br label %239

183:                                              ; preds = %1
  %184 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.84, i64 0, i64 0))
  br label %239

185:                                              ; preds = %1
  %186 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.85, i64 0, i64 0))
  br label %239

187:                                              ; preds = %1
  %188 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.86, i64 0, i64 0))
  br label %239

189:                                              ; preds = %1
  %190 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.87, i64 0, i64 0))
  br label %239

191:                                              ; preds = %1
  %192 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.88, i64 0, i64 0))
  br label %239

193:                                              ; preds = %1
  %194 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.89, i64 0, i64 0))
  br label %239

195:                                              ; preds = %1
  %196 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.90, i64 0, i64 0))
  br label %239

197:                                              ; preds = %1
  %198 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.91, i64 0, i64 0))
  br label %239

199:                                              ; preds = %1
  %200 = call i32 @printf(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.92, i64 0, i64 0))
  br label %239

201:                                              ; preds = %1
  %202 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.93, i64 0, i64 0))
  br label %239

203:                                              ; preds = %1
  %204 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.94, i64 0, i64 0))
  br label %239

205:                                              ; preds = %1
  %206 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.95, i64 0, i64 0))
  br label %239

207:                                              ; preds = %1
  %208 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.96, i64 0, i64 0))
  br label %239

209:                                              ; preds = %1
  %210 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.97, i64 0, i64 0))
  br label %239

211:                                              ; preds = %1
  %212 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.98, i64 0, i64 0))
  br label %239

213:                                              ; preds = %1
  %214 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.99, i64 0, i64 0))
  br label %239

215:                                              ; preds = %1
  %216 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.100, i64 0, i64 0))
  br label %239

217:                                              ; preds = %1
  %218 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.101, i64 0, i64 0))
  br label %239

219:                                              ; preds = %1
  %220 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.102, i64 0, i64 0))
  br label %239

221:                                              ; preds = %1
  %222 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.103, i64 0, i64 0))
  br label %239

223:                                              ; preds = %1
  %224 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.104, i64 0, i64 0))
  br label %239

225:                                              ; preds = %1
  %226 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.105, i64 0, i64 0))
  br label %239

227:                                              ; preds = %1
  %228 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.106, i64 0, i64 0))
  br label %239

229:                                              ; preds = %1
  %230 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.107, i64 0, i64 0))
  br label %239

231:                                              ; preds = %1
  %232 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.108, i64 0, i64 0))
  br label %239

233:                                              ; preds = %1
  %234 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.109, i64 0, i64 0))
  br label %239

235:                                              ; preds = %1
  %236 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.110, i64 0, i64 0))
  br label %239

237:                                              ; preds = %1
  %238 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.111, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %235, %233, %231, %229, %227, %225, %223, %221, %219, %217, %215, %213, %211, %209, %207, %205, %203, %201, %199, %197, %195, %193, %191, %189, %187, %185, %183, %181, %179, %177, %175, %173, %171, %169, %167, %165, %163, %161, %159, %157, %155, %153, %151, %149, %147, %145, %143, %141, %139, %137, %135, %133, %131, %129, %127, %125, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %83, %82, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %5
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
