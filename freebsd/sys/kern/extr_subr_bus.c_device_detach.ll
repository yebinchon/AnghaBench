; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i64 }

@GIANT_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DS_BUSY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DS_ATTACHING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"device in attaching state! Deferring detach.\0A\00", align 1
@DS_ATTACHED = common dso_local global i64 0, align 8
@EVHDEV_DETACH_BEGIN = common dso_local global i32 0, align 4
@EVHDEV_DETACH_FAILED = common dso_local global i32 0, align 4
@EVHDEV_DETACH_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"detached\0A\00", align 1
@DF_FIXEDCLASS = common dso_local global i32 0, align 4
@DS_NOTPRESENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_detach(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %5 = load i32, i32* @GIANT_REQUIRED, align 4
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = call i32 @DEVICENAME(%struct.TYPE_15__* %6)
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @PDEBUG(i8* %9)
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DS_BUSY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  store i32 %17, i32* %2, align 4
  br label %94

18:                                               ; preds = %1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DS_ATTACHING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = call i32 @device_printf(%struct.TYPE_15__* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EBUSY, align 4
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %18
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DS_ATTACHED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %94

35:                                               ; preds = %28
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = load i32, i32* @EVHDEV_DETACH_BEGIN, align 4
  %38 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 (%struct.TYPE_15__*)* @device_detach, %struct.TYPE_15__* %36, i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = call i32 @DEVICE_DETACH(%struct.TYPE_15__* %39)
  store i32 %40, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = load i32, i32* @EVHDEV_DETACH_FAILED, align 4
  %45 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 (%struct.TYPE_15__*)* @device_detach, %struct.TYPE_15__* %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %94

47:                                               ; preds = %35
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = load i32, i32* @EVHDEV_DETACH_COMPLETE, align 4
  %50 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 (%struct.TYPE_15__*)* @device_detach, %struct.TYPE_15__* %48, i32 %49)
  br label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = call i32 @devremoved(%struct.TYPE_15__* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = call i32 @device_is_quiet(%struct.TYPE_15__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = call i32 @device_printf(%struct.TYPE_15__* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = call i32 @BUS_CHILD_DETACHED(i64 %68, %struct.TYPE_15__* %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DF_FIXEDCLASS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = call i32 @devclass_delete_device(i32 %81, %struct.TYPE_15__* %82)
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = call i32 @device_verbose(%struct.TYPE_15__* %85)
  %87 = load i64, i64* @DS_NOTPRESENT, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = call i32 @device_set_driver(%struct.TYPE_15__* %90, i32* null)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = call i32 @device_sysctl_fini(%struct.TYPE_15__* %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %84, %42, %34, %24, %16
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @PDEBUG(i8*) #1

declare dso_local i32 @DEVICENAME(%struct.TYPE_15__*) #1

declare dso_local i32 @device_printf(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @EVENTHANDLER_DIRECT_INVOKE(i32 (%struct.TYPE_15__*)*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @DEVICE_DETACH(%struct.TYPE_15__*) #1

declare dso_local i32 @devremoved(%struct.TYPE_15__*) #1

declare dso_local i32 @device_is_quiet(%struct.TYPE_15__*) #1

declare dso_local i32 @BUS_CHILD_DETACHED(i64, %struct.TYPE_15__*) #1

declare dso_local i32 @devclass_delete_device(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @device_verbose(%struct.TYPE_15__*) #1

declare dso_local i32 @device_set_driver(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @device_sysctl_fini(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
