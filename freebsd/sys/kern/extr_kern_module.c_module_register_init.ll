; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_module.c_module_register_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_module.c_module_register_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@Giant = common dso_local global i32 0, align 4
@MOD_SLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"module_register_init: module named %s not found\0A\00", align 1
@MOD_SUNLOCK = common dso_local global i32 0, align 4
@MOD_LOAD = common dso_local global i32 0, align 4
@MOD_UNLOAD = common dso_local global i32 0, align 4
@MOD_XLOCK = common dso_local global i32 0, align 4
@MOD_XUNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"module_register_init: MOD_LOAD (%s, %p, %p) error %d\0A\00", align 1
@flink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @module_register_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  %8 = call i32 @mtx_lock(i32* @Giant)
  %9 = load i32, i32* @MOD_SLOCK, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call %struct.TYPE_11__* @module_lookupbyname(i8* %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @MOD_SUNLOCK, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = load i32, i32* @MOD_LOAD, align 4
  %25 = call i32 @MOD_EVENT(%struct.TYPE_11__* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = load i32, i32* @MOD_UNLOAD, align 4
  %31 = call i32 @MOD_EVENT(%struct.TYPE_11__* %29, i32 %30)
  %32 = load i32, i32* @MOD_XLOCK, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = call i32 @module_release(%struct.TYPE_11__* %33)
  %35 = load i32, i32* @MOD_XUNLOCK, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %42, i32 %45, i32 %46)
  br label %71

48:                                               ; preds = %21
  %49 = load i32, i32* @MOD_XLOCK, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = load i32, i32* @flink, align 4
  %61 = call i32 @TAILQ_REMOVE(i32* %58, %struct.TYPE_11__* %59, i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = load i32, i32* @flink, align 4
  %68 = call i32 @TAILQ_INSERT_HEAD(i32* %65, %struct.TYPE_11__* %66, i32 %67)
  br label %69

69:                                               ; preds = %54, %48
  %70 = load i32, i32* @MOD_XUNLOCK, align 4
  br label %71

71:                                               ; preds = %69, %28
  %72 = call i32 @mtx_unlock(i32* @Giant)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.TYPE_11__* @module_lookupbyname(i8*) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local i32 @MOD_EVENT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @module_release(%struct.TYPE_11__*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
