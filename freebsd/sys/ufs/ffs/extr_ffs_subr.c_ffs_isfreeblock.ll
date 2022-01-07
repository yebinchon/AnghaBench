; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_isfreeblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_isfreeblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffs_isfreeblock(%struct.fs* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.fs* %0, %struct.fs** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.fs*, %struct.fs** %5, align 8
  %9 = getelementptr inbounds %struct.fs, %struct.fs* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  switch i32 %11, label %60 [
    i32 8, label %12
    i32 4, label %19
    i32 2, label %33
    i32 1, label %47
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = lshr i64 %21, 1
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, 1
  %27 = shl i64 %26, 2
  %28 = trunc i64 %27 to i32
  %29 = shl i32 15, %28
  %30 = and i32 %24, %29
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %62

33:                                               ; preds = %3
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = lshr i64 %35, 2
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %39, 3
  %41 = shl i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = shl i32 3, %42
  %44 = and i32 %38, %43
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %62

47:                                               ; preds = %3
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = lshr i64 %49, 3
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %7, align 8
  %54 = and i64 %53, 7
  %55 = trunc i64 %54 to i32
  %56 = shl i32 1, %55
  %57 = and i32 %52, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %3
  br label %61

61:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %47, %33, %19, %12
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
