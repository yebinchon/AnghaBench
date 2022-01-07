; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_db_trace.c_db_backtrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_db_trace.c_db_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.trapframe = type { i32, i32, i64*, %struct.TYPE_6__, i32, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@db_pager_quit = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"saved LR(0x%zx) is invalid.\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%08x: \00", align 1
@CALLOFFSET = common dso_local global i32 0, align 4
@trapexit = common dso_local global i32 0, align 4
@asttrapexit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@PSL_PR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"DSI %s trap @ %#zx by \00", align 1
@DSISR_STORE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"ALI trap @ %#zx (xSR %#x) \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ISI\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"PGM\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"SC\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"EXI\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"MCHK\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"VEC\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"FPA\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"BPT\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"TRC\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"RUNMODETRC\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"SMI\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"RST\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"FPU\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"DECR\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"PERF\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"VSX\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"SOFT_PATCH\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"%s trap by \00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"trap %#zx by \00", align 1
@DB_STGY_ANY = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [13 x i8] c": srr1=%#zx\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"%-10s  r1=%#zx cr=%#x xer=%#x ctr=%#zx\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [8 x i8] c" sr=%#x\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c" frame=%p\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"at \00", align 1
@DB_STGY_PROC = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [41 x i8] c"(%zx, %zx, %zx, %zx, %zx, %zx, %zx, %zx)\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ESR_ST = common dso_local global i32 0, align 4
@modif = common dso_local global i8* null, align 8
@trace_thread = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32)* @db_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_backtrace(%struct.thread* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** @TRUE, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** @FALSE, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %236, %3
  %18 = load i32, i32* @db_pager_quit, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %238

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %238

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %202, %26
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %238

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %238

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 3
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 256
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %45
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %238

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @CALLOFFSET, align 4
  %66 = add nsw i32 %64, %65
  %67 = icmp eq i32 %66, ptrtoint (i32* @trapexit to i32)
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @CALLOFFSET, align 4
  %71 = add nsw i32 %69, %70
  %72 = icmp eq i32 %71, ptrtoint (i32* @asttrapexit to i32)
  br i1 %72, label %73, label %203

73:                                               ; preds = %68, %61
  %74 = load i32*, i32** %9, align 8
  %75 = bitcast i32* %74 to %struct.trapframe*
  store %struct.trapframe* %75, %struct.trapframe** %13, align 8
  %76 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %77 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PSL_PR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %84 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %86 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %130 [
    i32 144, label %88
    i32 148, label %103
    i32 139, label %113
    i32 136, label %114
    i32 133, label %115
    i32 143, label %116
    i32 138, label %117
    i32 129, label %118
    i32 142, label %119
    i32 147, label %120
    i32 130, label %121
    i32 134, label %122
    i32 132, label %123
    i32 135, label %124
    i32 141, label %125
    i32 146, label %126
    i32 137, label %127
    i32 128, label %128
    i32 131, label %129
  ]

88:                                               ; preds = %73
  %89 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %90 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DSISR_STORE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %99 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %100 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %98, i32 %101)
  br label %143

103:                                              ; preds = %73
  %104 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %105 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %108 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %106, i32 %111)
  br label %143

113:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %131

114:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %12, align 8
  br label %131

115:                                              ; preds = %73
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %12, align 8
  br label %131

116:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %12, align 8
  br label %131

117:                                              ; preds = %73
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %12, align 8
  br label %131

118:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %12, align 8
  br label %131

119:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %12, align 8
  br label %131

120:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %12, align 8
  br label %131

121:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %12, align 8
  br label %131

122:                                              ; preds = %73
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8** %12, align 8
  br label %131

123:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** %12, align 8
  br label %131

124:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8** %12, align 8
  br label %131

125:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8** %12, align 8
  br label %131

126:                                              ; preds = %73
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8** %12, align 8
  br label %131

127:                                              ; preds = %73
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %12, align 8
  br label %131

128:                                              ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8** %12, align 8
  br label %131

129:                                              ; preds = %73
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8** %12, align 8
  br label %131

130:                                              ; preds = %73
  store i8* null, i8** %12, align 8
  br label %131

131:                                              ; preds = %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113
  %132 = load i8*, i8** %12, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* %135)
  br label %142

137:                                              ; preds = %131
  %138 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %139 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %137, %134
  br label %143

143:                                              ; preds = %142, %103, %88
  %144 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %145 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @DB_STGY_ANY, align 4
  %150 = call i32 @db_printsym(i32 %148, i32 %149)
  %151 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %152 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32 %153)
  %155 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %156 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %155, i32 0, i32 2
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %161 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %165 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %169 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i64 %159, i32 %163, i32 %167, i32 %170)
  %172 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %173 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 144
  br i1 %175, label %176, label %183

176:                                              ; preds = %143
  %177 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %178 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %176, %143
  %184 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %185 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), %struct.trapframe* %184)
  %186 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %187 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %186, i32 0, i32 2
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 1
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %7, align 4
  %192 = load i8*, i8** %10, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %183
  %195 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %196 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @PSL_PR, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  br label %238

202:                                              ; preds = %194, %183
  br label %31

203:                                              ; preds = %68
  %204 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @DB_STGY_PROC, align 4
  %207 = call i32 @db_printsym(i32 %205, i32 %206)
  %208 = load i8*, i8** %11, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %236

210:                                              ; preds = %203
  %211 = load i32*, i32** %9, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %9, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %9, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %9, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 3
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %9, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 4
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %9, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 5
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %9, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 6
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %9, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 7
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i32 %213, i32 %216, i32 %219, i32 %222, i32 %225, i32 %228, i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %210, %203
  %237 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  br label %17

238:                                              ; preds = %201, %58, %44, %39, %25, %17
  ret i32 0
}

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_printsym(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
