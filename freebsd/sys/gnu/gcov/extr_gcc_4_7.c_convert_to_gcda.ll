; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcc_4_7.c_convert_to_gcda.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcc_4_7.c_convert_to_gcda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32, i32, i32, %struct.gcov_fn_info** }
%struct.gcov_fn_info = type { i32, i32, i32, %struct.gcov_ctr_info* }
%struct.gcov_ctr_info = type { i32, i32* }

@GCOV_DATA_MAGIC = common dso_local global i32 0, align 4
@GCOV_TAG_FUNCTION = common dso_local global i32 0, align 4
@GCOV_TAG_FUNCTION_LENGTH = common dso_local global i32 0, align 4
@GCOV_COUNTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.gcov_info*)* @convert_to_gcda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_to_gcda(i8* %0, %struct.gcov_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca %struct.gcov_fn_info*, align 8
  %6 = alloca %struct.gcov_ctr_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %4, align 8
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %10, align 8
  %13 = load i32, i32* @GCOV_DATA_MAGIC, align 4
  %14 = call i64 @store_gcov_uint32(i8* %11, i64 %12, i32 %13)
  %15 = load i64, i64* %10, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %10, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %20 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @store_gcov_uint32(i8* %17, i64 %18, i32 %21)
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %10, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %28 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @store_gcov_uint32(i8* %25, i64 %26, i32 %29)
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %142, %2
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %36 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %145

39:                                               ; preds = %33
  %40 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %41 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %40, i32 0, i32 3
  %42 = load %struct.gcov_fn_info**, %struct.gcov_fn_info*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.gcov_fn_info*, %struct.gcov_fn_info** %42, i64 %44
  %46 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %45, align 8
  store %struct.gcov_fn_info* %46, %struct.gcov_fn_info** %5, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* @GCOV_TAG_FUNCTION, align 4
  %50 = call i64 @store_gcov_uint32(i8* %47, i64 %48, i32 %49)
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* @GCOV_TAG_FUNCTION_LENGTH, align 4
  %56 = call i64 @store_gcov_uint32(i8* %53, i64 %54, i32 %55)
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %10, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %5, align 8
  %62 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @store_gcov_uint32(i8* %59, i64 %60, i32 %63)
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %10, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %5, align 8
  %70 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @store_gcov_uint32(i8* %67, i64 %68, i32 %71)
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %10, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %5, align 8
  %78 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @store_gcov_uint32(i8* %75, i64 %76, i32 %79)
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %10, align 8
  %83 = load %struct.gcov_fn_info*, %struct.gcov_fn_info** %5, align 8
  %84 = getelementptr inbounds %struct.gcov_fn_info, %struct.gcov_fn_info* %83, i32 0, i32 3
  %85 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %84, align 8
  store %struct.gcov_ctr_info* %85, %struct.gcov_ctr_info** %6, align 8
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %138, %39
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @GCOV_COUNTERS, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %141

90:                                               ; preds = %86
  %91 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @counter_active(%struct.gcov_info* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %138

96:                                               ; preds = %90
  %97 = load i8*, i8** %3, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @GCOV_TAG_FOR_COUNTER(i32 %99)
  %101 = call i64 @store_gcov_uint32(i8* %97, i64 %98, i32 %100)
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %10, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %107 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 2
  %110 = call i64 @store_gcov_uint32(i8* %104, i64 %105, i32 %109)
  %111 = load i64, i64* %10, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %132, %96
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %116 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ult i32 %114, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %113
  %120 = load i8*, i8** %3, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %123 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @store_gcov_uint64(i8* %120, i64 %121, i32 %128)
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %10, align 8
  br label %132

132:                                              ; preds = %119
  %133 = load i32, i32* %9, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %113

135:                                              ; preds = %113
  %136 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %137 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %136, i32 1
  store %struct.gcov_ctr_info* %137, %struct.gcov_ctr_info** %6, align 8
  br label %138

138:                                              ; preds = %135, %95
  %139 = load i32, i32* %8, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %86

141:                                              ; preds = %86
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %7, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %33

145:                                              ; preds = %33
  %146 = load i64, i64* %10, align 8
  ret i64 %146
}

declare dso_local i64 @store_gcov_uint32(i8*, i64, i32) #1

declare dso_local i32 @counter_active(%struct.gcov_info*, i32) #1

declare dso_local i32 @GCOV_TAG_FOR_COUNTER(i32) #1

declare dso_local i64 @store_gcov_uint64(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
