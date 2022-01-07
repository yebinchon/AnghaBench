; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_init_user_mstate.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_init_user_mstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8*, i64, i64, i32, i64, i64, i32, i32, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_18__ = type { i64 }

@PINUSE_BIT = common dso_local global i64 0, align 8
@CINUSE_BIT = common dso_local global i64 0, align 8
@mparams = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@MAX_RELEASE_CHECK_RATE = common dso_local global i32 0, align 4
@TOP_FOOT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (i8*, i64)* @init_user_mstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @init_user_mstate(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i64 @pad_request(i32 4)
  store i64 %9, i64* %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.TYPE_18__* @align_as_chunk(i8* %10)
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %7, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %13 = call i32 @chunk2mem(%struct.TYPE_18__* %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %8, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @memset(%struct.TYPE_17__* %16, i32 0, i64 %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 10
  %21 = call i32 @INITIAL_LOCK(i32* %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @PINUSE_BIT, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @CINUSE_BIT, align 8
  %26 = or i64 %24, %25
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i8* %29, i8** %34, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  store i64 %35, i64* %39, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  store i64 %35, i64* %42, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mparams, i32 0, i32 1), align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @MAX_RELEASE_CHECK_RATE, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @mparams, i32 0, i32 0), align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = call i32 @disable_contiguous(%struct.TYPE_17__* %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = call i32 @init_bins(%struct.TYPE_17__* %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = call i32 @mem2chunk(%struct.TYPE_17__* %60)
  %62 = call %struct.TYPE_18__* @next_chunk(i32 %61)
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %6, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = bitcast %struct.TYPE_18__* %68 to i8*
  %70 = ptrtoint i8* %67 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = load i64, i64* @TOP_FOOT_SIZE, align 8
  %74 = sub i64 %72, %73
  %75 = call i32 @init_top(%struct.TYPE_17__* %63, %struct.TYPE_18__* %64, i64 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @check_top_chunk(%struct.TYPE_17__* %76, i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  ret %struct.TYPE_17__* %81
}

declare dso_local i64 @pad_request(i32) #1

declare dso_local %struct.TYPE_18__* @align_as_chunk(i8*) #1

declare dso_local i32 @chunk2mem(%struct.TYPE_18__*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i32 @INITIAL_LOCK(i32*) #1

declare dso_local i32 @disable_contiguous(%struct.TYPE_17__*) #1

declare dso_local i32 @init_bins(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @next_chunk(i32) #1

declare dso_local i32 @mem2chunk(%struct.TYPE_17__*) #1

declare dso_local i32 @init_top(%struct.TYPE_17__*, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @check_top_chunk(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
