; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-teken.c_scteken_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-teken.c_scteken_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_13__*, %struct.TYPE_14__*)* @scteken_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scteken_copy(i8* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sc_hist_save_one_line(%struct.TYPE_15__* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %33, %24, %18, %3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %55
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub i32 %85, %89
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul i32 %90, %93
  %95 = call i32 @sc_vtb_move(i32* %66, i32 %74, i32 %81, i32 %94)
  br label %247

96:                                               ; preds = %55, %49
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub i32 %100, %104
  store i32 %105, i32* %8, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %108, %112
  br i1 %113, label %114, label %174

114:                                              ; preds = %96
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %118, %121
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add i32 %122, %126
  store i32 %127, i32* %9, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul i32 %131, %134
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %135, %139
  store i32 %140, i32* %11, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 %143, %146
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %147, %150
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %156, %114
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %152
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @sc_vtb_move(i32* %158, i32 %159, i32 %160, i32 %161)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %9, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %152

173:                                              ; preds = %152
  br label %246

174:                                              ; preds = %96
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sub i32 %178, 1
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = mul i32 %179, %182
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %183, %187
  store i32 %188, i32* %9, align 4
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 %192, %195
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = add i32 %196, %200
  store i32 %201, i32* %11, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %204, %208
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sub i32 %209, %213
  %215 = sub i32 %214, 1
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = mul i32 %215, %218
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = add i32 %219, %222
  store i32 %223, i32* %10, align 4
  br label %224

224:                                              ; preds = %228, %174
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp sge i32 %225, %226
  br i1 %227, label %228, label %245

228:                                              ; preds = %224
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 1
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @sc_vtb_move(i32* %230, i32 %231, i32 %232, i32 %233)
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sub nsw i32 %238, %237
  store i32 %239, i32* %9, align 4
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sub nsw i32 %243, %242
  store i32 %244, i32* %10, align 4
  br label %224

245:                                              ; preds = %224
  br label %246

246:                                              ; preds = %245, %173
  br label %247

247:                                              ; preds = %246, %64
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = mul nsw i32 %251, %254
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %255, %258
  %260 = call i32 @mark_for_update(%struct.TYPE_15__* %248, i32 %259)
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = add i32 %264, %268
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sub i32 %269, %273
  %275 = sub i32 %274, 1
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = mul i32 %275, %278
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %282, %286
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = sub i32 %287, %291
  %293 = sub i32 %292, 1
  %294 = add i32 %279, %293
  %295 = call i32 @mark_for_update(%struct.TYPE_15__* %261, i32 %294)
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %297 = call i32 @sc_remove_cutmarking(%struct.TYPE_15__* %296)
  ret void
}

declare dso_local i32 @sc_hist_save_one_line(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sc_vtb_move(i32*, i32, i32, i32) #1

declare dso_local i32 @mark_for_update(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sc_remove_cutmarking(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
