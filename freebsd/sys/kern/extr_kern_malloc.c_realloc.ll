; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_realloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.malloc_type = type { i64 }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@M_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"realloc: bad malloc type magic\00", align 1
@curthread = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"realloc: called with spinlock or critical section held\00", align 1
@UMA_SLAB_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"realloc: address %p out of range\00", align 1
@UMA_SLAB_MALLOC = common dso_local global i32 0, align 4
@REALLOC_FRACTION = common dso_local global i64 0, align 8
@MINALLOCSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @realloc(i8* %0, i64 %1, %struct.malloc_type* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.malloc_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.malloc_type* %2, %struct.malloc_type** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.malloc_type*, %struct.malloc_type** %8, align 8
  %14 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @M_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curthread, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = call i64 (...) @SCHEDULER_STOPPED()
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %4
  %28 = phi i1 [ true, %4 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.malloc_type*, %struct.malloc_type** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @malloc(i64 %34, %struct.malloc_type* %35, i32 %36)
  store i8* %37, i8** %5, align 8
  br label %100

38:                                               ; preds = %27
  %39 = load i8*, i8** %6, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32, i32* @UMA_SLAB_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call %struct.TYPE_6__* @vtoslab(i32 %43)
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %10, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  %47 = zext i1 %46 to i32
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @KASSERT(i32 %47, i8* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @UMA_SLAB_MALLOC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %38
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %11, align 8
  br label %66

62:                                               ; preds = %38
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ule i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @REALLOC_FRACTION, align 8
  %74 = lshr i64 %72, %73
  %75 = icmp ugt i64 %71, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @MINALLOCSIZE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %70
  %81 = load i8*, i8** %6, align 8
  store i8* %81, i8** %5, align 8
  br label %100

82:                                               ; preds = %76, %66
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.malloc_type*, %struct.malloc_type** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i8* @malloc(i64 %83, %struct.malloc_type* %84, i32 %85)
  store i8* %86, i8** %12, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i8* null, i8** %5, align 8
  br label %100

89:                                               ; preds = %82
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @min(i64 %92, i64 %93)
  %95 = call i32 @bcopy(i8* %90, i8* %91, i32 %94)
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.malloc_type*, %struct.malloc_type** %8, align 8
  %98 = call i32 @free(i8* %96, %struct.malloc_type* %97)
  %99 = load i8*, i8** %12, align 8
  store i8* %99, i8** %5, align 8
  br label %100

100:                                              ; preds = %89, %88, %80, %33
  %101 = load i8*, i8** %5, align 8
  ret i8* %101
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i8* @malloc(i64, %struct.malloc_type*, i32) #1

declare dso_local %struct.TYPE_6__* @vtoslab(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @free(i8*, %struct.malloc_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
