; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_add_empty_word.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_add_empty_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32 }

@RLW_LARGEST_RUNNING_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ewah_bitmap*, i32)* @add_empty_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_empty_word(%struct.ewah_bitmap* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ewah_bitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %9 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @rlw_get_literal_words(i32 %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %15 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rlw_get_running_len(i32 %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %26 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @rlw_set_run_bit(i32 %27, i32 %28)
  %30 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %31 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rlw_get_run_bit(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %38

38:                                               ; preds = %24, %21, %2
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %43 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rlw_get_run_bit(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @RLW_LARGEST_RUNNING_COUNT, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %54 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i32 @rlw_set_running_len(i32 %55, i32 %58)
  %60 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %61 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rlw_get_running_len(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %7, align 8
  %66 = add nsw i64 %65, 1
  %67 = icmp eq i64 %64, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  store i64 0, i64* %3, align 8
  br label %125

70:                                               ; preds = %48, %41, %38
  %71 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %72 = call i32 @buffer_push_rlw(%struct.ewah_bitmap* %71, i32 0)
  %73 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %74 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @rlw_get_running_len(i32 %75)
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %81 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @rlw_get_run_bit(i32 %82)
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %88 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @rlw_get_literal_words(i32 %89)
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %95 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @rlw_set_run_bit(i32 %96, i32 %97)
  %99 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %100 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @rlw_get_run_bit(i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %108 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @rlw_set_running_len(i32 %109, i32 1)
  %111 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %112 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @rlw_get_running_len(i32 %113)
  %115 = icmp eq i32 %114, 1
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %119 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @rlw_get_literal_words(i32 %120)
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  store i64 1, i64* %3, align 8
  br label %125

125:                                              ; preds = %70, %52
  %126 = load i64, i64* %3, align 8
  ret i64 %126
}

declare dso_local i64 @rlw_get_literal_words(i32) #1

declare dso_local i32 @rlw_get_running_len(i32) #1

declare dso_local i32 @rlw_set_run_bit(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rlw_get_run_bit(i32) #1

declare dso_local i32 @rlw_set_running_len(i32, i32) #1

declare dso_local i32 @buffer_push_rlw(%struct.ewah_bitmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
