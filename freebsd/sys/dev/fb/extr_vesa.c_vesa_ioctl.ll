; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_24__*, i32, i64)* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.fbcmap = type { i32, i32, i32, i32, i32 }

@vesa_adp = common dso_local global %struct.TYPE_24__* null, align 8
@prevvidsw = common dso_local global %struct.TYPE_20__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32, i64)* @vesa_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_ioctl(%struct.TYPE_24__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** @vesa_adp, align 8
  %11 = icmp ne %struct.TYPE_24__* %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** @prevvidsw, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_24__*, i32, i64)*, i32 (%struct.TYPE_24__*, i32, i64)** %14, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 %15(%struct.TYPE_24__* %16, i32 %17, i64 %18)
  store i32 %19, i32* %4, align 4
  br label %264

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %256 [
    i32 128, label %22
    i32 131, label %48
    i32 130, label %90
    i32 132, label %116
    i32 129, label %153
    i32 134, label %190
    i32 133, label %223
  ]

22:                                               ; preds = %20
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @VESA_MODE(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** @prevvidsw, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_24__*, i32, i64)*, i32 (%struct.TYPE_24__*, i32, i64)** %30, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 %31(%struct.TYPE_24__* %32, i32 %33, i64 %34)
  store i32 %35, i32* %4, align 4
  br label %264

36:                                               ; preds = %22
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vesa_set_origin(%struct.TYPE_24__* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ENODEV, align 4
  br label %46

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  store i32 %47, i32* %4, align 4
  br label %264

48:                                               ; preds = %20
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @VESA_MODE(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** @prevvidsw, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_24__*, i32, i64)*, i32 (%struct.TYPE_24__*, i32, i64)** %56, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i64, i64* %7, align 8
  %61 = call i32 %57(%struct.TYPE_24__* %58, i32 %59, i64 %60)
  store i32 %61, i32* %4, align 4
  br label %264

62:                                               ; preds = %48
  %63 = load i64, i64* %7, align 8
  %64 = inttoptr i64 %63 to %struct.TYPE_22__*
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %7, align 8
  %68 = inttoptr i64 %67 to %struct.TYPE_22__*
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @vesa_bios_set_start(i32 %66, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @ENODEV, align 4
  store i32 %74, i32* %4, align 4
  br label %264

75:                                               ; preds = %62
  %76 = load i64, i64* %7, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_22__*
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load i64, i64* %7, align 8
  %84 = inttoptr i64 %83 to %struct.TYPE_22__*
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  store i32 0, i32* %4, align 4
  br label %264

90:                                               ; preds = %20
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @VESA_MODE(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** @prevvidsw, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_24__*, i32, i64)*, i32 (%struct.TYPE_24__*, i32, i64)** %98, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i64, i64* %7, align 8
  %103 = call i32 %99(%struct.TYPE_24__* %100, i32 %101, i64 %102)
  store i32 %103, i32* %4, align 4
  br label %264

104:                                              ; preds = %90
  %105 = load i64, i64* %7, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @vesa_bios_set_line_length(i32 %107, i32* %8, i32* null)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @ENODEV, align 4
  store i32 %111, i32* %4, align 4
  br label %264

112:                                              ; preds = %104
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  store i32 0, i32* %4, align 4
  br label %264

116:                                              ; preds = %20
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %118 = load i64, i64* %7, align 8
  %119 = inttoptr i64 %118 to %struct.TYPE_23__*
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = inttoptr i64 %122 to %struct.TYPE_23__*
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %7, align 8
  %127 = inttoptr i64 %126 to %struct.TYPE_23__*
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* %7, align 8
  %131 = inttoptr i64 %130 to %struct.TYPE_23__*
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* %7, align 8
  %135 = inttoptr i64 %134 to %struct.TYPE_23__*
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %7, align 8
  %139 = inttoptr i64 %138 to %struct.TYPE_23__*
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @get_palette(%struct.TYPE_24__* %117, i32 %121, i32 %125, i32 %129, i32 %133, i32 %137, i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %116
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** @prevvidsw, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load i32 (%struct.TYPE_24__*, i32, i64)*, i32 (%struct.TYPE_24__*, i32, i64)** %146, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load i64, i64* %7, align 8
  %151 = call i32 %147(%struct.TYPE_24__* %148, i32 %149, i64 %150)
  store i32 %151, i32* %4, align 4
  br label %264

152:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %264

153:                                              ; preds = %20
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %155 = load i64, i64* %7, align 8
  %156 = inttoptr i64 %155 to %struct.TYPE_23__*
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = inttoptr i64 %159 to %struct.TYPE_23__*
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %7, align 8
  %164 = inttoptr i64 %163 to %struct.TYPE_23__*
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* %7, align 8
  %168 = inttoptr i64 %167 to %struct.TYPE_23__*
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %7, align 8
  %172 = inttoptr i64 %171 to %struct.TYPE_23__*
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i64, i64* %7, align 8
  %176 = inttoptr i64 %175 to %struct.TYPE_23__*
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @set_palette(%struct.TYPE_24__* %154, i32 %158, i32 %162, i32 %166, i32 %170, i32 %174, i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %153
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** @prevvidsw, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = load i32 (%struct.TYPE_24__*, i32, i64)*, i32 (%struct.TYPE_24__*, i32, i64)** %183, align 8
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load i64, i64* %7, align 8
  %188 = call i32 %184(%struct.TYPE_24__* %185, i32 %186, i64 %187)
  store i32 %188, i32* %4, align 4
  br label %264

189:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %264

190:                                              ; preds = %20
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %192 = load i64, i64* %7, align 8
  %193 = inttoptr i64 %192 to %struct.fbcmap*
  %194 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load i64, i64* %7, align 8
  %197 = inttoptr i64 %196 to %struct.fbcmap*
  %198 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i64, i64* %7, align 8
  %201 = inttoptr i64 %200 to %struct.fbcmap*
  %202 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i64, i64* %7, align 8
  %205 = inttoptr i64 %204 to %struct.fbcmap*
  %206 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i64, i64* %7, align 8
  %209 = inttoptr i64 %208 to %struct.fbcmap*
  %210 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @get_palette(%struct.TYPE_24__* %191, i32 %195, i32 %199, i32 %203, i32 %207, i32 %211, i32* null)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %190
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** @prevvidsw, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i32 (%struct.TYPE_24__*, i32, i64)*, i32 (%struct.TYPE_24__*, i32, i64)** %216, align 8
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %219 = load i32, i32* %6, align 4
  %220 = load i64, i64* %7, align 8
  %221 = call i32 %217(%struct.TYPE_24__* %218, i32 %219, i64 %220)
  store i32 %221, i32* %4, align 4
  br label %264

222:                                              ; preds = %190
  store i32 0, i32* %4, align 4
  br label %264

223:                                              ; preds = %20
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %225 = load i64, i64* %7, align 8
  %226 = inttoptr i64 %225 to %struct.fbcmap*
  %227 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load i64, i64* %7, align 8
  %230 = inttoptr i64 %229 to %struct.fbcmap*
  %231 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i64, i64* %7, align 8
  %234 = inttoptr i64 %233 to %struct.fbcmap*
  %235 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load i64, i64* %7, align 8
  %238 = inttoptr i64 %237 to %struct.fbcmap*
  %239 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i64, i64* %7, align 8
  %242 = inttoptr i64 %241 to %struct.fbcmap*
  %243 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @set_palette(%struct.TYPE_24__* %224, i32 %228, i32 %232, i32 %236, i32 %240, i32 %244, i32* null)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %223
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** @prevvidsw, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = load i32 (%struct.TYPE_24__*, i32, i64)*, i32 (%struct.TYPE_24__*, i32, i64)** %249, align 8
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %252 = load i32, i32* %6, align 4
  %253 = load i64, i64* %7, align 8
  %254 = call i32 %250(%struct.TYPE_24__* %251, i32 %252, i64 %253)
  store i32 %254, i32* %4, align 4
  br label %264

255:                                              ; preds = %223
  store i32 0, i32* %4, align 4
  br label %264

256:                                              ; preds = %20
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** @prevvidsw, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 0
  %259 = load i32 (%struct.TYPE_24__*, i32, i64)*, i32 (%struct.TYPE_24__*, i32, i64)** %258, align 8
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %261 = load i32, i32* %6, align 4
  %262 = load i64, i64* %7, align 8
  %263 = call i32 %259(%struct.TYPE_24__* %260, i32 %261, i64 %262)
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %256, %255, %247, %222, %214, %189, %181, %152, %144, %112, %110, %96, %75, %73, %54, %46, %28, %12
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local i32 @VESA_MODE(i32) #1

declare dso_local i32 @vesa_set_origin(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @vesa_bios_set_start(i32, i32) #1

declare dso_local i32 @vesa_bios_set_line_length(i32, i32*, i32*) #1

declare dso_local i32 @get_palette(%struct.TYPE_24__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @set_palette(%struct.TYPE_24__*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
