; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { i32, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"vmbus dev\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vmbusdev\00", align 1
@vmbus_scan_done_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"vmbus subch\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vmbussch\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"channel request failed: %d\0A\00", align 1
@GIANT_REQUIRED = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"device scan, probe and attach done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_softc*)* @vmbus_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_scan(%struct.vmbus_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %3, align 8
  %5 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %6 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @bus_generic_probe(i32 %7)
  %9 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bus_generic_attach(i32 %11)
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %15 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %15, i32 0, i32 4
  %17 = call i8* @taskqueue_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i8** %16)
  %18 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %19 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %20, i32 0, i32 4
  %22 = load i32, i32* @PI_NET, align 4
  %23 = call i32 @taskqueue_start_threads(i8** %21, i32 1, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %25 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %24, i32 0, i32 3
  %26 = load i32, i32* @vmbus_scan_done_task, align 4
  %27 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %28 = call i32 @TASK_INIT(i32* %25, i32 0, i32 %26, %struct.vmbus_softc* %27)
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %31 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %32 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %31, i32 0, i32 2
  %33 = call i8* @taskqueue_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %30, i8** %32)
  %34 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %35 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %37 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %36, i32 0, i32 2
  %38 = load i32, i32* @PI_NET, align 4
  %39 = call i32 @taskqueue_start_threads(i8** %37, i32 1, i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %41 = call i32 @vmbus_req_channels(%struct.vmbus_softc* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %1
  %45 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %46 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %72

51:                                               ; preds = %1
  %52 = load i32, i32* @GIANT_REQUIRED, align 4
  br label %53

53:                                               ; preds = %59, %51
  %54 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %55 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %61 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %60, i32 0, i32 1
  %62 = call i32 @mtx_sleep(i32* %61, i32* @Giant, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %53

63:                                               ; preds = %53
  %64 = load i64, i64* @bootverbose, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %68 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %63
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i8* @taskqueue_create(i8*, i32, i32, i8**) #1

declare dso_local i32 @taskqueue_start_threads(i8**, i32, i32, i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.vmbus_softc*) #1

declare dso_local i32 @vmbus_req_channels(%struct.vmbus_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
