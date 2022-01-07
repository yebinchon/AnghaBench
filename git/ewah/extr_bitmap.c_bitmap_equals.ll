; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_bitmap.c_bitmap_equals.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_bitmap.c_bitmap_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_equals(%struct.bitmap* %0, %struct.bitmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca %struct.bitmap*, align 8
  %6 = alloca %struct.bitmap*, align 8
  %7 = alloca %struct.bitmap*, align 8
  %8 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %4, align 8
  store %struct.bitmap* %1, %struct.bitmap** %5, align 8
  %9 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %10 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %13 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  store %struct.bitmap* %17, %struct.bitmap** %7, align 8
  %18 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  store %struct.bitmap* %18, %struct.bitmap** %6, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  store %struct.bitmap* %20, %struct.bitmap** %7, align 8
  %21 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  store %struct.bitmap* %21, %struct.bitmap** %6, align 8
  br label %22

22:                                               ; preds = %19, %16
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %26 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %31 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %37 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %35, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %69

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %23

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %52 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %57 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %69

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %49

68:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %63, %43
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
