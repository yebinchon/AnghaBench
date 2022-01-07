; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_skip_cols_to_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_skip_cols_to_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bwstring*, i64, i64, i32, i32*)* @skip_cols_to_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skip_cols_to_start(%struct.bwstring* %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.bwstring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ult i64 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %16 = call i64 @BWSLEN(%struct.bwstring* %15)
  %17 = add i64 %16, 1
  store i64 %17, i64* %6, align 8
  br label %64

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %25 = call i64 @BWSLEN(%struct.bwstring* %24)
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @BWS_GET(%struct.bwstring* %28, i64 %29)
  %31 = call i64 @iswblank(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i1 [ false, %22 ], [ %32, %27 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %9, align 8
  br label %22

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %18
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %43 = call i64 @BWSLEN(%struct.bwstring* %42)
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64, i64* %8, align 8
  %47 = icmp ugt i64 %46, 1
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi i1 [ false, %40 ], [ %47, %45 ]
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %40

55:                                               ; preds = %48
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %58 = call i64 @BWSLEN(%struct.bwstring* %57)
  %59 = icmp uge i64 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32*, i32** %11, align 8
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %62, %14
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

declare dso_local i64 @BWSLEN(%struct.bwstring*) #1

declare dso_local i64 @iswblank(i32) #1

declare dso_local i32 @BWS_GET(%struct.bwstring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
