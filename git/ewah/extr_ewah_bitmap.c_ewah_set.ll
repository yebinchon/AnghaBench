; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_set.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i64, i64*, i32, i32 }

@BITS_IN_EWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ewah_set(%struct.ewah_bitmap* %0, i64 %1) #0 {
  %3 = alloca %struct.ewah_bitmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add i64 %6, 1
  %8 = load i64, i64* @BITS_IN_EWORD, align 8
  %9 = call i64 @DIV_ROUND_UP(i64 %7, i64 %8)
  %10 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %11 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BITS_IN_EWORD, align 8
  %14 = call i64 @DIV_ROUND_UP(i64 %12, i64 %13)
  %15 = sub i64 %9, %14
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %18 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  %25 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %26 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = icmp ugt i64 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = sub i64 %34, 1
  %36 = call i32 @add_empty_words(%struct.ewah_bitmap* %33, i32 0, i64 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @BITS_IN_EWORD, align 8
  %41 = urem i64 %39, %40
  %42 = shl i64 1, %41
  %43 = call i32 @add_literal(%struct.ewah_bitmap* %38, i64 %42)
  br label %114

44:                                               ; preds = %2
  %45 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %46 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @rlw_get_literal_words(i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %52 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %55 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @rlw_get_running_len(i32 %56)
  %58 = sub nsw i64 %57, 1
  %59 = call i32 @rlw_set_running_len(i32 %53, i64 %58)
  %60 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @BITS_IN_EWORD, align 8
  %63 = urem i64 %61, %62
  %64 = shl i64 1, %63
  %65 = call i32 @add_literal(%struct.ewah_bitmap* %60, i64 %64)
  br label %114

66:                                               ; preds = %44
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @BITS_IN_EWORD, align 8
  %69 = urem i64 %67, %68
  %70 = shl i64 1, %69
  %71 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %72 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %75 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %73, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = or i64 %80, %70
  store i64 %81, i64* %79, align 8
  %82 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %83 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %86 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %84, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, -1
  br i1 %92, label %93, label %114

93:                                               ; preds = %66
  %94 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %95 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %98 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %96, i64 %101
  store i64 0, i64* %102, align 8
  %103 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %104 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %107 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @rlw_get_literal_words(i32 %108)
  %110 = sub nsw i64 %109, 1
  %111 = call i32 @rlw_set_literal_words(i32 %105, i64 %110)
  %112 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %113 = call i32 @add_empty_word(%struct.ewah_bitmap* %112, i32 1)
  br label %114

114:                                              ; preds = %37, %50, %93, %66
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @add_empty_words(%struct.ewah_bitmap*, i32, i64) #1

declare dso_local i32 @add_literal(%struct.ewah_bitmap*, i64) #1

declare dso_local i64 @rlw_get_literal_words(i32) #1

declare dso_local i32 @rlw_set_running_len(i32, i64) #1

declare dso_local i64 @rlw_get_running_len(i32) #1

declare dso_local i32 @rlw_set_literal_words(i32, i64) #1

declare dso_local i32 @add_empty_word(%struct.ewah_bitmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
