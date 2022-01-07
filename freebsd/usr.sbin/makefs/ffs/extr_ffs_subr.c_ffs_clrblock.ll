; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_subr.c_ffs_clrblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_subr.c_ffs_clrblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"ffs_clrblock: unknown fs_fragshift %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_clrblock(%struct.fs* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.fs*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.fs* %0, %struct.fs** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.fs*, %struct.fs** %4, align 8
  %8 = getelementptr inbounds %struct.fs, %struct.fs* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  switch i32 %10, label %53 [
    i32 3, label %11
    i32 2, label %15
    i32 1, label %28
    i32 0, label %41
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 0, i32* %14, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, 1
  %18 = shl i64 %17, 2
  %19 = trunc i64 %18 to i32
  %20 = shl i32 15, %19
  %21 = xor i32 %20, -1
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = lshr i64 %23, 1
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %21
  store i32 %27, i32* %25, align 4
  br label %59

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %29, 3
  %31 = shl i64 %30, 1
  %32 = trunc i64 %31 to i32
  %33 = shl i32 3, %32
  %34 = xor i32 %33, -1
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = lshr i64 %36, 2
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %34
  store i32 %40, i32* %38, align 4
  br label %59

41:                                               ; preds = %3
  %42 = load i64, i64* %6, align 8
  %43 = and i64 %42, 7
  %44 = trunc i64 %43 to i32
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = lshr i64 %48, 3
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %46
  store i32 %52, i32* %50, align 4
  br label %59

53:                                               ; preds = %3
  %54 = load %struct.fs*, %struct.fs** %4, align 8
  %55 = getelementptr inbounds %struct.fs, %struct.fs* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %11, %15, %28, %41, %53
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
