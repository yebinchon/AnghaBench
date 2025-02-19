; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_add_empty_words.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_add_empty_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32 }

@RLW_LARGEST_RUNNING_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ewah_bitmap*, i32, i64)* @add_empty_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_empty_words(%struct.ewah_bitmap* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ewah_bitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %11 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rlw_get_run_bit(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %18 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @rlw_size(i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %24 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @rlw_set_run_bit(i32 %25, i32 %26)
  br label %56

28:                                               ; preds = %16, %3
  %29 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %30 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @rlw_get_literal_words(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %36 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rlw_get_run_bit(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %34, %28
  %42 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %43 = call i32 @buffer_push_rlw(%struct.ewah_bitmap* %42, i32 0)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %48 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @rlw_set_run_bit(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %52, %34
  br label %56

56:                                               ; preds = %55, %22
  %57 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %58 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @rlw_get_running_len(i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @RLW_LARGEST_RUNNING_COUNT, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub i64 %62, %63
  %65 = call i64 @min_size(i64 %61, i64 %64)
  store i64 %65, i64* %9, align 8
  %66 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %67 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %69, %70
  %72 = call i32 @rlw_set_running_len(i32 %68, i64 %71)
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %6, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %93, %56
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @RLW_LARGEST_RUNNING_COUNT, align 8
  %79 = icmp uge i64 %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %76
  %81 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %82 = call i32 @buffer_push_rlw(%struct.ewah_bitmap* %81, i32 0)
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %89 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @rlw_set_run_bit(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %95 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* @RLW_LARGEST_RUNNING_COUNT, align 8
  %98 = call i32 @rlw_set_running_len(i32 %96, i64 %97)
  %99 = load i64, i64* @RLW_LARGEST_RUNNING_COUNT, align 8
  %100 = load i64, i64* %6, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %6, align 8
  br label %76

102:                                              ; preds = %76
  %103 = load i64, i64* %6, align 8
  %104 = icmp ugt i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %107 = call i32 @buffer_push_rlw(%struct.ewah_bitmap* %106, i32 0)
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %7, align 8
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %114 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @rlw_set_run_bit(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %105
  %119 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %120 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @rlw_set_running_len(i32 %121, i64 %122)
  br label %124

124:                                              ; preds = %118, %102
  %125 = load i64, i64* %7, align 8
  ret i64 %125
}

declare dso_local i32 @rlw_get_run_bit(i32) #1

declare dso_local i64 @rlw_size(i32) #1

declare dso_local i32 @rlw_set_run_bit(i32, i32) #1

declare dso_local i64 @rlw_get_literal_words(i32) #1

declare dso_local i32 @buffer_push_rlw(%struct.ewah_bitmap*, i32) #1

declare dso_local i64 @rlw_get_running_len(i32) #1

declare dso_local i64 @min_size(i64, i64) #1

declare dso_local i32 @rlw_set_running_len(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
