; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_bitmap.c_ewah_to_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_bitmap.c_ewah_to_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i32* }
%struct.ewah_bitmap = type { i32 }
%struct.ewah_iterator = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bitmap* @ewah_to_bitmap(%struct.ewah_bitmap* %0) #0 {
  %2 = alloca %struct.ewah_bitmap*, align 8
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca %struct.ewah_iterator, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %2, align 8
  %7 = call %struct.bitmap* (...) @bitmap_new()
  store %struct.bitmap* %7, %struct.bitmap** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  %9 = call i32 @ewah_iterator_init(%struct.ewah_iterator* %4, %struct.ewah_bitmap* %8)
  br label %10

10:                                               ; preds = %13, %1
  %11 = call i64 @ewah_iterator_next(i32* %5, %struct.ewah_iterator* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %15 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, 1
  %19 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %20 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ALLOC_GROW(i32* %16, i64 %18, i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %25 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %6, align 8
  %29 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %23, i32* %29, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %33 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  ret %struct.bitmap* %34
}

declare dso_local %struct.bitmap* @bitmap_new(...) #1

declare dso_local i32 @ewah_iterator_init(%struct.ewah_iterator*, %struct.ewah_bitmap*) #1

declare dso_local i64 @ewah_iterator_next(i32*, %struct.ewah_iterator*) #1

declare dso_local i32 @ALLOC_GROW(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
