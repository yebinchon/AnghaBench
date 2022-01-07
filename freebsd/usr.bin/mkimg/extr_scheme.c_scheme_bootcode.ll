; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_scheme.c_scheme_bootcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_scheme.c_scheme_bootcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.stat = type { i64 }

@scheme = common dso_local global %struct.TYPE_2__* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@bootcode = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scheme_bootcode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scheme, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scheme, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %57

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @fstat(i32 %15, %struct.stat* %4)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %2, align 4
  br label %57

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scheme, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @EFBIG, align 4
  store i32 %28, i32* %2, align 4
  br label %57

29:                                               ; preds = %20
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scheme, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32* @malloc(i64 %32)
  store i32* %33, i32** @bootcode, align 8
  %34 = load i32*, i32** @bootcode, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %29
  %39 = load i32*, i32** @bootcode, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scheme, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @memset(i32* %39, i32 0, i64 %42)
  %44 = load i32, i32* %3, align 4
  %45 = load i32*, i32** @bootcode, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @read(i32 %44, i32* %45, i64 %47)
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = load i32*, i32** @bootcode, align 8
  %54 = call i32 @free(i32* %53)
  store i32* null, i32** @bootcode, align 8
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %52, %36, %27, %18, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
