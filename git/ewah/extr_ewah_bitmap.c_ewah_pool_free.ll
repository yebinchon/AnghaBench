; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_pool_free.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i64 }

@bitmap_pool_size = common dso_local global i64 0, align 8
@BITMAP_POOL_MAX = common dso_local global i64 0, align 8
@bitmap_pool = common dso_local global %struct.ewah_bitmap** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ewah_pool_free(%struct.ewah_bitmap* %0) #0 {
  %2 = alloca %struct.ewah_bitmap*, align 8
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %2, align 8
  %3 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  %4 = icmp eq %struct.ewah_bitmap* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %26

6:                                                ; preds = %1
  %7 = load i64, i64* @bitmap_pool_size, align 8
  %8 = load i64, i64* @BITMAP_POOL_MAX, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  %12 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %6
  %16 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  %17 = call i32 @ewah_free(%struct.ewah_bitmap* %16)
  br label %26

18:                                               ; preds = %10
  %19 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  %20 = call i32 @ewah_clear(%struct.ewah_bitmap* %19)
  %21 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  %22 = load %struct.ewah_bitmap**, %struct.ewah_bitmap*** @bitmap_pool, align 8
  %23 = load i64, i64* @bitmap_pool_size, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @bitmap_pool_size, align 8
  %25 = getelementptr inbounds %struct.ewah_bitmap*, %struct.ewah_bitmap** %22, i64 %23
  store %struct.ewah_bitmap* %21, %struct.ewah_bitmap** %25, align 8
  br label %26

26:                                               ; preds = %18, %15, %5
  ret void
}

declare dso_local i32 @ewah_free(%struct.ewah_bitmap*) #1

declare dso_local i32 @ewah_clear(%struct.ewah_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
