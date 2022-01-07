; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_zstd.c_mkuz_zstd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_zstd.c_mkuz_zstd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USE_DEFAULT_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"provided compression level %d is invalid\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not allocate Zstd context\00", align 1
@ZSTD_c_compressionLevel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Could not set zstd compression level %d: %s\00", align 1
@ZSTD_c_checksumFlag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not enable zstd checksum: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mkuz_zstd_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @USE_DEFAULT_LEVEL, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  store i32 9, i32* %10, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (...) @ZSTD_minCLevel()
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (...) @ZSTD_maxCLevel()
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %16, %11
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = call i8* (...) @ZSTD_createCCtx()
  store i8* %30, i8** %3, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @ZSTD_c_compressionLevel, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ZSTD_CCtx_setParameter(i8* %36, i32 %37, i32 %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @ZSTD_isError(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @ZSTD_getErrorName(i64 %47)
  %49 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %44, %35
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* @ZSTD_c_checksumFlag, align 4
  %53 = call i64 @ZSTD_CCtx_setParameter(i8* %51, i32 %52, i32 1)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @ZSTD_isError(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @ZSTD_getErrorName(i64 %58)
  %60 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %50
  %62 = load i8*, i8** %3, align 8
  ret i8* %62
}

declare dso_local i32 @ZSTD_minCLevel(...) #1

declare dso_local i32 @ZSTD_maxCLevel(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @ZSTD_createCCtx(...) #1

declare dso_local i64 @ZSTD_CCtx_setParameter(i8*, i32, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_getErrorName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
