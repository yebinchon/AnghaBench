; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i64, i32, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i8* }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"disabled via hints entry\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DS_ATTACHING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"device_attach: %s%d attach returned %d\0A\00", align 1
@DF_FIXEDCLASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"attach failed but busy\00", align 1
@DS_NOTPRESENT = common dso_local global i32 0, align 4
@DF_ATTACHED_ONCE = common dso_local global i32 0, align 4
@RANDOM_ATTACH = common dso_local global i32 0, align 4
@DS_BUSY = common dso_local global i32 0, align 4
@DS_ATTACHED = common dso_local global i32 0, align 4
@DF_DONENOMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_attach(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @resource_disabled(i8* %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = call i32 @device_disable(%struct.TYPE_18__* %18)
  %20 = load i64, i64* @bootverbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = call i32 @device_printf(%struct.TYPE_18__* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %121

27:                                               ; preds = %1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = call i32 @device_sysctl_init(%struct.TYPE_18__* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = call i32 @device_is_quiet(%struct.TYPE_18__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = call i32 @device_print_child(i32 %36, %struct.TYPE_18__* %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = call i64 (...) @get_cyclecount()
  store i64 %40, i64* %4, align 8
  %41 = load i32, i32* @DS_ATTACHING, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = call i32 @DEVICE_ATTACH(%struct.TYPE_18__* %44)
  store i32 %45, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %39
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %55, i32 %56)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DF_FIXEDCLASS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %47
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = call i32 @devclass_delete_device(i32 %67, %struct.TYPE_18__* %68)
  br label %70

70:                                               ; preds = %64, %47
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = call i32 @device_set_driver(%struct.TYPE_18__* %71, i32* null)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = call i32 @device_sysctl_fini(%struct.TYPE_18__* %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @KASSERT(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @DS_NOTPRESENT, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %121

85:                                               ; preds = %39
  %86 = load i32, i32* @DF_ATTACHED_ONCE, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = call i64 (...) @get_cyclecount()
  %92 = load i64, i64* %4, align 8
  %93 = sub nsw i64 %91, %92
  store i64 %93, i64* %5, align 8
  %94 = load i32, i32* @RANDOM_ATTACH, align 4
  %95 = call i32 @random_harvest_direct(i64* %5, i32 8, i32 %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = call i32 @device_sysctl_update(%struct.TYPE_18__* %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %85
  %103 = load i32, i32* @DS_BUSY, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  br label %110

106:                                              ; preds = %85
  %107 = load i32, i32* @DS_ATTACHED, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* @DF_DONENOMATCH, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %118 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 (%struct.TYPE_18__*)* @device_attach, %struct.TYPE_18__* %117)
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = call i32 @devadded(%struct.TYPE_18__* %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %110, %70, %25
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @device_disable(%struct.TYPE_18__*) #1

declare dso_local i32 @device_printf(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @device_sysctl_init(%struct.TYPE_18__*) #1

declare dso_local i32 @device_is_quiet(%struct.TYPE_18__*) #1

declare dso_local i32 @device_print_child(i32, %struct.TYPE_18__*) #1

declare dso_local i64 @get_cyclecount(...) #1

declare dso_local i32 @DEVICE_ATTACH(%struct.TYPE_18__*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i32 @devclass_delete_device(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @device_set_driver(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @device_sysctl_fini(%struct.TYPE_18__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @random_harvest_direct(i64*, i32, i32) #1

declare dso_local i32 @device_sysctl_update(%struct.TYPE_18__*) #1

declare dso_local i32 @EVENTHANDLER_DIRECT_INVOKE(i32 (%struct.TYPE_18__*)*, %struct.TYPE_18__*) #1

declare dso_local i32 @devadded(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
