; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_alloc_subchans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_alloc_subchans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32 }
%struct.vmbus_xact = type { i32 }
%struct.hn_nvs_subch_req = type { i32, i32, i32 }
%struct.hn_nvs_subch_resp = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"invalid # of sub-channels %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"no xact for nvs subch alloc\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@HN_NVS_TYPE_SUBCH_REQ = common dso_local global i32 0, align 4
@HN_NVS_SUBCH_OP_ALLOC = common dso_local global i32 0, align 4
@HN_NVS_TYPE_SUBCH_RESP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"exec nvs subch alloc failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HN_NVS_STATUS_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"nvs subch alloc failed: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%u subchans are allocated, requested %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hn_nvs_alloc_subchans(%struct.hn_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vmbus_xact*, align 8
  %7 = alloca %struct.hn_nvs_subch_req*, align 8
  %8 = alloca %struct.hn_nvs_subch_resp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %17, i8* %20)
  %22 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %23 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.vmbus_xact* @vmbus_xact_get(i32 %24, i32 12)
  store %struct.vmbus_xact* %25, %struct.vmbus_xact** %6, align 8
  %26 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %27 = icmp eq %struct.vmbus_xact* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %30 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @if_printf(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %3, align 4
  br label %96

34:                                               ; preds = %2
  %35 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %36 = call %struct.hn_nvs_subch_req* @vmbus_xact_req_data(%struct.vmbus_xact* %35)
  store %struct.hn_nvs_subch_req* %36, %struct.hn_nvs_subch_req** %7, align 8
  %37 = load i32, i32* @HN_NVS_TYPE_SUBCH_REQ, align 4
  %38 = load %struct.hn_nvs_subch_req*, %struct.hn_nvs_subch_req** %7, align 8
  %39 = getelementptr inbounds %struct.hn_nvs_subch_req, %struct.hn_nvs_subch_req* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @HN_NVS_SUBCH_OP_ALLOC, align 4
  %41 = load %struct.hn_nvs_subch_req*, %struct.hn_nvs_subch_req** %7, align 8
  %42 = getelementptr inbounds %struct.hn_nvs_subch_req, %struct.hn_nvs_subch_req* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.hn_nvs_subch_req*, %struct.hn_nvs_subch_req** %7, align 8
  %45 = getelementptr inbounds %struct.hn_nvs_subch_req, %struct.hn_nvs_subch_req* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i64 16, i64* %12, align 8
  %46 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %47 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %48 = load %struct.hn_nvs_subch_req*, %struct.hn_nvs_subch_req** %7, align 8
  %49 = load i32, i32* @HN_NVS_TYPE_SUBCH_RESP, align 4
  %50 = call %struct.hn_nvs_subch_resp* @hn_nvs_xact_execute(%struct.hn_softc* %46, %struct.vmbus_xact* %47, %struct.hn_nvs_subch_req* %48, i32 12, i64* %12, i32 %49)
  store %struct.hn_nvs_subch_resp* %50, %struct.hn_nvs_subch_resp** %8, align 8
  %51 = load %struct.hn_nvs_subch_resp*, %struct.hn_nvs_subch_resp** %8, align 8
  %52 = icmp eq %struct.hn_nvs_subch_resp* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %34
  %54 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %55 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @if_printf(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EIO, align 4
  store i32 %58, i32* %9, align 4
  br label %92

59:                                               ; preds = %34
  %60 = load %struct.hn_nvs_subch_resp*, %struct.hn_nvs_subch_resp** %8, align 8
  %61 = getelementptr inbounds %struct.hn_nvs_subch_resp, %struct.hn_nvs_subch_resp* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HN_NVS_STATUS_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %67 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hn_nvs_subch_resp*, %struct.hn_nvs_subch_resp** %8, align 8
  %70 = getelementptr inbounds %struct.hn_nvs_subch_resp, %struct.hn_nvs_subch_resp* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, ...) @if_printf(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @EIO, align 4
  store i32 %73, i32* %9, align 4
  br label %92

74:                                               ; preds = %59
  %75 = load %struct.hn_nvs_subch_resp*, %struct.hn_nvs_subch_resp** %8, align 8
  %76 = getelementptr inbounds %struct.hn_nvs_subch_resp, %struct.hn_nvs_subch_resp* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %83 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 (i32, i8*, ...) @if_printf(i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %81, %74
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %89, %65, %53
  %93 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %94 = call i32 @vmbus_xact_put(%struct.vmbus_xact* %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %28
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vmbus_xact* @vmbus_xact_get(i32, i32) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local %struct.hn_nvs_subch_req* @vmbus_xact_req_data(%struct.vmbus_xact*) #1

declare dso_local %struct.hn_nvs_subch_resp* @hn_nvs_xact_execute(%struct.hn_softc*, %struct.vmbus_xact*, %struct.hn_nvs_subch_req*, i32, i64*, i32) #1

declare dso_local i32 @vmbus_xact_put(%struct.vmbus_xact*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
