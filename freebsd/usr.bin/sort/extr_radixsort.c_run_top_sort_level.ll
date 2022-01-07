; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_run_top_sort_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_run_top_sort_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sort_level = type { i64, i32, i64, i32, i64, i64, i32, %struct.sort_level** }

@sort_opts_vals = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@keys = common dso_local global %struct.TYPE_7__* null, align 8
@default_sort_mods = common dso_local global %struct.TYPE_8__* null, align 8
@reverse_sort = common dso_local global i32 0, align 4
@slsz = common dso_local global i32 0, align 4
@keys_num = common dso_local global i32 0, align 4
@list_coll = common dso_local global i64 0, align 8
@list_coll_by_str_only = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@PTHREAD_DETACHED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@mtsem = common dso_local global i32 0, align 4
@nthreads = common dso_local global i32 0, align 4
@sort_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sort_level*)* @run_top_sort_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_top_sort_level(%struct.sort_level* %0) #0 {
  %2 = alloca %struct.sort_level*, align 8
  %3 = alloca %struct.sort_level*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sort_level* %0, %struct.sort_level** %2, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sort_opts_vals, i32 0, i32 2), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keys, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_sort_mods, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ %15, %10 ], [ %19, %16 ]
  store i32 %21, i32* @reverse_sort, align 4
  %22 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %23 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %25 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %24, i32 0, i32 1
  store i32 256, i32* %25, align 8
  %26 = load i32, i32* @slsz, align 4
  %27 = call %struct.sort_level** @sort_malloc(i32 %26)
  %28 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %29 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %28, i32 0, i32 7
  store %struct.sort_level** %27, %struct.sort_level*** %29, align 8
  %30 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %31 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %30, i32 0, i32 7
  %32 = load %struct.sort_level**, %struct.sort_level*** %31, align 8
  %33 = load i32, i32* @slsz, align 4
  %34 = call i32 @memset(%struct.sort_level** %32, i32 0, i32 %33)
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %45, %20
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %38 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @place_item(%struct.sort_level* %42, i64 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %4, align 8
  br label %35

48:                                               ; preds = %35
  %49 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %50 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %98

53:                                               ; preds = %48
  %54 = load i32, i32* @keys_num, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sort_opts_vals, i32 0, i32 1), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %61 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %64 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @list_coll, align 8
  %67 = inttoptr i64 %66 to i32 (i8*, i8*)*
  %68 = call i32 @mergesort(i32 %62, i32 %65, i32 8, i32 (i8*, i8*)* %67)
  br label %79

69:                                               ; preds = %56
  %70 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %71 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %74 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* @list_coll, align 8
  %77 = inttoptr i64 %76 to i32 (i8*, i8*)*
  %78 = call i32 @DEFAULT_SORT_FUNC_RADIXSORT(i32 %72, i32 %75, i32 8, i32 (i8*, i8*)* %77)
  br label %79

79:                                               ; preds = %69, %59
  br label %97

80:                                               ; preds = %53
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sort_opts_vals, i32 0, i32 1), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sort_opts_vals, i32 0, i32 0), align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %88 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %91 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* @list_coll_by_str_only, align 8
  %94 = inttoptr i64 %93 to i32 (i8*, i8*)*
  %95 = call i32 @DEFAULT_SORT_FUNC_RADIXSORT(i32 %89, i32 %92, i32 8, i32 (i8*, i8*)* %94)
  br label %96

96:                                               ; preds = %86, %83, %80
  br label %97

97:                                               ; preds = %96, %79
  br label %98

98:                                               ; preds = %97, %48
  %99 = load i32, i32* @reverse_sort, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %177, label %101

101:                                              ; preds = %98
  %102 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %103 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %106 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  %109 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %110 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %113 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(i64 %108, i32 %111, i32 %117)
  %119 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %120 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %124 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %128 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @sort_left_dec(i32 %129)
  store i64 0, i64* %5, align 8
  br label %131

131:                                              ; preds = %173, %101
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %134 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = icmp ult i64 %132, %136
  br i1 %137, label %138, label %176

138:                                              ; preds = %131
  %139 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %140 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %139, i32 0, i32 7
  %141 = load %struct.sort_level**, %struct.sort_level*** %140, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.sort_level*, %struct.sort_level** %141, i64 %142
  %144 = load %struct.sort_level*, %struct.sort_level** %143, align 8
  store %struct.sort_level* %144, %struct.sort_level** %3, align 8
  %145 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %146 = icmp ne %struct.sort_level* %145, null
  br i1 %146, label %147, label %172

147:                                              ; preds = %138
  %148 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %149 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %152 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %151, i32 0, i32 5
  store i64 %150, i64* %152, align 8
  %153 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %154 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %157 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %159 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %162 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, %160
  store i64 %164, i64* %162, align 8
  %165 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %166 = call i32 @push_ls(%struct.sort_level* %165)
  %167 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %168 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %167, i32 0, i32 7
  %169 = load %struct.sort_level**, %struct.sort_level*** %168, align 8
  %170 = load i64, i64* %5, align 8
  %171 = getelementptr inbounds %struct.sort_level*, %struct.sort_level** %169, i64 %170
  store %struct.sort_level* null, %struct.sort_level** %171, align 8
  br label %172

172:                                              ; preds = %147, %138
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %5, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %5, align 8
  br label %131

176:                                              ; preds = %131
  br label %252

177:                                              ; preds = %98
  store i64 0, i64* %7, align 8
  br label %178

178:                                              ; preds = %227, %177
  %179 = load i64, i64* %7, align 8
  %180 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %181 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = icmp ult i64 %179, %183
  br i1 %184, label %185, label %230

185:                                              ; preds = %178
  %186 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %187 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* %7, align 8
  %191 = sub i64 %189, %190
  %192 = sub i64 %191, 1
  store i64 %192, i64* %6, align 8
  %193 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %194 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %193, i32 0, i32 7
  %195 = load %struct.sort_level**, %struct.sort_level*** %194, align 8
  %196 = load i64, i64* %6, align 8
  %197 = getelementptr inbounds %struct.sort_level*, %struct.sort_level** %195, i64 %196
  %198 = load %struct.sort_level*, %struct.sort_level** %197, align 8
  store %struct.sort_level* %198, %struct.sort_level** %3, align 8
  %199 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %200 = icmp ne %struct.sort_level* %199, null
  br i1 %200, label %201, label %226

201:                                              ; preds = %185
  %202 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %203 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %206 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %205, i32 0, i32 5
  store i64 %204, i64* %206, align 8
  %207 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %208 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %211 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %213 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %216 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %217, %214
  store i64 %218, i64* %216, align 8
  %219 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %220 = call i32 @push_ls(%struct.sort_level* %219)
  %221 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %222 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %221, i32 0, i32 7
  %223 = load %struct.sort_level**, %struct.sort_level*** %222, align 8
  %224 = load i64, i64* %6, align 8
  %225 = getelementptr inbounds %struct.sort_level*, %struct.sort_level** %223, i64 %224
  store %struct.sort_level* null, %struct.sort_level** %225, align 8
  br label %226

226:                                              ; preds = %201, %185
  br label %227

227:                                              ; preds = %226
  %228 = load i64, i64* %7, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %7, align 8
  br label %178

230:                                              ; preds = %178
  %231 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %232 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %231, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %235 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = add i64 %233, %236
  %238 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %239 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %242 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = mul i64 %244, 8
  %246 = trunc i64 %245 to i32
  %247 = call i32 @memcpy(i64 %237, i32 %240, i32 %246)
  %248 = load %struct.sort_level*, %struct.sort_level** %2, align 8
  %249 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @sort_left_dec(i32 %250)
  br label %252

252:                                              ; preds = %230, %176
  %253 = call i32 (...) @run_sort_cycle_st()
  ret void
}

declare dso_local %struct.sort_level** @sort_malloc(i32) #1

declare dso_local i32 @memset(%struct.sort_level**, i32, i32) #1

declare dso_local i32 @place_item(%struct.sort_level*, i64) #1

declare dso_local i32 @mergesort(i32, i32, i32, i32 (i8*, i8*)*) #1

declare dso_local i32 @DEFAULT_SORT_FUNC_RADIXSORT(i32, i32, i32, i32 (i8*, i8*)*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @sort_left_dec(i32) #1

declare dso_local i32 @push_ls(%struct.sort_level*) #1

declare dso_local i32 @run_sort_cycle_st(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
