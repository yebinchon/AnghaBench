; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_bitmap.c_bitmap_or_ewah.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_bitmap.c_bitmap_or_ewah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i32* }
%struct.ewah_bitmap = type { i32 }
%struct.ewah_iterator = type { i32 }

@BITS_IN_EWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_or_ewah(%struct.bitmap* %0, %struct.ewah_bitmap* %1) #0 {
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca %struct.ewah_bitmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ewah_iterator, align 4
  %9 = alloca i32, align 4
  store %struct.bitmap* %0, %struct.bitmap** %3, align 8
  store %struct.ewah_bitmap* %1, %struct.ewah_bitmap** %4, align 8
  %10 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %11 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %14 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BITS_IN_EWORD, align 4
  %17 = sdiv i32 %15, %16
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %20 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %21 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %2
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %28 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %30 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %33 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @REALLOC_ARRAY(i32* %31, i64 %34)
  %36 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %37 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %42 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %43, %44
  %46 = mul i64 %45, 4
  %47 = call i32 @memset(i32* %40, i32 0, i64 %46)
  br label %48

48:                                               ; preds = %25, %2
  %49 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %50 = call i32 @ewah_iterator_init(%struct.ewah_iterator* %8, %struct.ewah_bitmap* %49)
  br label %51

51:                                               ; preds = %54, %48
  %52 = call i64 @ewah_iterator_next(i32* %9, %struct.ewah_iterator* %8)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %57 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  %61 = getelementptr inbounds i32, i32* %58, i64 %59
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %55
  store i32 %63, i32* %61, align 4
  br label %51

64:                                               ; preds = %51
  ret void
}

declare dso_local i32 @REALLOC_ARRAY(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @ewah_iterator_init(%struct.ewah_iterator*, %struct.ewah_bitmap*) #1

declare dso_local i64 @ewah_iterator_next(i32*, %struct.ewah_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
