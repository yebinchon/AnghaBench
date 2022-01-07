; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@d13 = common dso_local global %struct.diff* null, align 8
@d23 = common dso_local global %struct.diff* null, align 8
@eflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"====1\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"====2\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"====%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.diff*, align 8
  %6 = alloca %struct.diff*, align 8
  %7 = alloca %struct.diff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.diff*, %struct.diff** @d13, align 8
  store %struct.diff* %12, %struct.diff** %5, align 8
  %13 = load %struct.diff*, %struct.diff** @d23, align 8
  store %struct.diff* %13, %struct.diff** %6, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %372, %237, %154, %116, %94, %61, %2
  %15 = load %struct.diff*, %struct.diff** %5, align 8
  %16 = load %struct.diff*, %struct.diff** @d13, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.diff, %struct.diff* %16, i64 %18
  %20 = icmp ult %struct.diff* %15, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.diff*, %struct.diff** %6, align 8
  %23 = load %struct.diff*, %struct.diff** @d23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.diff, %struct.diff* %23, i64 %25
  %27 = icmp ult %struct.diff* %22, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = or i32 %21, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %373

31:                                               ; preds = %14
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.diff*, %struct.diff** %5, align 8
  %39 = getelementptr inbounds %struct.diff, %struct.diff* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.diff*, %struct.diff** %6, align 8
  %43 = getelementptr inbounds %struct.diff, %struct.diff* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %41, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %37, %31
  %48 = load i64, i64* @eflag, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.diff*, %struct.diff** %5, align 8
  %53 = getelementptr inbounds %struct.diff, %struct.diff* %52, i32 0, i32 1
  %54 = call i32 @change(i32 1, %struct.TYPE_5__* %53, i32 0)
  %55 = load %struct.diff*, %struct.diff** %5, align 8
  %56 = getelementptr inbounds %struct.diff, %struct.diff* %55, i32 0, i32 0
  %57 = call i32 @keep(i32 2, %struct.TYPE_5__* %56)
  %58 = load %struct.diff*, %struct.diff** %5, align 8
  %59 = getelementptr inbounds %struct.diff, %struct.diff* %58, i32 0, i32 0
  %60 = call i32 @change(i32 3, %struct.TYPE_5__* %59, i32 0)
  br label %61

61:                                               ; preds = %50, %47
  %62 = load %struct.diff*, %struct.diff** %5, align 8
  %63 = getelementptr inbounds %struct.diff, %struct.diff* %62, i32 1
  store %struct.diff* %63, %struct.diff** %5, align 8
  br label %14

64:                                               ; preds = %37, %34
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %67
  %71 = load %struct.diff*, %struct.diff** %6, align 8
  %72 = getelementptr inbounds %struct.diff, %struct.diff* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.diff*, %struct.diff** %5, align 8
  %76 = getelementptr inbounds %struct.diff, %struct.diff* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %70, %64
  %81 = load i64, i64* @eflag, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.diff*, %struct.diff** %6, align 8
  %86 = getelementptr inbounds %struct.diff, %struct.diff* %85, i32 0, i32 0
  %87 = call i32 @keep(i32 1, %struct.TYPE_5__* %86)
  %88 = load %struct.diff*, %struct.diff** %6, align 8
  %89 = getelementptr inbounds %struct.diff, %struct.diff* %88, i32 0, i32 0
  %90 = call i32 @change(i32 3, %struct.TYPE_5__* %89, i32 0)
  %91 = load %struct.diff*, %struct.diff** %6, align 8
  %92 = getelementptr inbounds %struct.diff, %struct.diff* %91, i32 0, i32 1
  %93 = call i32 @change(i32 2, %struct.TYPE_5__* %92, i32 0)
  br label %94

94:                                               ; preds = %83, %80
  %95 = load %struct.diff*, %struct.diff** %6, align 8
  %96 = getelementptr inbounds %struct.diff, %struct.diff* %95, i32 1
  store %struct.diff* %96, %struct.diff** %6, align 8
  br label %14

97:                                               ; preds = %70, %67
  %98 = load %struct.diff*, %struct.diff** %5, align 8
  %99 = getelementptr inbounds %struct.diff, %struct.diff* %98, i64 1
  %100 = load %struct.diff*, %struct.diff** @d13, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.diff, %struct.diff* %100, i64 %102
  %104 = icmp ult %struct.diff* %99, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %97
  %106 = load %struct.diff*, %struct.diff** %5, align 8
  %107 = getelementptr inbounds %struct.diff, %struct.diff* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.diff*, %struct.diff** %5, align 8
  %111 = getelementptr inbounds %struct.diff, %struct.diff* %110, i64 1
  %112 = getelementptr inbounds %struct.diff, %struct.diff* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %109, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %105
  %117 = load %struct.diff*, %struct.diff** %5, align 8
  %118 = getelementptr inbounds %struct.diff, %struct.diff* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.diff*, %struct.diff** %5, align 8
  %122 = getelementptr inbounds %struct.diff, %struct.diff* %121, i64 1
  %123 = getelementptr inbounds %struct.diff, %struct.diff* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  store i64 %120, i64* %124, align 8
  %125 = load %struct.diff*, %struct.diff** %5, align 8
  %126 = getelementptr inbounds %struct.diff, %struct.diff* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.diff*, %struct.diff** %5, align 8
  %130 = getelementptr inbounds %struct.diff, %struct.diff* %129, i64 1
  %131 = getelementptr inbounds %struct.diff, %struct.diff* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i64 %128, i64* %132, align 8
  %133 = load %struct.diff*, %struct.diff** %5, align 8
  %134 = getelementptr inbounds %struct.diff, %struct.diff* %133, i32 1
  store %struct.diff* %134, %struct.diff** %5, align 8
  br label %14

135:                                              ; preds = %105, %97
  %136 = load %struct.diff*, %struct.diff** %6, align 8
  %137 = getelementptr inbounds %struct.diff, %struct.diff* %136, i64 1
  %138 = load %struct.diff*, %struct.diff** @d23, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.diff, %struct.diff* %138, i64 %140
  %142 = icmp ult %struct.diff* %137, %141
  br i1 %142, label %143, label %173

143:                                              ; preds = %135
  %144 = load %struct.diff*, %struct.diff** %6, align 8
  %145 = getelementptr inbounds %struct.diff, %struct.diff* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.diff*, %struct.diff** %6, align 8
  %149 = getelementptr inbounds %struct.diff, %struct.diff* %148, i64 1
  %150 = getelementptr inbounds %struct.diff, %struct.diff* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp sge i64 %147, %152
  br i1 %153, label %154, label %173

154:                                              ; preds = %143
  %155 = load %struct.diff*, %struct.diff** %6, align 8
  %156 = getelementptr inbounds %struct.diff, %struct.diff* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.diff*, %struct.diff** %6, align 8
  %160 = getelementptr inbounds %struct.diff, %struct.diff* %159, i64 1
  %161 = getelementptr inbounds %struct.diff, %struct.diff* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store i64 %158, i64* %162, align 8
  %163 = load %struct.diff*, %struct.diff** %6, align 8
  %164 = getelementptr inbounds %struct.diff, %struct.diff* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.diff*, %struct.diff** %6, align 8
  %168 = getelementptr inbounds %struct.diff, %struct.diff* %167, i64 1
  %169 = getelementptr inbounds %struct.diff, %struct.diff* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  store i64 %166, i64* %170, align 8
  %171 = load %struct.diff*, %struct.diff** %6, align 8
  %172 = getelementptr inbounds %struct.diff, %struct.diff* %171, i32 1
  store %struct.diff* %172, %struct.diff** %6, align 8
  br label %14

173:                                              ; preds = %143, %135
  %174 = load %struct.diff*, %struct.diff** %5, align 8
  %175 = getelementptr inbounds %struct.diff, %struct.diff* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.diff*, %struct.diff** %6, align 8
  %179 = getelementptr inbounds %struct.diff, %struct.diff* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %177, %181
  br i1 %182, label %183, label %242

183:                                              ; preds = %173
  %184 = load %struct.diff*, %struct.diff** %5, align 8
  %185 = getelementptr inbounds %struct.diff, %struct.diff* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.diff*, %struct.diff** %6, align 8
  %189 = getelementptr inbounds %struct.diff, %struct.diff* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %187, %191
  br i1 %192, label %193, label %242

193:                                              ; preds = %183
  %194 = load %struct.diff*, %struct.diff** %5, align 8
  %195 = getelementptr inbounds %struct.diff, %struct.diff* %194, i32 0, i32 1
  %196 = load %struct.diff*, %struct.diff** %6, align 8
  %197 = getelementptr inbounds %struct.diff, %struct.diff* %196, i32 0, i32 1
  %198 = call i32 @duplicate(%struct.TYPE_5__* %195, %struct.TYPE_5__* %197)
  store i32 %198, i32* %11, align 4
  %199 = load i64, i64* @eflag, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %232

201:                                              ; preds = %193
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %205)
  %207 = load %struct.diff*, %struct.diff** %5, align 8
  %208 = getelementptr inbounds %struct.diff, %struct.diff* %207, i32 0, i32 1
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @change(i32 1, %struct.TYPE_5__* %208, i32 %209)
  %211 = load %struct.diff*, %struct.diff** %6, align 8
  %212 = getelementptr inbounds %struct.diff, %struct.diff* %211, i32 0, i32 1
  %213 = call i32 @change(i32 2, %struct.TYPE_5__* %212, i32 0)
  %214 = load %struct.diff*, %struct.diff** %5, align 8
  %215 = getelementptr inbounds %struct.diff, %struct.diff* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.diff*, %struct.diff** %5, align 8
  %219 = getelementptr inbounds %struct.diff, %struct.diff* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %217, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %201
  %224 = load %struct.diff*, %struct.diff** %5, align 8
  br label %227

225:                                              ; preds = %201
  %226 = load %struct.diff*, %struct.diff** %6, align 8
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi %struct.diff* [ %224, %223 ], [ %226, %225 ]
  store %struct.diff* %228, %struct.diff** %7, align 8
  %229 = load %struct.diff*, %struct.diff** %7, align 8
  %230 = getelementptr inbounds %struct.diff, %struct.diff* %229, i32 0, i32 0
  %231 = call i32 @change(i32 3, %struct.TYPE_5__* %230, i32 0)
  br label %237

232:                                              ; preds = %193
  %233 = load %struct.diff*, %struct.diff** %5, align 8
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @edit(%struct.diff* %233, i32 %234, i32 %235)
  store i32 %236, i32* %8, align 4
  br label %237

237:                                              ; preds = %232, %227
  %238 = load %struct.diff*, %struct.diff** %5, align 8
  %239 = getelementptr inbounds %struct.diff, %struct.diff* %238, i32 1
  store %struct.diff* %239, %struct.diff** %5, align 8
  %240 = load %struct.diff*, %struct.diff** %6, align 8
  %241 = getelementptr inbounds %struct.diff, %struct.diff* %240, i32 1
  store %struct.diff* %241, %struct.diff** %6, align 8
  br label %14

242:                                              ; preds = %183, %173
  %243 = load %struct.diff*, %struct.diff** %5, align 8
  %244 = getelementptr inbounds %struct.diff, %struct.diff* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.diff*, %struct.diff** %6, align 8
  %248 = getelementptr inbounds %struct.diff, %struct.diff* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp slt i64 %246, %250
  br i1 %251, label %252, label %274

252:                                              ; preds = %242
  %253 = load %struct.diff*, %struct.diff** %6, align 8
  %254 = getelementptr inbounds %struct.diff, %struct.diff* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.diff*, %struct.diff** %5, align 8
  %258 = getelementptr inbounds %struct.diff, %struct.diff* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = sub nsw i64 %256, %260
  %262 = load %struct.diff*, %struct.diff** %6, align 8
  %263 = getelementptr inbounds %struct.diff, %struct.diff* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = sub nsw i64 %265, %261
  store i64 %266, i64* %264, align 8
  %267 = load %struct.diff*, %struct.diff** %5, align 8
  %268 = getelementptr inbounds %struct.diff, %struct.diff* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.diff*, %struct.diff** %6, align 8
  %272 = getelementptr inbounds %struct.diff, %struct.diff* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 1
  store i64 %270, i64* %273, align 8
  br label %307

274:                                              ; preds = %242
  %275 = load %struct.diff*, %struct.diff** %6, align 8
  %276 = getelementptr inbounds %struct.diff, %struct.diff* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.diff*, %struct.diff** %5, align 8
  %280 = getelementptr inbounds %struct.diff, %struct.diff* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp slt i64 %278, %282
  br i1 %283, label %284, label %306

284:                                              ; preds = %274
  %285 = load %struct.diff*, %struct.diff** %5, align 8
  %286 = getelementptr inbounds %struct.diff, %struct.diff* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.diff*, %struct.diff** %6, align 8
  %290 = getelementptr inbounds %struct.diff, %struct.diff* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = sub nsw i64 %288, %292
  %294 = load %struct.diff*, %struct.diff** %5, align 8
  %295 = getelementptr inbounds %struct.diff, %struct.diff* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = sub nsw i64 %297, %293
  store i64 %298, i64* %296, align 8
  %299 = load %struct.diff*, %struct.diff** %6, align 8
  %300 = getelementptr inbounds %struct.diff, %struct.diff* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.diff*, %struct.diff** %5, align 8
  %304 = getelementptr inbounds %struct.diff, %struct.diff* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  store i64 %302, i64* %305, align 8
  br label %306

306:                                              ; preds = %284, %274
  br label %307

307:                                              ; preds = %306, %252
  %308 = load %struct.diff*, %struct.diff** %5, align 8
  %309 = getelementptr inbounds %struct.diff, %struct.diff* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.diff*, %struct.diff** %6, align 8
  %313 = getelementptr inbounds %struct.diff, %struct.diff* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp sgt i64 %311, %315
  br i1 %316, label %317, label %339

317:                                              ; preds = %307
  %318 = load %struct.diff*, %struct.diff** %5, align 8
  %319 = getelementptr inbounds %struct.diff, %struct.diff* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.diff*, %struct.diff** %6, align 8
  %323 = getelementptr inbounds %struct.diff, %struct.diff* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = sub nsw i64 %321, %325
  %327 = load %struct.diff*, %struct.diff** %6, align 8
  %328 = getelementptr inbounds %struct.diff, %struct.diff* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = add nsw i64 %330, %326
  store i64 %331, i64* %329, align 8
  %332 = load %struct.diff*, %struct.diff** %5, align 8
  %333 = getelementptr inbounds %struct.diff, %struct.diff* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.diff*, %struct.diff** %6, align 8
  %337 = getelementptr inbounds %struct.diff, %struct.diff* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 0
  store i64 %335, i64* %338, align 8
  br label %372

339:                                              ; preds = %307
  %340 = load %struct.diff*, %struct.diff** %6, align 8
  %341 = getelementptr inbounds %struct.diff, %struct.diff* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.diff*, %struct.diff** %5, align 8
  %345 = getelementptr inbounds %struct.diff, %struct.diff* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = icmp sgt i64 %343, %347
  br i1 %348, label %349, label %371

349:                                              ; preds = %339
  %350 = load %struct.diff*, %struct.diff** %6, align 8
  %351 = getelementptr inbounds %struct.diff, %struct.diff* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.diff*, %struct.diff** %5, align 8
  %355 = getelementptr inbounds %struct.diff, %struct.diff* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = sub nsw i64 %353, %357
  %359 = load %struct.diff*, %struct.diff** %5, align 8
  %360 = getelementptr inbounds %struct.diff, %struct.diff* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = add nsw i64 %362, %358
  store i64 %363, i64* %361, align 8
  %364 = load %struct.diff*, %struct.diff** %6, align 8
  %365 = getelementptr inbounds %struct.diff, %struct.diff* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.diff*, %struct.diff** %5, align 8
  %369 = getelementptr inbounds %struct.diff, %struct.diff* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 0
  store i64 %367, i64* %370, align 8
  br label %371

371:                                              ; preds = %349, %339
  br label %372

372:                                              ; preds = %371, %317
  br label %14

373:                                              ; preds = %14
  %374 = load i64, i64* @eflag, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = load i32, i32* %8, align 4
  %378 = call i32 @edscript(i32 %377)
  br label %379

379:                                              ; preds = %376, %373
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @change(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @keep(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @duplicate(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @edit(%struct.diff*, i32, i32) #1

declare dso_local i32 @edscript(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
