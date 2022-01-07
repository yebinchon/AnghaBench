; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_fb.c_fb_commonioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_fb.c_fb_commonioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_14__, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_commonioctl(%struct.TYPE_18__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @spltty()
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %248 [
    i32 143, label %11
    i32 141, label %17
    i32 142, label %23
    i32 133, label %178
    i32 139, label %192
    i32 136, label %197
    i32 130, label %203
    i32 134, label %214
    i32 138, label %220
    i32 137, label %235
    i32 140, label %241
    i32 135, label %247
    i32 129, label %247
    i32 149, label %247
    i32 155, label %247
    i32 148, label %247
    i32 154, label %247
    i32 128, label %247
    i32 132, label %247
    i32 131, label %247
    i32 153, label %247
    i32 159, label %247
    i32 145, label %247
    i32 152, label %247
    i32 144, label %247
    i32 146, label %247
    i32 156, label %247
    i32 147, label %247
    i32 157, label %247
    i32 158, label %247
    i32 150, label %247
    i32 151, label %247
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32 %14, i32* %16, align 4
  br label %250

17:                                               ; preds = %3
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %6, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %250

23:                                               ; preds = %3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_19__*
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_19__*
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 20
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %6, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_19__*
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 20
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 20
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = add nsw i32 %46, 1
  %48 = call i32 @imin(i32 %47, i32 4)
  %49 = call i32 @bcopy(i32 %38, i32 %42, i32 %48)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 19
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_19__*
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 19
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 18
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_19__*
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 18
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 17
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %6, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_19__*
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 17
  store i32 %64, i32* %67, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 16
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %6, align 8
  %72 = inttoptr i64 %71 to %struct.TYPE_19__*
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 16
  store i32 %70, i32* %73, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 15
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %6, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_19__*
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 15
  store i32 %76, i32* %79, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %6, align 8
  %84 = inttoptr i64 %83 to %struct.TYPE_19__*
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 14
  store i32 %82, i32* %85, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 13
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %6, align 8
  %90 = inttoptr i64 %89 to %struct.TYPE_19__*
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 13
  store i32 %88, i32* %91, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @vtophys(i32 %94)
  %96 = load i64, i64* %6, align 8
  %97 = inttoptr i64 %96 to %struct.TYPE_19__*
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 12
  store i8* %95, i8** %98, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %6, align 8
  %103 = inttoptr i64 %102 to %struct.TYPE_19__*
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 11
  store i32 %101, i32* %104, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %6, align 8
  %109 = inttoptr i64 %108 to %struct.TYPE_19__*
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 10
  store i32 %107, i32* %110, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %6, align 8
  %115 = inttoptr i64 %114 to %struct.TYPE_19__*
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 9
  store i32 %113, i32* %116, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %23
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @vtophys(i32 %124)
  br label %127

126:                                              ; preds = %23
  br label %127

127:                                              ; preds = %126, %121
  %128 = phi i8* [ %125, %121 ], [ null, %126 ]
  %129 = load i64, i64* %6, align 8
  %130 = inttoptr i64 %129 to %struct.TYPE_19__*
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 8
  store i8* %128, i8** %131, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %6, align 8
  %136 = inttoptr i64 %135 to %struct.TYPE_19__*
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 7
  store i32 %134, i32* %137, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %6, align 8
  %142 = inttoptr i64 %141 to %struct.TYPE_19__*
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %6, align 8
  %148 = inttoptr i64 %147 to %struct.TYPE_19__*
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 6
  store i32 %146, i32* %149, align 4
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %6, align 8
  %154 = inttoptr i64 %153 to %struct.TYPE_19__*
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 5
  store i32 %152, i32* %155, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* %6, align 8
  %160 = inttoptr i64 %159 to %struct.TYPE_19__*
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 4
  store i32 %158, i32* %161, align 4
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i64, i64* %6, align 8
  %167 = inttoptr i64 %166 to %struct.TYPE_19__*
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  store i32 %165, i32* %169, align 4
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* %6, align 8
  %175 = inttoptr i64 %174 to %struct.TYPE_19__*
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  store i32 %173, i32* %177, align 4
  br label %250

178:                                              ; preds = %3
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %180 = load i64, i64* %6, align 8
  %181 = inttoptr i64 %180 to %struct.TYPE_16__*
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i64, i64* %6, align 8
  %185 = inttoptr i64 %184 to %struct.TYPE_16__*
  %186 = call i32 @vidd_get_info(%struct.TYPE_18__* %179, i32 %183, %struct.TYPE_16__* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %178
  %190 = load i32, i32* @ENODEV, align 4
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %189, %178
  br label %250

192:                                              ; preds = %3
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %194 = load i64, i64* %6, align 8
  %195 = inttoptr i64 %194 to %struct.TYPE_16__*
  %196 = call i32 @vidd_query_mode(%struct.TYPE_18__* %193, %struct.TYPE_16__* %195)
  store i32 %196, i32* %7, align 4
  br label %250

197:                                              ; preds = %3
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i64, i64* %6, align 8
  %202 = inttoptr i64 %201 to i32*
  store i32 %200, i32* %202, align 4
  br label %250

203:                                              ; preds = %3
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %205 = load i64, i64* %6, align 8
  %206 = inttoptr i64 %205 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @vidd_set_mode(%struct.TYPE_18__* %204, i32 %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = load i32, i32* @ENODEV, align 4
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %211, %203
  br label %250

214:                                              ; preds = %3
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load i64, i64* %6, align 8
  %219 = inttoptr i64 %218 to i32*
  store i32 %217, i32* %219, align 4
  br label %250

220:                                              ; preds = %3
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i64, i64* %6, align 8
  %226 = inttoptr i64 %225 to %struct.TYPE_17__*
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  store i32 %224, i32* %227, align 4
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i64, i64* %6, align 8
  %233 = inttoptr i64 %232 to %struct.TYPE_17__*
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  store i32 %231, i32* %234, align 4
  br label %250

235:                                              ; preds = %3
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load i64, i64* %6, align 8
  %240 = inttoptr i64 %239 to i32*
  store i32 %238, i32* %240, align 4
  br label %250

241:                                              ; preds = %3
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %243 = load i64, i64* %6, align 8
  %244 = inttoptr i64 %243 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @vidd_blank_display(%struct.TYPE_18__* %242, i32 %245)
  store i32 %246, i32* %7, align 4
  br label %250

247:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %248

248:                                              ; preds = %3, %247
  %249 = load i32, i32* @ENODEV, align 4
  store i32 %249, i32* %7, align 4
  br label %250

250:                                              ; preds = %248, %241, %235, %220, %214, %213, %197, %192, %191, %127, %17, %11
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @splx(i32 %251)
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @vtophys(i32) #1

declare dso_local i32 @vidd_get_info(%struct.TYPE_18__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @vidd_query_mode(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @vidd_set_mode(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @vidd_blank_display(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
