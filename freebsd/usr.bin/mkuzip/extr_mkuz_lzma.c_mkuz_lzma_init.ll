; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_lzma.c_mkuz_lzma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_lzma.c_mkuz_lzma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_lzma = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@USE_DEFAULT_LEVEL = common dso_local global i32 0, align 4
@LZMA_PRESET_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"provided compression level %d is invalid\00", align 1
@LZMA_STREAM_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Error loading LZMA preset\00", align 1
@LZMA_FILTER_LZMA2 = common dso_local global i32 0, align 4
@LZMA_VLI_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mkuz_lzma_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mkuz_lzma*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @USE_DEFAULT_LEVEL, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @LZMA_PRESET_DEFAULT, align 4
  %10 = load i32*, i32** %2, align 8
  store i32 %9, i32* %10, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 9
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %11
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = call %struct.mkuz_lzma* @mkuz_safe_zmalloc(i32 24)
  store %struct.mkuz_lzma* %24, %struct.mkuz_lzma** %3, align 8
  %25 = load i64, i64* @LZMA_STREAM_INIT, align 8
  %26 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %3, align 8
  %27 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %3, align 8
  %29 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %28, i32 0, i32 1
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @lzma_lzma_preset(i32* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i32, i32* @LZMA_FILTER_LZMA2, align 4
  %38 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %3, align 8
  %39 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 8
  %43 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %3, align 8
  %44 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %43, i32 0, i32 1
  %45 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %3, align 8
  %46 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32* %44, i32** %49, align 8
  %50 = load i32, i32* @LZMA_VLI_UNKNOWN, align 4
  %51 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %3, align 8
  %52 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %3, align 8
  %57 = bitcast %struct.mkuz_lzma* %56 to i8*
  ret i8* %57
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local %struct.mkuz_lzma* @mkuz_safe_zmalloc(i32) #1

declare dso_local i64 @lzma_lzma_preset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
