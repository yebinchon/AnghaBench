; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32, i32, i32, i64, i32, i64, i32, i64, i64, i64, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@shutdown_pre_sync = common dso_local global i32 0, align 4
@watchdog_list = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ipmi_wait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ipmi_softc* @device_get_softc(i32 %5)
  store %struct.ipmi_softc* %6, %struct.ipmi_softc** %4, align 8
  %7 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %8 = call i32 @IPMI_LOCK(%struct.ipmi_softc* %7)
  %9 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %9, i32 0, i32 11
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %15 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %14)
  %16 = load i32, i32* @EBUSY, align 4
  store i32 %16, i32* %2, align 4
  br label %108

17:                                               ; preds = %1
  %18 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %19 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %18)
  %20 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %20, i32 0, i32 10
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @destroy_dev(i64 %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @shutdown_pre_sync, align 4
  %36 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @EVENTHANDLER_DEREGISTER(i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %42 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* @watchdog_list, align 4
  %47 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @EVENTHANDLER_DEREGISTER(i32 %46, i64 %49)
  %51 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %52 = call i32 @ipmi_set_watchdog(%struct.ipmi_softc* %51, i32 0)
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @shutdown_final, align 4
  %60 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @EVENTHANDLER_DEREGISTER(i32 %59, i64 %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %66 = call i32 @IPMI_LOCK(%struct.ipmi_softc* %65)
  %67 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %68 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %70 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  %74 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %75 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %74, i32 0, i32 6
  %76 = call i32 @cv_broadcast(i32* %75)
  %77 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %81 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %80, i32 0, i32 1
  %82 = call i32 @msleep(i64 %79, i32* %81, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %83

83:                                               ; preds = %73, %64
  %84 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %85 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %84)
  %86 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %87 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %93 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @bus_teardown_intr(i32 %91, i32 %94, i64 %97)
  br label %99

99:                                               ; preds = %90, %83
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @ipmi_release_resources(i32 %100)
  %102 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %103 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %102, i32 0, i32 2
  %104 = call i32 @mtx_destroy(i32* %103)
  %105 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %106 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %105, i32 0, i32 1
  %107 = call i32 @mtx_destroy(i32* %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %99, %13
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.ipmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @IPMI_LOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @IPMI_UNLOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @destroy_dev(i64) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i64) #1

declare dso_local i32 @ipmi_set_watchdog(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @msleep(i64, i32*, i32, i8*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i64) #1

declare dso_local i32 @ipmi_release_resources(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
