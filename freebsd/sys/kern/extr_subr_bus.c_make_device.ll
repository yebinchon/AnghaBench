; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_make_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_make_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32*, i32*, i64, i64, i64, i32*, i32*, i32*, i32*, i32, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [20 x i8] c"%s at %s as unit %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"make_device: can't find device class %s\0A\00", align 1
@M_BUS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@null_class = common dso_local global i32 0, align 4
@DF_ENABLED = common dso_local global i32 0, align 4
@DF_WILDCARD = common dso_local global i32 0, align 4
@DF_FIXEDCLASS = common dso_local global i32 0, align 4
@DF_QUIET = common dso_local global i32 0, align 4
@DF_QUIET_CHILDREN = common dso_local global i32 0, align 4
@DS_NOTPRESENT = common dso_local global i32 0, align 4
@bus_data_devices = common dso_local global i32 0, align 4
@devlink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, i8*, i32)* @make_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @make_device(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = call i32 @DEVICENAME(%struct.TYPE_9__* %11)
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @PDEBUG(i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32* @devclass_find_internal(i8* %20, i32* null, i32 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %124

28:                                               ; preds = %19
  br label %30

29:                                               ; preds = %3
  store i32* null, i32** %9, align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* @M_BUS, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.TYPE_9__* @malloc(i32 104, i32 %31, i32 %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %8, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %124

39:                                               ; preds = %30
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 13
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %42, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 12
  %45 = call i32 @TAILQ_INIT(i32* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = ptrtoint %struct.TYPE_9__* %46 to i32
  %48 = call i32 @kobj_init(i32 %47, i32* @null_class)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 11
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 10
  store i32* null, i32** %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 9
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 8
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 7
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @DF_ENABLED, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %77

71:                                               ; preds = %39
  %72 = load i32, i32* @DF_WILDCARD, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %39
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = load i32, i32* @DF_FIXEDCLASS, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = call i64 @devclass_add_device(i32* %86, %struct.TYPE_9__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = ptrtoint %struct.TYPE_9__* %91 to i32
  %93 = load i32, i32* @M_BUS, align 4
  %94 = call i32 @kobj_delete(i32 %92, i32 %93)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %124

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95, %77
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = call i64 @device_has_quiet_children(%struct.TYPE_9__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32, i32* @DF_QUIET, align 4
  %105 = load i32, i32* @DF_QUIET_CHILDREN, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %103, %99, %96
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  store i32* null, i32** %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  store i32* null, i32** %115, align 8
  %116 = load i32, i32* @DS_NOTPRESENT, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = load i32, i32* @devlink, align 4
  %121 = call i32 @TAILQ_INSERT_TAIL(i32* @bus_data_devices, %struct.TYPE_9__* %119, i32 %120)
  %122 = call i32 (...) @bus_data_generation_update()
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %4, align 8
  br label %124

124:                                              ; preds = %111, %90, %38, %25
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %125
}

declare dso_local i32 @PDEBUG(i8*) #1

declare dso_local i32 @DEVICENAME(%struct.TYPE_9__*) #1

declare dso_local i32* @devclass_find_internal(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @kobj_init(i32, i32*) #1

declare dso_local i64 @devclass_add_device(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @kobj_delete(i32, i32) #1

declare dso_local i64 @device_has_quiet_children(%struct.TYPE_9__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @bus_data_generation_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
