; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_lzma.c_mkuz_lzma_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_lzma.c_mkuz_lzma_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_blk = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.mkuz_lzma = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@LZMA_CHECK_CRC32 = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i64 0, align 8
@LZMA_MEMLIMIT_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"can't compress data: LZMA_MEMLIMIT_ERROR\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"can't compress data: LZMA compressor ERROR\00", align 1
@LZMA_FINISH = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"lzma_code FINISH failed, code=%d, pos(in=%zd, out=%zd)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mkuz_lzma_compress(i8* %0, %struct.mkuz_blk* %1, %struct.mkuz_blk* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mkuz_blk*, align 8
  %6 = alloca %struct.mkuz_blk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mkuz_lzma*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.mkuz_blk* %1, %struct.mkuz_blk** %5, align 8
  store %struct.mkuz_blk* %2, %struct.mkuz_blk** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mkuz_lzma*
  store %struct.mkuz_lzma* %10, %struct.mkuz_lzma** %8, align 8
  %11 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %8, align 8
  %12 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %11, i32 0, i32 0
  %13 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %8, align 8
  %14 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LZMA_CHECK_CRC32, align 4
  %17 = call i64 @lzma_stream_encoder(%struct.TYPE_6__* %12, i32 %15, i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @LZMA_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @LZMA_MEMLIMIT_ERROR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %3
  %30 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %31 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %8, align 8
  %34 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %37 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %8, align 8
  %41 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %44 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %8, align 8
  %47 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %50 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %8, align 8
  %53 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %8, align 8
  %56 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %55, i32 0, i32 0
  %57 = load i32, i32* @LZMA_FINISH, align 4
  %58 = call i64 @lzma_code(%struct.TYPE_6__* %56, i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @LZMA_STREAM_END, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %29
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %65 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %8, align 8
  %69 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %67, %71
  %73 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %74 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %8, align 8
  %77 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %75, %79
  %81 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %72, i64 %80)
  br label %82

82:                                               ; preds = %62, %29
  %83 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %84 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.mkuz_lzma*, %struct.mkuz_lzma** %8, align 8
  %87 = getelementptr inbounds %struct.mkuz_lzma, %struct.mkuz_lzma* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %85, %89
  %91 = load %struct.mkuz_blk*, %struct.mkuz_blk** %6, align 8
  %92 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  ret void
}

declare dso_local i64 @lzma_stream_encoder(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @lzma_code(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
