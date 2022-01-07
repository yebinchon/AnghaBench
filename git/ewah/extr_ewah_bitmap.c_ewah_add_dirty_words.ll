; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_add_dirty_words.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_add_dirty_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i64, i64, i64, i32*, i32 }

@RLW_LARGEST_LITERAL_COUNT = common dso_local global i64 0, align 8
@BITS_IN_EWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ewah_add_dirty_words(%struct.ewah_bitmap* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ewah_bitmap*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  br label %12

12:                                               ; preds = %4, %104
  %13 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %14 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @rlw_get_literal_words(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @RLW_LARGEST_LITERAL_COUNT, align 8
  %19 = load i64, i64* %9, align 8
  %20 = sub i64 %18, %19
  %21 = call i64 @min_size(i64 %17, i64 %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %23 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @rlw_set_literal_words(i32 %24, i64 %27)
  %29 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %30 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %31, %32
  %34 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %35 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %12
  %39 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %40 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %41 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %42, %43
  %45 = mul i64 %44, 3
  %46 = udiv i64 %45, 2
  %47 = call i32 @buffer_grow(%struct.ewah_bitmap* %39, i64 %46)
  br label %48

48:                                               ; preds = %38, %12
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  store i64 0, i64* %11, align 8
  br label %52

52:                                               ; preds = %70, %51
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %63 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %66 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %61, i32* %69, align 4
  br label %70

70:                                               ; preds = %56
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %11, align 8
  br label %52

73:                                               ; preds = %52
  br label %91

74:                                               ; preds = %48
  %75 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %76 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %79 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* %10, align 8
  %84 = mul i64 %83, 4
  %85 = call i32 @memcpy(i32* %81, i32* %82, i64 %84)
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %88 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %86
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %74, %73
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @BITS_IN_EWORD, align 8
  %94 = mul i64 %92, %93
  %95 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %96 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, %94
  store i64 %98, i64* %96, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %10, align 8
  %101 = sub i64 %99, %100
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %113

104:                                              ; preds = %91
  %105 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %106 = call i32 @buffer_push_rlw(%struct.ewah_bitmap* %105, i32 0)
  %107 = load i64, i64* %10, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 %107
  store i32* %109, i32** %6, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %7, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %7, align 8
  br label %12

113:                                              ; preds = %103
  ret void
}

declare dso_local i64 @rlw_get_literal_words(i32) #1

declare dso_local i64 @min_size(i64, i64) #1

declare dso_local i32 @rlw_set_literal_words(i32, i64) #1

declare dso_local i32 @buffer_grow(%struct.ewah_bitmap*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @buffer_push_rlw(%struct.ewah_bitmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
