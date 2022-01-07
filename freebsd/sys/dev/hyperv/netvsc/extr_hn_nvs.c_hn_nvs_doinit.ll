; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_doinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_doinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32 }
%struct.vmbus_xact = type { i32 }
%struct.hn_nvs_init = type { i64, i64, i32 }
%struct.hn_nvs_init_resp = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"no xact for nvs init\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@HN_NVS_TYPE_INIT = common dso_local global i32 0, align 4
@HN_NVS_TYPE_INIT_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"exec init failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HN_NVS_STATUS_OK = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"nvs init failed for ver 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*, i64)* @hn_nvs_doinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_nvs_doinit(%struct.hn_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmbus_xact*, align 8
  %7 = alloca %struct.hn_nvs_init*, align 8
  %8 = alloca %struct.hn_nvs_init_resp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %12 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vmbus_xact* @vmbus_xact_get(i32 %13, i32 24)
  store %struct.vmbus_xact* %14, %struct.vmbus_xact** %6, align 8
  %15 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %16 = icmp eq %struct.vmbus_xact* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %19 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @if_printf(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %25 = call %struct.hn_nvs_init* @vmbus_xact_req_data(%struct.vmbus_xact* %24)
  store %struct.hn_nvs_init* %25, %struct.hn_nvs_init** %7, align 8
  %26 = load i32, i32* @HN_NVS_TYPE_INIT, align 4
  %27 = load %struct.hn_nvs_init*, %struct.hn_nvs_init** %7, align 8
  %28 = getelementptr inbounds %struct.hn_nvs_init, %struct.hn_nvs_init* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.hn_nvs_init*, %struct.hn_nvs_init** %7, align 8
  %31 = getelementptr inbounds %struct.hn_nvs_init, %struct.hn_nvs_init* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.hn_nvs_init*, %struct.hn_nvs_init** %7, align 8
  %34 = getelementptr inbounds %struct.hn_nvs_init, %struct.hn_nvs_init* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  store i64 8, i64* %9, align 8
  %35 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %36 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %37 = load %struct.hn_nvs_init*, %struct.hn_nvs_init** %7, align 8
  %38 = load i32, i32* @HN_NVS_TYPE_INIT_RESP, align 4
  %39 = call %struct.hn_nvs_init_resp* @hn_nvs_xact_execute(%struct.hn_softc* %35, %struct.vmbus_xact* %36, %struct.hn_nvs_init* %37, i32 24, i64* %9, i32 %38)
  store %struct.hn_nvs_init_resp* %39, %struct.hn_nvs_init_resp** %8, align 8
  %40 = load %struct.hn_nvs_init_resp*, %struct.hn_nvs_init_resp** %8, align 8
  %41 = icmp eq %struct.hn_nvs_init_resp* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %23
  %43 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %44 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @if_printf(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %48 = call i32 @vmbus_xact_put(%struct.vmbus_xact* %47)
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* %3, align 4
  br label %71

50:                                               ; preds = %23
  %51 = load %struct.hn_nvs_init_resp*, %struct.hn_nvs_init_resp** %8, align 8
  %52 = getelementptr inbounds %struct.hn_nvs_init_resp, %struct.hn_nvs_init_resp* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %55 = call i32 @vmbus_xact_put(%struct.vmbus_xact* %54)
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @HN_NVS_STATUS_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %50
  %60 = load i64, i64* @bootverbose, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %64 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %5, align 8
  %67 = call i32 (i32, i8*, ...) @if_printf(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %68, %42, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.vmbus_xact* @vmbus_xact_get(i32, i32) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local %struct.hn_nvs_init* @vmbus_xact_req_data(%struct.vmbus_xact*) #1

declare dso_local %struct.hn_nvs_init_resp* @hn_nvs_xact_execute(%struct.hn_softc*, %struct.vmbus_xact*, %struct.hn_nvs_init*, i32, i64*, i32) #1

declare dso_local i32 @vmbus_xact_put(%struct.vmbus_xact*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
