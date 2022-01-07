; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_setblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_setblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_setblock(%struct.fs* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.fs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.fs* %0, %struct.fs** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.fs*, %struct.fs** %4, align 8
  %8 = getelementptr inbounds %struct.fs, %struct.fs* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  switch i32 %10, label %56 [
    i32 8, label %11
    i32 4, label %15
    i32 2, label %29
    i32 1, label %43
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8 -1, i8* %14, align 1
  br label %57

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, 1
  %18 = shl i64 %17, 2
  %19 = trunc i64 %18 to i32
  %20 = shl i32 15, %19
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = lshr i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %20
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 1
  br label %57

29:                                               ; preds = %3
  %30 = load i64, i64* %6, align 8
  %31 = and i64 %30, 3
  %32 = shl i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = shl i32 3, %33
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = lshr i64 %36, 2
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %34
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %38, align 1
  br label %57

43:                                               ; preds = %3
  %44 = load i64, i64* %6, align 8
  %45 = and i64 %44, 7
  %46 = trunc i64 %45 to i32
  %47 = shl i32 1, %46
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = lshr i64 %49, 3
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, %47
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  br label %57

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %11, %15, %29, %43, %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
