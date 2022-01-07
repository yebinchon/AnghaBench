; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_cache_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_cache_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry_ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.cache_common_entry_ = type { i32, i64, %struct.cache_policy_**, %struct.TYPE_4__, i32 (i8*)*, i32 }
%struct.cache_policy_ = type { i32 (%struct.cache_policy_*, %struct.cache_policy_item_*)*, %struct.cache_policy_item_* (...)* }
%struct.cache_policy_item_ = type { i8*, i64, i8, %struct.cache_policy_item_* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.cache_ht_item_data_ = type { i8*, i64, i32, i64, i8*, %struct.cache_policy_item_* }
%struct.cache_ht_item_ = type { i32 }

@CET_COMMON = common dso_local global i64 0, align 8
@cache_ht_ = common dso_local global i32 0, align 4
@cache_elemsize_common_continue_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_write(%struct.cache_entry_* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry_*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cache_common_entry_*, align 8
  %13 = alloca %struct.cache_ht_item_data_, align 8
  %14 = alloca %struct.cache_ht_item_data_*, align 8
  %15 = alloca %struct.cache_ht_item_*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.cache_policy_*, align 8
  %18 = alloca %struct.cache_policy_*, align 8
  %19 = alloca %struct.cache_policy_item_*, align 8
  %20 = alloca %struct.cache_policy_item_*, align 8
  store %struct.cache_entry_* %0, %struct.cache_entry_** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = call i32 @TRACE_IN(i32 (%struct.cache_entry_*, i8*, i64, i8*, i64)* @cache_write)
  %22 = load %struct.cache_entry_*, %struct.cache_entry_** %7, align 8
  %23 = icmp ne %struct.cache_entry_* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.cache_entry_*, %struct.cache_entry_** %7, align 8
  %35 = getelementptr inbounds %struct.cache_entry_, %struct.cache_entry_* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CET_COMMON, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.cache_entry_*, %struct.cache_entry_** %7, align 8
  %44 = bitcast %struct.cache_entry_* %43 to %struct.cache_common_entry_*
  store %struct.cache_common_entry_* %44, %struct.cache_common_entry_** %12, align 8
  %45 = call i32 @memset(%struct.cache_ht_item_data_* %13, i32 0, i32 48)
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* @cache_ht_, align 4
  %51 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %52 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %51, i32 0, i32 5
  %53 = call i64 @HASHTABLE_CALCULATE_HASH(i32 %50, i32* %52, %struct.cache_ht_item_data_* %13)
  store i64 %53, i64* %16, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %56 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %55, i32 0, i32 5
  %57 = call i64 @HASHTABLE_ENTRIES_COUNT(i32* %56)
  %58 = icmp slt i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %62 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %61, i32 0, i32 5
  %63 = load i64, i64* %16, align 8
  %64 = call %struct.cache_ht_item_* @HASHTABLE_GET_ENTRY(i32* %62, i64 %63)
  store %struct.cache_ht_item_* %64, %struct.cache_ht_item_** %15, align 8
  %65 = load i32, i32* @cache_ht_, align 4
  %66 = load %struct.cache_ht_item_*, %struct.cache_ht_item_** %15, align 8
  %67 = call %struct.cache_ht_item_data_* @HASHTABLE_ENTRY_FIND(i32 %65, %struct.cache_ht_item_* %66, %struct.cache_ht_item_data_* %13)
  store %struct.cache_ht_item_data_* %67, %struct.cache_ht_item_data_** %14, align 8
  %68 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %14, align 8
  %69 = icmp ne %struct.cache_ht_item_data_* %68, null
  br i1 %69, label %70, label %124

70:                                               ; preds = %5
  %71 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %14, align 8
  %72 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %75 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %79, label %122

79:                                               ; preds = %70
  %80 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %14, align 8
  %81 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %14, align 8
  %87 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @memcmp(i8* %88, i8* %89, i64 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %14, align 8
  %95 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %120

98:                                               ; preds = %85, %79
  %99 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i64, i64* %11, align 8
  %103 = call i8* @malloc(i64 %102)
  %104 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 4
  store i8* %103, i8** %104, align 8
  %105 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @memcpy(i8* %111, i8* %112, i32 %114)
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 3
  store i64 %116, i64* %117, align 8
  %118 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %14, align 8
  %119 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %98, %93
  %121 = call i32 @TRACE_OUT(i32 (%struct.cache_entry_*, i8*, i64, i8*, i64)* @cache_write)
  store i32 0, i32* %6, align 4
  br label %295

122:                                              ; preds = %70
  %123 = call i32 @TRACE_OUT(i32 (%struct.cache_entry_*, i8*, i64, i8*, i64)* @cache_write)
  store i32 -1, i32* %6, align 4
  br label %295

124:                                              ; preds = %5
  %125 = load i64, i64* %9, align 8
  %126 = call i8* @malloc(i64 %125)
  %127 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 0
  store i8* %126, i8** %127, align 8
  %128 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memcpy(i8* %129, i8* %130, i32 %132)
  %134 = load i64, i64* %11, align 8
  %135 = call i8* @malloc(i64 %134)
  %136 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 4
  store i8* %135, i8** %136, align 8
  %137 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 4
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 4
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load i64, i64* %11, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memcpy(i8* %143, i8* %144, i32 %146)
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 3
  store i64 %148, i64* %149, align 8
  %150 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 2
  store i32 1, i32* %150, align 8
  %151 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %152 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %151, i32 0, i32 2
  %153 = load %struct.cache_policy_**, %struct.cache_policy_*** %152, align 8
  %154 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %153, i64 0
  %155 = load %struct.cache_policy_*, %struct.cache_policy_** %154, align 8
  %156 = getelementptr inbounds %struct.cache_policy_, %struct.cache_policy_* %155, i32 0, i32 1
  %157 = load %struct.cache_policy_item_* (...)*, %struct.cache_policy_item_* (...)** %156, align 8
  %158 = call %struct.cache_policy_item_* (...) %157()
  store %struct.cache_policy_item_* %158, %struct.cache_policy_item_** %19, align 8
  %159 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %19, align 8
  %162 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %19, align 8
  %166 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %168 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %167, i32 0, i32 4
  %169 = load i32 (i8*)*, i32 (i8*)** %168, align 8
  %170 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %19, align 8
  %171 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %170, i32 0, i32 2
  %172 = call i32 %169(i8* %171)
  %173 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %174 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %207

177:                                              ; preds = %124
  %178 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %179 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %178, i32 0, i32 2
  %180 = load %struct.cache_policy_**, %struct.cache_policy_*** %179, align 8
  %181 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %180, i64 1
  %182 = load %struct.cache_policy_*, %struct.cache_policy_** %181, align 8
  %183 = getelementptr inbounds %struct.cache_policy_, %struct.cache_policy_* %182, i32 0, i32 1
  %184 = load %struct.cache_policy_item_* (...)*, %struct.cache_policy_item_* (...)** %183, align 8
  %185 = call %struct.cache_policy_item_* (...) %184()
  store %struct.cache_policy_item_* %185, %struct.cache_policy_item_** %20, align 8
  %186 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %20, align 8
  %187 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %186, i32 0, i32 2
  %188 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %19, align 8
  %189 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %188, i32 0, i32 2
  %190 = call i32 @memcpy(i8* %187, i8* %189, i32 4)
  %191 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %19, align 8
  %192 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %20, align 8
  %195 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  %196 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %19, align 8
  %197 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %20, align 8
  %200 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  %201 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %19, align 8
  %202 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %20, align 8
  %203 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %202, i32 0, i32 3
  store %struct.cache_policy_item_* %201, %struct.cache_policy_item_** %203, align 8
  %204 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %20, align 8
  %205 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %19, align 8
  %206 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %205, i32 0, i32 3
  store %struct.cache_policy_item_* %204, %struct.cache_policy_item_** %206, align 8
  br label %207

207:                                              ; preds = %177, %124
  %208 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %19, align 8
  %209 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %13, i32 0, i32 5
  store %struct.cache_policy_item_* %208, %struct.cache_policy_item_** %209, align 8
  %210 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %211 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %210, i32 0, i32 2
  %212 = load %struct.cache_policy_**, %struct.cache_policy_*** %211, align 8
  %213 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %212, i64 0
  %214 = load %struct.cache_policy_*, %struct.cache_policy_** %213, align 8
  %215 = getelementptr inbounds %struct.cache_policy_, %struct.cache_policy_* %214, i32 0, i32 0
  %216 = load i32 (%struct.cache_policy_*, %struct.cache_policy_item_*)*, i32 (%struct.cache_policy_*, %struct.cache_policy_item_*)** %215, align 8
  %217 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %218 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %217, i32 0, i32 2
  %219 = load %struct.cache_policy_**, %struct.cache_policy_*** %218, align 8
  %220 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %219, i64 0
  %221 = load %struct.cache_policy_*, %struct.cache_policy_** %220, align 8
  %222 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %19, align 8
  %223 = call i32 %216(%struct.cache_policy_* %221, %struct.cache_policy_item_* %222)
  %224 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %225 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp sgt i32 %226, 1
  br i1 %227, label %228, label %243

228:                                              ; preds = %207
  %229 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %230 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %229, i32 0, i32 2
  %231 = load %struct.cache_policy_**, %struct.cache_policy_*** %230, align 8
  %232 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %231, i64 1
  %233 = load %struct.cache_policy_*, %struct.cache_policy_** %232, align 8
  %234 = getelementptr inbounds %struct.cache_policy_, %struct.cache_policy_* %233, i32 0, i32 0
  %235 = load i32 (%struct.cache_policy_*, %struct.cache_policy_item_*)*, i32 (%struct.cache_policy_*, %struct.cache_policy_item_*)** %234, align 8
  %236 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %237 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %236, i32 0, i32 2
  %238 = load %struct.cache_policy_**, %struct.cache_policy_*** %237, align 8
  %239 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %238, i64 1
  %240 = load %struct.cache_policy_*, %struct.cache_policy_** %239, align 8
  %241 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %20, align 8
  %242 = call i32 %235(%struct.cache_policy_* %240, %struct.cache_policy_item_* %241)
  br label %243

243:                                              ; preds = %228, %207
  %244 = load i32, i32* @cache_ht_, align 4
  %245 = load %struct.cache_ht_item_*, %struct.cache_ht_item_** %15, align 8
  %246 = call i32 @HASHTABLE_ENTRY_STORE(i32 %244, %struct.cache_ht_item_* %245, %struct.cache_ht_item_data_* %13)
  %247 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %248 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, 1
  store i64 %250, i64* %248, align 8
  %251 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %252 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %293

256:                                              ; preds = %243
  %257 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %258 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %261 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %259, %263
  br i1 %264, label %265, label %293

265:                                              ; preds = %256
  %266 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %267 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp sgt i32 %268, 1
  br i1 %269, label %270, label %281

270:                                              ; preds = %265
  %271 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %272 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %271, i32 0, i32 2
  %273 = load %struct.cache_policy_**, %struct.cache_policy_*** %272, align 8
  %274 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %273, i64 1
  %275 = load %struct.cache_policy_*, %struct.cache_policy_** %274, align 8
  store %struct.cache_policy_* %275, %struct.cache_policy_** %17, align 8
  %276 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %277 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %276, i32 0, i32 2
  %278 = load %struct.cache_policy_**, %struct.cache_policy_*** %277, align 8
  %279 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %278, i64 0
  %280 = load %struct.cache_policy_*, %struct.cache_policy_** %279, align 8
  store %struct.cache_policy_* %280, %struct.cache_policy_** %18, align 8
  br label %287

281:                                              ; preds = %265
  %282 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %283 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %282, i32 0, i32 2
  %284 = load %struct.cache_policy_**, %struct.cache_policy_*** %283, align 8
  %285 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %284, i64 0
  %286 = load %struct.cache_policy_*, %struct.cache_policy_** %285, align 8
  store %struct.cache_policy_* %286, %struct.cache_policy_** %17, align 8
  store %struct.cache_policy_* null, %struct.cache_policy_** %18, align 8
  br label %287

287:                                              ; preds = %281, %270
  %288 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %12, align 8
  %289 = load %struct.cache_policy_*, %struct.cache_policy_** %17, align 8
  %290 = load %struct.cache_policy_*, %struct.cache_policy_** %18, align 8
  %291 = load i32, i32* @cache_elemsize_common_continue_func, align 4
  %292 = call i32 @flush_cache_policy(%struct.cache_common_entry_* %288, %struct.cache_policy_* %289, %struct.cache_policy_* %290, i32 %291)
  br label %293

293:                                              ; preds = %287, %256, %243
  %294 = call i32 @TRACE_OUT(i32 (%struct.cache_entry_*, i8*, i64, i8*, i64)* @cache_write)
  store i32 0, i32* %6, align 4
  br label %295

295:                                              ; preds = %293, %122, %120
  %296 = load i32, i32* %6, align 4
  ret i32 %296
}

declare dso_local i32 @TRACE_IN(i32 (%struct.cache_entry_*, i8*, i64, i8*, i64)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.cache_ht_item_data_*, i32, i32) #1

declare dso_local i64 @HASHTABLE_CALCULATE_HASH(i32, i32*, %struct.cache_ht_item_data_*) #1

declare dso_local i64 @HASHTABLE_ENTRIES_COUNT(i32*) #1

declare dso_local %struct.cache_ht_item_* @HASHTABLE_GET_ENTRY(i32*, i64) #1

declare dso_local %struct.cache_ht_item_data_* @HASHTABLE_ENTRY_FIND(i32, %struct.cache_ht_item_*, %struct.cache_ht_item_data_*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.cache_entry_*, i8*, i64, i8*, i64)*) #1

declare dso_local i32 @HASHTABLE_ENTRY_STORE(i32, %struct.cache_ht_item_*, %struct.cache_ht_item_data_*) #1

declare dso_local i32 @flush_cache_policy(%struct.cache_common_entry_*, %struct.cache_policy_*, %struct.cache_policy_*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
