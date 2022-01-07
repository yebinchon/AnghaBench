; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32 }
%struct.rndis_set_req = type { i64, i64, i32, i8*, i8*, i32 }
%struct.rndis_set_comp = type { i64 }
%struct.vmbus_xact = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid dlen %zu\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"no xact for RNDIS set 0x%08x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@REMOTE_NDIS_SET_MSG = common dso_local global i32 0, align 4
@RNDIS_SET_REQ_INFOBUFOFFSET = common dso_local global i32 0, align 4
@REMOTE_NDIS_SET_CMPLT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"exec RNDIS set 0x%08x failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"RNDIS set 0x%08x failed: status 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*, i8*, i8*, i64)* @hn_rndis_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_rndis_set(%struct.hn_softc* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hn_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rndis_set_req*, align 8
  %11 = alloca %struct.rndis_set_comp*, align 8
  %12 = alloca %struct.vmbus_xact*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ugt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %9, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %19, i8* %21)
  %23 = load i64, i64* %9, align 8
  %24 = add i64 48, %23
  store i64 %24, i64* %13, align 8
  %25 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %26 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %13, align 8
  %29 = call %struct.vmbus_xact* @vmbus_xact_get(i32 %27, i64 %28)
  store %struct.vmbus_xact* %29, %struct.vmbus_xact** %12, align 8
  %30 = load %struct.vmbus_xact*, %struct.vmbus_xact** %12, align 8
  %31 = icmp eq %struct.vmbus_xact* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %34 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 (i32, i8*, i8*, ...) @if_printf(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %5, align 4
  br label %103

39:                                               ; preds = %4
  %40 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %41 = call i8* @hn_rndis_rid(%struct.hn_softc* %40)
  store i8* %41, i8** %15, align 8
  %42 = load %struct.vmbus_xact*, %struct.vmbus_xact** %12, align 8
  %43 = call %struct.rndis_set_req* @vmbus_xact_req_data(%struct.vmbus_xact* %42)
  store %struct.rndis_set_req* %43, %struct.rndis_set_req** %10, align 8
  %44 = load i32, i32* @REMOTE_NDIS_SET_MSG, align 4
  %45 = load %struct.rndis_set_req*, %struct.rndis_set_req** %10, align 8
  %46 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.rndis_set_req*, %struct.rndis_set_req** %10, align 8
  %49 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load %struct.rndis_set_req*, %struct.rndis_set_req** %10, align 8
  %52 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.rndis_set_req*, %struct.rndis_set_req** %10, align 8
  %55 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.rndis_set_req*, %struct.rndis_set_req** %10, align 8
  %58 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @RNDIS_SET_REQ_INFOBUFOFFSET, align 4
  %60 = load %struct.rndis_set_req*, %struct.rndis_set_req** %10, align 8
  %61 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rndis_set_req*, %struct.rndis_set_req** %10, align 8
  %63 = getelementptr inbounds %struct.rndis_set_req, %struct.rndis_set_req* %62, i64 1
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @memcpy(%struct.rndis_set_req* %63, i8* %64, i64 %65)
  store i64 8, i64* %14, align 8
  %67 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %68 = load %struct.vmbus_xact*, %struct.vmbus_xact** %12, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i32, i32* @REMOTE_NDIS_SET_CMPLT, align 4
  %72 = call %struct.rndis_set_comp* @hn_rndis_xact_execute(%struct.hn_softc* %67, %struct.vmbus_xact* %68, i8* %69, i64 %70, i64* %14, i32 %71)
  store %struct.rndis_set_comp* %72, %struct.rndis_set_comp** %11, align 8
  %73 = load %struct.rndis_set_comp*, %struct.rndis_set_comp** %11, align 8
  %74 = icmp eq %struct.rndis_set_comp* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %39
  %76 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %77 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 (i32, i8*, i8*, ...) @if_printf(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @EIO, align 4
  store i32 %81, i32* %16, align 4
  br label %99

82:                                               ; preds = %39
  %83 = load %struct.rndis_set_comp*, %struct.rndis_set_comp** %11, align 8
  %84 = getelementptr inbounds %struct.rndis_set_comp, %struct.rndis_set_comp* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.hn_softc*, %struct.hn_softc** %6, align 8
  %90 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.rndis_set_comp*, %struct.rndis_set_comp** %11, align 8
  %94 = getelementptr inbounds %struct.rndis_set_comp, %struct.rndis_set_comp* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32, i8*, i8*, ...) @if_printf(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %92, i64 %95)
  %97 = load i32, i32* @EIO, align 4
  store i32 %97, i32* %16, align 4
  br label %99

98:                                               ; preds = %82
  store i32 0, i32* %16, align 4
  br label %99

99:                                               ; preds = %98, %88, %75
  %100 = load %struct.vmbus_xact*, %struct.vmbus_xact** %12, align 8
  %101 = call i32 @vmbus_xact_put(%struct.vmbus_xact* %100)
  %102 = load i32, i32* %16, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %32
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vmbus_xact* @vmbus_xact_get(i32, i64) #1

declare dso_local i32 @if_printf(i32, i8*, i8*, ...) #1

declare dso_local i8* @hn_rndis_rid(%struct.hn_softc*) #1

declare dso_local %struct.rndis_set_req* @vmbus_xact_req_data(%struct.vmbus_xact*) #1

declare dso_local i32 @memcpy(%struct.rndis_set_req*, i8*, i64) #1

declare dso_local %struct.rndis_set_comp* @hn_rndis_xact_execute(%struct.hn_softc*, %struct.vmbus_xact*, i8*, i64, i64*, i32) #1

declare dso_local i32 @vmbus_xact_put(%struct.vmbus_xact*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
