; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_subr.c_ffs_isblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_subr.c_ffs_isblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"ffs_isblock: unknown fs_fragshift %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffs_isblock(%struct.fs* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fs* %0, %struct.fs** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.fs*, %struct.fs** %5, align 8
  %10 = getelementptr inbounds %struct.fs, %struct.fs* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  switch i32 %12, label %67 [
    i32 3, label %13
    i32 2, label %20
    i32 1, label %36
    i32 0, label %52
  ]

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 255
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  br label %73

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %21, 1
  %23 = shl i64 %22, 2
  %24 = trunc i64 %23 to i32
  %25 = shl i32 15, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = lshr i64 %27, 1
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %73

36:                                               ; preds = %3
  %37 = load i64, i64* %7, align 8
  %38 = and i64 %37, 3
  %39 = shl i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = shl i32 3, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = lshr i64 %43, 2
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %73

52:                                               ; preds = %3
  %53 = load i64, i64* %7, align 8
  %54 = and i64 %53, 7
  %55 = trunc i64 %54 to i32
  %56 = shl i32 1, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = lshr i64 %58, 3
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %3
  %68 = load %struct.fs*, %struct.fs** %5, align 8
  %69 = getelementptr inbounds %struct.fs, %struct.fs* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %13, %20, %36, %52, %67
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
