; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_show_tracers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_show_tracers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_tracer = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32*, i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"tracing is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ENABLED\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@CHELSIO_T4_GET_TRACER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"MPS Rx\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"MPS Tx\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\0Atracer %u (currently %s) captures \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"port %u %s, \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%s %u, \00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"snap length: %u, min length: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"packets captured %smatch filter\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"do not \00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"filter pattern: \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%08x%08x\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"@0\0A\00", align 1
@T4_TRACE_LEN = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"@%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @show_tracers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_tracers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.t4_tracer, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = call i32 @read_reg(i32 38912, i32 4, i64* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %1, align 4
  br label %267

13:                                               ; preds = %0
  %14 = load i64, i64* %7, align 8
  %15 = and i64 %14, 2
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %261, %13
  %23 = load i32, i32* @CHELSIO_T4_GET_TRACER, align 4
  %24 = call i32 @doit(i32 %23, %struct.t4_tracer* %2)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %22
  br label %265

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  %38 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %5, align 4
  br label %89

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  %47 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 4
  store i32 %50, i32* %5, align 4
  br label %88

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 12
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  %57 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 8
  store i32 %60, i32* %5, align 4
  br label %87

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 16
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  %67 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 12
  store i32 %70, i32* %5, align 4
  br label %86

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %74, 20
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  %77 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 16
  store i32 %80, i32* %5, align 4
  br label %85

81:                                               ; preds = %71
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  %82 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %76
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %56
  br label %88

88:                                               ; preds = %87, %46
  br label %89

89:                                               ; preds = %88, %37
  %90 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %91, i8* %96)
  %98 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %102, label %106

102:                                              ; preds = %89
  %103 = load i32, i32* %5, align 4
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %103, i8* %104)
  br label %110

106:                                              ; preds = %89
  %107 = load i8*, i8** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %102
  %111 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %113, i32 %116)
  %118 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* %123)
  %125 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %189

129:                                              ; preds = %110
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %155, %129
  %132 = load i32, i32* %6, align 4
  %133 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 2
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %145, i32 %153)
  br label %155

155:                                              ; preds = %138
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 2
  store i32 %157, i32* %6, align 4
  br label %131

158:                                              ; preds = %131
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %184, %158
  %161 = load i32, i32* %6, align 4
  %162 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %164, 2
  %166 = icmp slt i32 %161, %165
  br i1 %166, label %167, label %187

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 5
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %174, i32 %182)
  br label %184

184:                                              ; preds = %167
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 2
  store i32 %186, i32* %6, align 4
  br label %160

187:                                              ; preds = %160
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %110
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %191 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %193, 2
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %217, %189
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @T4_TRACE_LEN, align 4
  %198 = sdiv i32 %197, 4
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %200, label %220

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 4
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %207, i32 %215)
  br label %217

217:                                              ; preds = %200
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 2
  store i32 %219, i32* %6, align 4
  br label %195

220:                                              ; preds = %195
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %222 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %224, 2
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %248, %220
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @T4_TRACE_LEN, align 4
  %229 = sdiv i32 %228, 4
  %230 = icmp slt i32 %227, %229
  br i1 %230, label %231, label %251

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 5
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 5
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %238, i32 %246)
  br label %248

248:                                              ; preds = %231
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, 2
  store i32 %250, i32* %6, align 4
  br label %226

251:                                              ; preds = %226
  %252 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %254, %257
  %259 = mul nsw i32 %258, 8
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %251
  %262 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %2, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 8
  br label %22

265:                                              ; preds = %31
  %266 = load i32, i32* %4, align 4
  store i32 %266, i32* %1, align 4
  br label %267

267:                                              ; preds = %265, %11
  %268 = load i32, i32* %1, align 4
  ret i32 %268
}

declare dso_local i32 @read_reg(i32, i32, i64*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @doit(i32, %struct.t4_tracer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
