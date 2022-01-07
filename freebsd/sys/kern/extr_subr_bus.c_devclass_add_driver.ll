; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devclass_add_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devclass_add_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BUS_PASS_ROOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_BUS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@device_frozen = common dso_local global i64 0, align 8
@DL_DEFERRED_PROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devclass_add_driver(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2, %struct.TYPE_18__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__**, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_18__** %3, %struct.TYPE_18__*** %9, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %13 = call i32 @DRIVERNAME(%struct.TYPE_17__* %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @PDEBUG(i8* %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BUS_PASS_ROOT, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %88

22:                                               ; preds = %4
  %23 = load i32, i32* @M_BUS, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.TYPE_16__* @malloc(i32 16, i32 %23, i32 %26)
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %10, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = icmp ne %struct.TYPE_16__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %5, align 4
  br label %88

32:                                               ; preds = %22
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = ptrtoint %struct.TYPE_17__* %33 to i32
  %35 = call i32 @kobj_class_compile(i32 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %37, align 8
  %39 = icmp ne %struct.TYPE_15__** %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %43, i64 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %11, align 8
  br label %49

48:                                               ; preds = %32
  store i8* null, i8** %11, align 8
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = call %struct.TYPE_18__* @devclass_find_internal(i32 %52, i8* %53, i32 %54)
  %56 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %59, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = load i32, i32* @link, align 4
  %64 = call i32 @TAILQ_INSERT_TAIL(i32* %61, %struct.TYPE_16__* %62, i32 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %73 = call i32 @driver_register_pass(%struct.TYPE_16__* %72)
  %74 = load i64, i64* @device_frozen, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %49
  %77 = load i32, i32* @DL_DEFERRED_PROBE, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %86

82:                                               ; preds = %49
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %85 = call i32 @devclass_driver_added(%struct.TYPE_18__* %83, %struct.TYPE_17__* %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = call i32 (...) @bus_data_generation_update()
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %30, %20
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @PDEBUG(i8*) #1

declare dso_local i32 @DRIVERNAME(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @malloc(i32, i32, i32) #1

declare dso_local i32 @kobj_class_compile(i32) #1

declare dso_local %struct.TYPE_18__* @devclass_find_internal(i32, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @driver_register_pass(%struct.TYPE_16__*) #1

declare dso_local i32 @devclass_driver_added(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @bus_data_generation_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
