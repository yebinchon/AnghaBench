; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_add.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32 }

@BITS_IN_EWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ewah_add(%struct.ewah_bitmap* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ewah_bitmap*, align 8
  %5 = alloca i64, align 8
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* @BITS_IN_EWORD, align 8
  %7 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %8 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %6
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %17 = call i64 @add_empty_word(%struct.ewah_bitmap* %16, i32 0)
  store i64 %17, i64* %3, align 8
  br label %28

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %23 = call i64 @add_empty_word(%struct.ewah_bitmap* %22, i32 1)
  store i64 %23, i64* %3, align 8
  br label %28

24:                                               ; preds = %18
  %25 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @add_literal(%struct.ewah_bitmap* %25, i64 %26)
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %24, %21, %15
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i64 @add_empty_word(%struct.ewah_bitmap*, i32) #1

declare dso_local i64 @add_literal(%struct.ewah_bitmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
