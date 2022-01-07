; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_checksum.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ewah_checksum(%struct.ewah_bitmap* %0) #0 {
  %2 = alloca %struct.ewah_bitmap*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %2, align 8
  %6 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  %7 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  %11 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  %15 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %23, %1
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %5, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 5
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %3, align 8
  %30 = load i32, i32* %28, align 4
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %4, align 4
  br label %19

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
