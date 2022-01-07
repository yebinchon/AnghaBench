; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_internal_malloc_stats.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_internal_malloc_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, i32 }

@TOP_FOOT_SIZE = common dso_local global i64 0, align 8
@FENCEPOST_HEAD = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"max system bytes = %10lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"system bytes     = %10lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"in use bytes     = %10lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @internal_malloc_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_malloc_stats(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %8 = call i32 (...) @ensure_initialization()
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = call i32 @PREACTION(%struct.TYPE_16__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %90, label %12

12:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = call i32 @check_malloc_state(%struct.TYPE_16__* %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = call i64 @is_initialized(%struct.TYPE_16__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %78

18:                                               ; preds = %12
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 4
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %6, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %3, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TOP_FOOT_SIZE, align 8
  %32 = add i64 %30, %31
  %33 = sub i64 %27, %32
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %73, %18
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = icmp ne %struct.TYPE_17__* %35, null
  br i1 %36, label %37, label %77

37:                                               ; preds = %34
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_18__* @align_as_chunk(i32 %40)
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %7, align 8
  br label %42

42:                                               ; preds = %70, %37
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = call i64 @segment_holds(%struct.TYPE_17__* %43, %struct.TYPE_18__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = icmp ne %struct.TYPE_18__* %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FENCEPOST_HEAD, align 8
  %58 = icmp ne i64 %56, %57
  br label %59

59:                                               ; preds = %53, %47, %42
  %60 = phi i1 [ false, %47 ], [ false, %42 ], [ %58, %53 ]
  br i1 %60, label %61, label %73

61:                                               ; preds = %59
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %63 = call i32 @cinuse(%struct.TYPE_18__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = call i64 @chunksize(%struct.TYPE_18__* %66)
  %68 = load i64, i64* %5, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = call %struct.TYPE_18__* @next_chunk(%struct.TYPE_18__* %71)
  store %struct.TYPE_18__* %72, %struct.TYPE_18__** %7, align 8
  br label %42

73:                                               ; preds = %59
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %6, align 8
  br label %34

77:                                               ; preds = %34
  br label %78

78:                                               ; preds = %77, %12
  %79 = load i32, i32* @stderr, align 4
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @stderr, align 4
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* @stderr, align 4
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = call i32 @POSTACTION(%struct.TYPE_16__* %88)
  br label %90

90:                                               ; preds = %78, %1
  ret void
}

declare dso_local i32 @ensure_initialization(...) #1

declare dso_local i32 @PREACTION(%struct.TYPE_16__*) #1

declare dso_local i32 @check_malloc_state(%struct.TYPE_16__*) #1

declare dso_local i64 @is_initialized(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @align_as_chunk(i32) #1

declare dso_local i64 @segment_holds(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @cinuse(%struct.TYPE_18__*) #1

declare dso_local i64 @chunksize(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @next_chunk(%struct.TYPE_18__*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @POSTACTION(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
