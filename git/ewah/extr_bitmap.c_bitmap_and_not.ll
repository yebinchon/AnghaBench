; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_bitmap.c_bitmap_and_not.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_bitmap.c_bitmap_and_not.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_and_not(%struct.bitmap* %0, %struct.bitmap* %1) #0 {
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %3, align 8
  store %struct.bitmap* %1, %struct.bitmap** %4, align 8
  %7 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %8 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %11 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %16 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %20 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i64 [ %17, %14 ], [ %21, %18 ]
  store i64 %23, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %43, %22
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %30 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %37 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %35
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %28
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %24

46:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
