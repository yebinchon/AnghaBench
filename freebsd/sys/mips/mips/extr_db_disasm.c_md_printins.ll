; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_db_disasm.c_md_printins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_db_disasm.c_md_printins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@OP_ADDU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"move\09%s,%s\00", align 1
@reg_name = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@spec_name = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"\09%s,%s,%d\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\09%s,%s,%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\09%s,%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\09%d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s\09%s,\00", align 1
@bcond_name = common dso_local global i32* null, align 8
@op_name = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"b\09\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s\09%s,%s,\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"bc0%c\09\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@COPz_BC_TF_MASK = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"mtc0\09%s,%s\00", align 1
@c0_reg = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"dmtc0\09%s,%s\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"mfc0\09%s,%s\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"dmfc0\09%s,%s\00", align 1
@c0_opname = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"bc1%c\09\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"mtc1\09%s,f%d\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"mfc1\09%s,f%d\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"ctc1\09%s,f%d\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"cfc1\09%s,f%d\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"%s.%s\09f%d,f%d,f%d\00", align 1
@cop1_name = common dso_local global i32* null, align 8
@fmt_name = common dso_local global i32* null, align 8
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"0x%8x\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"%s\09f%d,\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%d(%s)\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"li\09%s,0x%x\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"%s\09%s,%s,0x%x\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"%s\09%s,0x%x\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"li\09%s,%d\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"%s\09%s,%s,%d\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @md_printins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_printins(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %518 [
    i32 137, label %12
    i32 199, label %154
    i32 192, label %168
    i32 191, label %168
    i32 194, label %168
    i32 193, label %168
    i32 196, label %182
    i32 195, label %182
    i32 190, label %195
    i32 189, label %195
    i32 186, label %226
    i32 185, label %305
    i32 164, label %387
    i32 163, label %387
    i32 153, label %404
    i32 131, label %404
    i32 160, label %415
    i32 157, label %415
    i32 154, label %415
    i32 158, label %415
    i32 159, label %415
    i32 156, label %415
    i32 152, label %415
    i32 142, label %415
    i32 140, label %415
    i32 132, label %415
    i32 141, label %415
    i32 143, label %442
    i32 128, label %442
    i32 200, label %459
    i32 155, label %482
    i32 202, label %499
    i32 183, label %499
    i32 201, label %499
    i32 182, label %499
  ]

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %543

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OP_ADDU, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32*, i32** @reg_name, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @reg_name, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %41)
  br label %543

43:                                               ; preds = %24, %18
  %44 = load i32*, i32** @spec_name, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  switch i64 %53, label %133 [
    i64 139, label %54
    i64 134, label %54
    i64 136, label %54
    i64 173, label %54
    i64 167, label %54
    i64 170, label %54
    i64 172, label %54
    i64 166, label %54
    i64 169, label %54
    i64 138, label %71
    i64 133, label %71
    i64 135, label %71
    i64 171, label %71
    i64 165, label %71
    i64 168, label %71
    i64 150, label %91
    i64 149, label %91
    i64 161, label %99
    i64 162, label %99
    i64 146, label %100
    i64 147, label %100
    i64 145, label %108
    i64 144, label %108
    i64 175, label %108
    i64 174, label %108
    i64 179, label %108
    i64 178, label %108
    i64 181, label %108
    i64 180, label %108
    i64 129, label %122
    i64 130, label %122
    i64 188, label %123
  ]

54:                                               ; preds = %43, %43, %43, %43, %43, %43, %43, %43, %43
  %55 = load i32*, i32** @reg_name, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** @reg_name, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %66, i32 %69)
  br label %153

71:                                               ; preds = %43, %43, %43, %43, %43, %43
  %72 = load i32*, i32** @reg_name, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** @reg_name, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** @reg_name, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %83, i32 %89)
  br label %153

91:                                               ; preds = %43, %43
  %92 = load i32*, i32** @reg_name, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %153

99:                                               ; preds = %43, %43
  store i32 1, i32* %6, align 4
  br label %100

100:                                              ; preds = %43, %43, %99
  %101 = load i32*, i32** @reg_name, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %153

108:                                              ; preds = %43, %43, %43, %43, %43, %43, %43, %43
  %109 = load i32*, i32** @reg_name, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** @reg_name, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %114, i32 %120)
  br label %153

122:                                              ; preds = %43, %43
  br label %153

123:                                              ; preds = %43
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = shl i64 %126, 5
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = or i64 %127, %130
  %132 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 %131)
  br label %153

133:                                              ; preds = %43
  %134 = load i32*, i32** @reg_name, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @reg_name, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @reg_name, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %139, i32 %145, i32 %151)
  br label %153

153:                                              ; preds = %133, %123, %122, %108, %100, %91, %71, %54
  br label %543

154:                                              ; preds = %2
  %155 = load i32*, i32** @bcond_name, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** @reg_name, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %160, i32 %166)
  br label %215

168:                                              ; preds = %2, %2, %2, %2
  %169 = load i32*, i32** @op_name, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** @reg_name, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %174, i32 %180)
  br label %215

182:                                              ; preds = %2, %2
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %215

194:                                              ; preds = %187, %182
  br label %195

195:                                              ; preds = %2, %2, %194
  %196 = load i32*, i32** @op_name, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** @reg_name, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** @reg_name, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %201, i32 %207, i32 %213)
  br label %215

215:                                              ; preds = %309, %230, %195, %192, %168, %154
  store i32 1, i32* %6, align 4
  %216 = load i32, i32* %4, align 4
  %217 = add nsw i32 %216, 4
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i16
  %222 = sext i16 %221 to i32
  %223 = shl i32 %222, 2
  %224 = add nsw i32 %217, %223
  %225 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %224)
  br label %543

226:                                              ; preds = %2
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  switch i64 %229, label %296 [
    i64 198, label %230
    i64 197, label %230
    i64 148, label %240
    i64 176, label %254
    i64 151, label %268
    i64 177, label %282
  ]

230:                                              ; preds = %226, %226
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @COPz_BC_TF_MASK, align 8
  %235 = and i64 %233, %234
  %236 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.13, i64 0, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %238)
  br label %215

240:                                              ; preds = %226
  %241 = load i32*, i32** @reg_name, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** @c0_reg, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %246, i32 %252)
  br label %304

254:                                              ; preds = %226
  %255 = load i32*, i32** @reg_name, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** @c0_reg, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %260, i32 %266)
  br label %304

268:                                              ; preds = %226
  %269 = load i32*, i32** @reg_name, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** @c0_reg, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %274, i32 %280)
  br label %304

282:                                              ; preds = %226
  %283 = load i32*, i32** @reg_name, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32*, i32** @c0_reg, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %288, i32 %294)
  br label %304

296:                                              ; preds = %226
  %297 = load i32*, i32** @c0_opname, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %302)
  br label %304

304:                                              ; preds = %296, %282, %268, %254, %240
  br label %543

305:                                              ; preds = %2
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  switch i64 %308, label %363 [
    i64 198, label %309
    i64 197, label %309
    i64 148, label %319
    i64 151, label %330
    i64 184, label %341
    i64 187, label %352
  ]

309:                                              ; preds = %305, %305
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @COPz_BC_TF_MASK, align 8
  %314 = and i64 %312, %313
  %315 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.13, i64 0, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 %317)
  br label %215

319:                                              ; preds = %305
  %320 = load i32*, i32** @reg_name, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds i32, i32* %320, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %325, i64 %328)
  br label %386

330:                                              ; preds = %305
  %331 = load i32*, i32** @reg_name, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %336, i64 %339)
  br label %386

341:                                              ; preds = %305
  %342 = load i32*, i32** @reg_name, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds i32, i32* %342, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 %347, i64 %350)
  br label %386

352:                                              ; preds = %305
  %353 = load i32*, i32** @reg_name, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = getelementptr inbounds i32, i32* %353, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %358, i64 %361)
  br label %386

363:                                              ; preds = %305
  %364 = load i32*, i32** @cop1_name, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds i32, i32* %364, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load i32*, i32** @fmt_name, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = getelementptr inbounds i32, i32* %370, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 4
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %369, i32 %375, i32 %378, i32 %381, i32 %384)
  br label %386

386:                                              ; preds = %363, %352, %341, %330, %319
  br label %543

387:                                              ; preds = %2, %2
  %388 = load i32*, i32** @op_name, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %388, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32 %394)
  %396 = load i32, i32* %4, align 4
  %397 = and i32 %396, -268435456
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = shl i32 %400, 2
  %402 = or i32 %397, %401
  %403 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %402)
  store i32 1, i32* %6, align 4
  br label %543

404:                                              ; preds = %2, %2
  %405 = load i32*, i32** @op_name, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = getelementptr inbounds i32, i32* %405, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 %410, i64 %413)
  br label %429

415:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %416 = load i32*, i32** @op_name, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = getelementptr inbounds i32, i32* %416, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = load i32*, i32** @reg_name, align 8
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %421, i32 %427)
  br label %429

429:                                              ; preds = %415, %404
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 3
  %432 = load i64, i64* %431, align 8
  %433 = trunc i64 %432 to i16
  %434 = sext i16 %433 to i32
  %435 = load i32*, i32** @reg_name, align 8
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = getelementptr inbounds i32, i32* %435, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 %434, i32 %440)
  br label %543

442:                                              ; preds = %2, %2
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i32 0, i32 1
  %445 = load i64, i64* %444, align 8
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %458

447:                                              ; preds = %442
  %448 = load i32*, i32** @reg_name, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds i32, i32* %448, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 3
  %456 = load i64, i64* %455, align 8
  %457 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i32 %453, i64 %456)
  br label %543

458:                                              ; preds = %442
  br label %459

459:                                              ; preds = %2, %458
  %460 = load i32*, i32** @op_name, align 8
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %461, i32 0, i32 2
  %463 = load i64, i64* %462, align 8
  %464 = getelementptr inbounds i32, i32* %460, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = load i32*, i32** @reg_name, align 8
  %467 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = getelementptr inbounds i32, i32* %466, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = load i32*, i32** @reg_name, align 8
  %473 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %473, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = getelementptr inbounds i32, i32* %472, i64 %475
  %477 = load i32, i32* %476, align 4
  %478 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 3
  %480 = load i64, i64* %479, align 8
  %481 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32 %465, i32 %471, i32 %477, i64 %480)
  br label %543

482:                                              ; preds = %2
  %483 = load i32*, i32** @op_name, align 8
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %484, i32 0, i32 2
  %486 = load i64, i64* %485, align 8
  %487 = getelementptr inbounds i32, i32* %483, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = load i32*, i32** @reg_name, align 8
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = getelementptr inbounds i32, i32* %489, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %495, i32 0, i32 3
  %497 = load i64, i64* %496, align 8
  %498 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i32 %488, i32 %494, i64 %497)
  br label %543

499:                                              ; preds = %2, %2, %2, %2
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %500, i32 0, i32 1
  %502 = load i64, i64* %501, align 8
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %504, label %517

504:                                              ; preds = %499
  %505 = load i32*, i32** @reg_name, align 8
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = getelementptr inbounds i32, i32* %505, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %512 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %511, i32 0, i32 3
  %513 = load i64, i64* %512, align 8
  %514 = trunc i64 %513 to i16
  %515 = sext i16 %514 to i32
  %516 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i32 %510, i32 %515)
  br label %543

517:                                              ; preds = %499
  br label %518

518:                                              ; preds = %2, %517
  %519 = load i32*, i32** @op_name, align 8
  %520 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 2
  %522 = load i64, i64* %521, align 8
  %523 = getelementptr inbounds i32, i32* %519, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = load i32*, i32** @reg_name, align 8
  %526 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %527 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %526, i32 0, i32 0
  %528 = load i64, i64* %527, align 8
  %529 = getelementptr inbounds i32, i32* %525, i64 %528
  %530 = load i32, i32* %529, align 4
  %531 = load i32*, i32** @reg_name, align 8
  %532 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %532, i32 0, i32 1
  %534 = load i64, i64* %533, align 8
  %535 = getelementptr inbounds i32, i32* %531, i64 %534
  %536 = load i32, i32* %535, align 4
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %538 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %537, i32 0, i32 3
  %539 = load i64, i64* %538, align 8
  %540 = trunc i64 %539 to i16
  %541 = sext i16 %540 to i32
  %542 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 %524, i32 %530, i32 %536, i32 %541)
  br label %543

543:                                              ; preds = %518, %504, %482, %459, %447, %429, %387, %386, %304, %215, %153, %29, %16
  %544 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  %545 = load i32, i32* %6, align 4
  ret i32 %545
}

declare dso_local i32 @db_printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
