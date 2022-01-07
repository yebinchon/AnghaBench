; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_subr.c_ffs_setblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_subr.c_ffs_setblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"ffs_setblock: unknown fs_fragshift %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_setblock(%struct.fs* %0, i32* %1, i64 %2) #0 {
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
  switch i32 %10, label %50 [
    i32 3, label %11
    i32 2, label %15
    i32 1, label %27
    i32 0, label %39
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 255, i32* %14, align 4
  br label %56

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, 1
  %18 = shl i64 %17, 2
  %19 = trunc i64 %18 to i32
  %20 = shl i32 15, %19
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = lshr i64 %22, 1
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %20
  store i32 %26, i32* %24, align 4
  br label %56

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = and i64 %28, 3
  %30 = shl i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = shl i32 3, %31
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = lshr i64 %34, 2
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  br label %56

39:                                               ; preds = %3
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, 7
  %42 = trunc i64 %41 to i32
  %43 = shl i32 1, %42
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = lshr i64 %45, 3
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  br label %56

50:                                               ; preds = %3
  %51 = load %struct.fs*, %struct.fs** %4, align 8
  %52 = getelementptr inbounds %struct.fs, %struct.fs* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %11, %15, %27, %39, %50
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
