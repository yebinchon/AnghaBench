; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.freelist*, %struct.freelist*, %struct.TYPE_9__* }
%struct.freelist = type { i32, i32, i8**, i32, i32, %struct.freelist* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [19 x i8] c"%s: %d*%d=%d bytes\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: %d*%d=%d bytes, order %d\00", align 1
@DMAPOOL_PAGE_SIZE = common dso_local global i32 0, align 4
@os_max_cache_pages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @hpt_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt_alloc_mem(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.freelist*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %4, align 8
  br label %14

14:                                               ; preds = %29, %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %23(i32 %27)
  br label %29

29:                                               ; preds = %17
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %4, align 8
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @ldm_get_mem_info(i32 %37, i32 0)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.freelist*, %struct.freelist** %40, align 8
  store %struct.freelist* %41, %struct.freelist** %5, align 8
  br label %42

42:                                               ; preds = %97, %33
  %43 = load %struct.freelist*, %struct.freelist** %5, align 8
  %44 = icmp ne %struct.freelist* %43, null
  br i1 %44, label %45, label %101

45:                                               ; preds = %42
  %46 = load %struct.freelist*, %struct.freelist** %5, align 8
  %47 = getelementptr inbounds %struct.freelist, %struct.freelist* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.freelist*, %struct.freelist** %5, align 8
  %50 = getelementptr inbounds %struct.freelist, %struct.freelist* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.freelist*, %struct.freelist** %5, align 8
  %53 = getelementptr inbounds %struct.freelist, %struct.freelist* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.freelist*, %struct.freelist** %5, align 8
  %56 = getelementptr inbounds %struct.freelist, %struct.freelist* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.freelist*, %struct.freelist** %5, align 8
  %59 = getelementptr inbounds %struct.freelist, %struct.freelist* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @KdPrint(i8* %63)
  store i64 0, i64* %6, align 8
  br label %65

65:                                               ; preds = %93, %45
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.freelist*, %struct.freelist** %5, align 8
  %68 = getelementptr inbounds %struct.freelist, %struct.freelist* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %66, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %65
  %73 = load %struct.freelist*, %struct.freelist** %5, align 8
  %74 = getelementptr inbounds %struct.freelist, %struct.freelist* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @M_DEVBUF, align 4
  %77 = load i32, i32* @M_WAITOK, align 4
  %78 = call i64 @malloc(i32 %75, i32 %76, i32 %77)
  %79 = inttoptr i64 %78 to i8**
  store i8** %79, i8*** %7, align 8
  %80 = load i8**, i8*** %7, align 8
  %81 = icmp ne i8** %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %2, align 4
  br label %263

84:                                               ; preds = %72
  %85 = load %struct.freelist*, %struct.freelist** %5, align 8
  %86 = getelementptr inbounds %struct.freelist, %struct.freelist* %85, i32 0, i32 2
  %87 = load i8**, i8*** %86, align 8
  %88 = bitcast i8** %87 to i8*
  %89 = load i8**, i8*** %7, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i8**, i8*** %7, align 8
  %91 = load %struct.freelist*, %struct.freelist** %5, align 8
  %92 = getelementptr inbounds %struct.freelist, %struct.freelist* %91, i32 0, i32 2
  store i8** %90, i8*** %92, align 8
  br label %93

93:                                               ; preds = %84
  %94 = load i64, i64* %6, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %6, align 8
  br label %65

96:                                               ; preds = %65
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.freelist*, %struct.freelist** %5, align 8
  %99 = getelementptr inbounds %struct.freelist, %struct.freelist* %98, i32 0, i32 5
  %100 = load %struct.freelist*, %struct.freelist** %99, align 8
  store %struct.freelist* %100, %struct.freelist** %5, align 8
  br label %42

101:                                              ; preds = %42
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.freelist*, %struct.freelist** %103, align 8
  store %struct.freelist* %104, %struct.freelist** %5, align 8
  br label %105

105:                                              ; preds = %222, %101
  %106 = load %struct.freelist*, %struct.freelist** %5, align 8
  %107 = icmp ne %struct.freelist* %106, null
  br i1 %107, label %108, label %226

108:                                              ; preds = %105
  %109 = load %struct.freelist*, %struct.freelist** %5, align 8
  %110 = getelementptr inbounds %struct.freelist, %struct.freelist* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.freelist*, %struct.freelist** %5, align 8
  %113 = getelementptr inbounds %struct.freelist, %struct.freelist* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %111, %115
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @HPT_ASSERT(i32 %118)
  store i32 0, i32* %8, align 4
  %120 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %128, %108
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.freelist*, %struct.freelist** %5, align 8
  %124 = getelementptr inbounds %struct.freelist, %struct.freelist* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = shl i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %121

133:                                              ; preds = %121
  %134 = load %struct.freelist*, %struct.freelist** %5, align 8
  %135 = getelementptr inbounds %struct.freelist, %struct.freelist* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.freelist*, %struct.freelist** %5, align 8
  %138 = getelementptr inbounds %struct.freelist, %struct.freelist* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.freelist*, %struct.freelist** %5, align 8
  %141 = getelementptr inbounds %struct.freelist, %struct.freelist* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.freelist*, %struct.freelist** %5, align 8
  %144 = getelementptr inbounds %struct.freelist, %struct.freelist* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.freelist*, %struct.freelist** %5, align 8
  %147 = getelementptr inbounds %struct.freelist, %struct.freelist* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %145, %148
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 @KdPrint(i8* %152)
  %154 = load %struct.freelist*, %struct.freelist** %5, align 8
  %155 = getelementptr inbounds %struct.freelist, %struct.freelist* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @PAGE_SIZE, align 4
  %158 = icmp sle i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @HPT_ASSERT(i32 %159)
  store i64 0, i64* %6, align 8
  br label %161

161:                                              ; preds = %220, %133
  %162 = load i64, i64* %6, align 8
  %163 = load %struct.freelist*, %struct.freelist** %5, align 8
  %164 = getelementptr inbounds %struct.freelist, %struct.freelist* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %162, %166
  br i1 %167, label %168, label %221

168:                                              ; preds = %161
  %169 = load i32, i32* %8, align 4
  %170 = call i64 @__get_free_pages(i32 %169)
  %171 = inttoptr i64 %170 to i8**
  store i8** %171, i8*** %7, align 8
  %172 = load i8**, i8*** %7, align 8
  %173 = icmp ne i8** %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %168
  store i32 -1, i32* %2, align 4
  br label %263

175:                                              ; preds = %168
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.freelist*, %struct.freelist** %5, align 8
  %178 = getelementptr inbounds %struct.freelist, %struct.freelist* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 %176, %179
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %215, %175
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load i64, i64* %6, align 8
  %186 = load %struct.freelist*, %struct.freelist** %5, align 8
  %187 = getelementptr inbounds %struct.freelist, %struct.freelist* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = icmp slt i64 %185, %189
  br label %191

191:                                              ; preds = %184, %181
  %192 = phi i1 [ false, %181 ], [ %190, %184 ]
  br i1 %192, label %193, label %220

193:                                              ; preds = %191
  %194 = load %struct.freelist*, %struct.freelist** %5, align 8
  %195 = getelementptr inbounds %struct.freelist, %struct.freelist* %194, i32 0, i32 2
  %196 = load i8**, i8*** %195, align 8
  %197 = bitcast i8** %196 to i8*
  %198 = load i8**, i8*** %7, align 8
  store i8* %197, i8** %198, align 8
  %199 = load i8**, i8*** %7, align 8
  %200 = call i64 @vtophys(i8** %199)
  %201 = load i8**, i8*** %7, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 1
  %203 = bitcast i8** %202 to i64*
  store i64 %200, i64* %203, align 8
  %204 = load i8**, i8*** %7, align 8
  %205 = load %struct.freelist*, %struct.freelist** %5, align 8
  %206 = getelementptr inbounds %struct.freelist, %struct.freelist* %205, i32 0, i32 2
  store i8** %204, i8*** %206, align 8
  %207 = load i8**, i8*** %7, align 8
  %208 = ptrtoint i8** %207 to i64
  %209 = load %struct.freelist*, %struct.freelist** %5, align 8
  %210 = getelementptr inbounds %struct.freelist, %struct.freelist* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = add i64 %208, %212
  %214 = inttoptr i64 %213 to i8**
  store i8** %214, i8*** %7, align 8
  br label %215

215:                                              ; preds = %193
  %216 = load i64, i64* %6, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %6, align 8
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %10, align 4
  br label %181

220:                                              ; preds = %191
  br label %161

221:                                              ; preds = %161
  br label %222

222:                                              ; preds = %221
  %223 = load %struct.freelist*, %struct.freelist** %5, align 8
  %224 = getelementptr inbounds %struct.freelist, %struct.freelist* %223, i32 0, i32 5
  %225 = load %struct.freelist*, %struct.freelist** %224, align 8
  store %struct.freelist* %225, %struct.freelist** %5, align 8
  br label %105

226:                                              ; preds = %105
  %227 = load i32, i32* @PAGE_SIZE, align 4
  %228 = load i32, i32* @DMAPOOL_PAGE_SIZE, align 4
  %229 = icmp eq i32 %227, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @HPT_ASSERT(i32 %230)
  store i64 0, i64* %6, align 8
  br label %232

232:                                              ; preds = %259, %226
  %233 = load i64, i64* %6, align 8
  %234 = load i64, i64* @os_max_cache_pages, align 8
  %235 = icmp slt i64 %233, %234
  br i1 %235, label %236, label %262

236:                                              ; preds = %232
  %237 = call i64 @__get_free_pages(i32 0)
  %238 = inttoptr i64 %237 to i8**
  store i8** %238, i8*** %7, align 8
  %239 = load i8**, i8*** %7, align 8
  %240 = icmp ne i8** %239, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %236
  store i32 -1, i32* %2, align 4
  br label %263

242:                                              ; preds = %236
  %243 = load i8**, i8*** %7, align 8
  %244 = ptrtoint i8** %243 to i32
  %245 = load i32, i32* @DMAPOOL_PAGE_SIZE, align 4
  %246 = sub nsw i32 %245, 1
  %247 = and i32 %244, %246
  %248 = icmp eq i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = call i32 @HPT_ASSERT(i32 %249)
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = load i8**, i8*** %7, align 8
  %256 = load i8**, i8*** %7, align 8
  %257 = call i64 @vtophys(i8** %256)
  %258 = call i32 @dmapool_put_page(i32 %254, i8** %255, i64 %257)
  br label %259

259:                                              ; preds = %242
  %260 = load i64, i64* %6, align 8
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %6, align 8
  br label %232

262:                                              ; preds = %232
  store i32 0, i32* %2, align 4
  br label %263

263:                                              ; preds = %262, %241, %174, %82
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local i32 @ldm_get_mem_info(i32, i32) #1

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @HPT_ASSERT(i32) #1

declare dso_local i64 @__get_free_pages(i32) #1

declare dso_local i64 @vtophys(i8**) #1

declare dso_local i32 @dmapool_put_page(i32, i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
