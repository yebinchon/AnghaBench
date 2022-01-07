; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_bitmap.c_bitmap_to_ewah.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_bitmap.c_bitmap_to_ewah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32 }
%struct.bitmap = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ewah_bitmap* @bitmap_to_ewah(%struct.bitmap* %0) #0 {
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca %struct.ewah_bitmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %2, align 8
  %7 = call %struct.ewah_bitmap* (...) @ewah_new()
  store %struct.ewah_bitmap* %7, %struct.ewah_bitmap** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %46, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %11 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %16 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %46

25:                                               ; preds = %14
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @ewah_add(%struct.ewah_bitmap* %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i64, i64* %5, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @ewah_add_empty_words(%struct.ewah_bitmap* %36, i32 0, i64 %37)
  store i64 0, i64* %5, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %41 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %39, %22
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %8

49:                                               ; preds = %8
  %50 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @ewah_add(%struct.ewah_bitmap* %50, i64 %51)
  %53 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  ret %struct.ewah_bitmap* %53
}

declare dso_local %struct.ewah_bitmap* @ewah_new(...) #1

declare dso_local i32 @ewah_add(%struct.ewah_bitmap*, i64) #1

declare dso_local i32 @ewah_add_empty_words(%struct.ewah_bitmap*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
