; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.g_provider*, i64, i32, i32, i32 }
%struct.g_provider = type { %struct.g_geom* }
%struct.g_geom = type { i32, %struct.g_nop_softc* }
%struct.g_nop_softc = type { i64, i32, i32, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.g_nop_delay = type { i32, %struct.bio* }

@.str = private unnamed_addr constant [18 x i8] c"Request received.\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"GEOM::physpath\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"GEOM::kerneldump\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Returning error=%d.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@g_std_done = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"NULL pp\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@dl_next = common dso_local global i32 0, align 4
@g_nop_pass_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_nop_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_nop_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_nop_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.g_nop_delay*, align 8
  %12 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 1
  %15 = load %struct.g_provider*, %struct.g_provider** %14, align 8
  %16 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %15, i32 0, i32 0
  %17 = load %struct.g_geom*, %struct.g_geom** %16, align 8
  store %struct.g_geom* %17, %struct.g_geom** %4, align 8
  %18 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %19 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %18, i32 0, i32 1
  %20 = load %struct.g_nop_softc*, %struct.g_nop_softc** %19, align 8
  store %struct.g_nop_softc* %20, %struct.g_nop_softc** %3, align 8
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = call i32 @G_NOP_LOGREQ(%struct.bio* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %24 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %23, i32 0, i32 6
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %27 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %32 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %38 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %37, i32 0, i32 1
  store i32 100, i32* %38, align 8
  %39 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %40 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %39, i32 0, i32 2
  store i32 100, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %30, %1
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %147 [
    i32 129, label %45
    i32 128, label %67
    i32 132, label %89
    i32 130, label %94
    i32 131, label %127
    i32 135, label %132
    i32 134, label %137
    i32 133, label %142
  ]

45:                                               ; preds = %41
  %46 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %47 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %46, i32 0, i32 20
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.bio*, %struct.bio** %2, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %54 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %53, i32 0, i32 19
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %58 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %7, align 8
  %61 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %62 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %8, align 8
  %64 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %65 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %9, align 8
  br label %147

67:                                               ; preds = %41
  %68 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %69 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %68, i32 0, i32 18
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.bio*, %struct.bio** %2, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %76 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %75, i32 0, i32 17
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %80 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %7, align 8
  %83 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %84 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %8, align 8
  %86 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %87 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %9, align 8
  br label %147

89:                                               ; preds = %41
  %90 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %91 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %90, i32 0, i32 16
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %147

94:                                               ; preds = %41
  %95 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %96 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %100 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %99, i32 0, i32 14
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %94
  %104 = load %struct.bio*, %struct.bio** %2, align 8
  %105 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %106 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %105, i32 0, i32 14
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @g_handleattr_str(%struct.bio* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %123

111:                                              ; preds = %103, %94
  %112 = load %struct.bio*, %struct.bio** %2, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @strcmp(i32 %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.bio*, %struct.bio** %2, align 8
  %119 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %120 = call i32 @g_nop_kerneldump(%struct.bio* %118, %struct.g_nop_softc* %119)
  br label %122

121:                                              ; preds = %111
  br label %147

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122, %110
  %124 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %125 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %124, i32 0, i32 6
  %126 = call i32 @mtx_unlock(i32* %125)
  br label %251

127:                                              ; preds = %41
  %128 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %129 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  br label %147

132:                                              ; preds = %41
  %133 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %134 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %133, i32 0, i32 12
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %147

137:                                              ; preds = %41
  %138 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %139 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %138, i32 0, i32 11
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %147

142:                                              ; preds = %41
  %143 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %144 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %41, %142, %137, %132, %127, %121, %89, %67, %45
  %148 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %149 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %148, i32 0, i32 6
  %150 = call i32 @mtx_unlock(i32* %149)
  %151 = load i64, i64* %7, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %147
  %154 = call i32 (...) @arc4random()
  %155 = srem i32 %154, 100
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %10, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %7, align 8
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %153
  %161 = load %struct.bio*, %struct.bio** %2, align 8
  %162 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %163 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @G_NOP_LOGREQLVL(i32 1, %struct.bio* %161, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  %166 = load %struct.bio*, %struct.bio** %2, align 8
  %167 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %168 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @g_io_deliver(%struct.bio* %166, i32 %169)
  br label %251

171:                                              ; preds = %153
  br label %172

172:                                              ; preds = %171, %147
  %173 = load %struct.bio*, %struct.bio** %2, align 8
  %174 = call %struct.bio* @g_clone_bio(%struct.bio* %173)
  store %struct.bio* %174, %struct.bio** %6, align 8
  %175 = load %struct.bio*, %struct.bio** %6, align 8
  %176 = icmp eq %struct.bio* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load %struct.bio*, %struct.bio** %2, align 8
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = call i32 @g_io_deliver(%struct.bio* %178, i32 %179)
  br label %251

181:                                              ; preds = %172
  %182 = load i32, i32* @g_std_done, align 4
  %183 = load %struct.bio*, %struct.bio** %6, align 8
  %184 = getelementptr inbounds %struct.bio, %struct.bio* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  %185 = load %struct.bio*, %struct.bio** %2, align 8
  %186 = getelementptr inbounds %struct.bio, %struct.bio* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %189 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %188, i32 0, i32 8
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %187, %190
  %192 = load %struct.bio*, %struct.bio** %6, align 8
  %193 = getelementptr inbounds %struct.bio, %struct.bio* %192, i32 0, i32 2
  store i64 %191, i64* %193, align 8
  %194 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %195 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %194, i32 0, i32 0
  %196 = call %struct.g_provider* @LIST_FIRST(i32* %195)
  store %struct.g_provider* %196, %struct.g_provider** %5, align 8
  %197 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %198 = icmp ne %struct.g_provider* %197, null
  %199 = zext i1 %198 to i32
  %200 = call i32 @KASSERT(i32 %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %201 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %202 = load %struct.bio*, %struct.bio** %6, align 8
  %203 = getelementptr inbounds %struct.bio, %struct.bio* %202, i32 0, i32 1
  store %struct.g_provider* %201, %struct.g_provider** %203, align 8
  %204 = load i64, i64* %8, align 8
  %205 = icmp sgt i64 %204, 0
  br i1 %205, label %206, label %247

206:                                              ; preds = %181
  %207 = call i32 (...) @arc4random()
  %208 = srem i32 %207, 100
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %12, align 8
  %210 = load i64, i64* %12, align 8
  %211 = load i64, i64* %8, align 8
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %246

213:                                              ; preds = %206
  %214 = load i32, i32* @M_NOWAIT, align 4
  %215 = load i32, i32* @M_ZERO, align 4
  %216 = or i32 %214, %215
  %217 = call %struct.g_nop_delay* @g_malloc(i32 16, i32 %216)
  store %struct.g_nop_delay* %217, %struct.g_nop_delay** %11, align 8
  %218 = load %struct.g_nop_delay*, %struct.g_nop_delay** %11, align 8
  %219 = icmp ne %struct.g_nop_delay* %218, null
  br i1 %219, label %220, label %245

220:                                              ; preds = %213
  %221 = load %struct.g_nop_delay*, %struct.g_nop_delay** %11, align 8
  %222 = getelementptr inbounds %struct.g_nop_delay, %struct.g_nop_delay* %221, i32 0, i32 0
  %223 = call i32 @callout_init(i32* %222, i32 1)
  %224 = load %struct.bio*, %struct.bio** %6, align 8
  %225 = load %struct.g_nop_delay*, %struct.g_nop_delay** %11, align 8
  %226 = getelementptr inbounds %struct.g_nop_delay, %struct.g_nop_delay* %225, i32 0, i32 1
  store %struct.bio* %224, %struct.bio** %226, align 8
  %227 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %228 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %227, i32 0, i32 6
  %229 = call i32 @mtx_lock(i32* %228)
  %230 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %231 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %230, i32 0, i32 7
  %232 = load %struct.g_nop_delay*, %struct.g_nop_delay** %11, align 8
  %233 = load i32, i32* @dl_next, align 4
  %234 = call i32 @TAILQ_INSERT_TAIL(i32* %231, %struct.g_nop_delay* %232, i32 %233)
  %235 = load %struct.g_nop_softc*, %struct.g_nop_softc** %3, align 8
  %236 = getelementptr inbounds %struct.g_nop_softc, %struct.g_nop_softc* %235, i32 0, i32 6
  %237 = call i32 @mtx_unlock(i32* %236)
  %238 = load %struct.g_nop_delay*, %struct.g_nop_delay** %11, align 8
  %239 = getelementptr inbounds %struct.g_nop_delay, %struct.g_nop_delay* %238, i32 0, i32 0
  %240 = load i64, i64* %9, align 8
  %241 = call i32 @MSEC_2_TICKS(i64 %240)
  %242 = load i32, i32* @g_nop_pass_timeout, align 4
  %243 = load %struct.g_nop_delay*, %struct.g_nop_delay** %11, align 8
  %244 = call i32 @callout_reset(i32* %239, i32 %241, i32 %242, %struct.g_nop_delay* %243)
  br label %251

245:                                              ; preds = %213
  br label %246

246:                                              ; preds = %245, %206
  br label %247

247:                                              ; preds = %246, %181
  %248 = load %struct.bio*, %struct.bio** %6, align 8
  %249 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %250 = call i32 @g_nop_pass(%struct.bio* %248, %struct.g_geom* %249)
  br label %251

251:                                              ; preds = %247, %220, %177, %160, %123
  ret void
}

declare dso_local i32 @G_NOP_LOGREQ(%struct.bio*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @g_handleattr_str(%struct.bio*, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @g_nop_kerneldump(%struct.bio*, %struct.g_nop_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @G_NOP_LOGREQLVL(i32, %struct.bio*, i8*, i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.g_nop_delay* @g_malloc(i32, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.g_nop_delay*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.g_nop_delay*) #1

declare dso_local i32 @MSEC_2_TICKS(i64) #1

declare dso_local i32 @g_nop_pass(%struct.bio*, %struct.g_geom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
