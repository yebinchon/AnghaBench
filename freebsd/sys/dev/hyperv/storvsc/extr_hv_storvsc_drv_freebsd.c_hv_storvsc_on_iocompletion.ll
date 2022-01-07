; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_hv_storvsc_on_iocompletion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_hv_storvsc_on_iocompletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_softc = type { i64, i32, i64 }
%struct.vstor_packet = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vmscsi_req }
%struct.vmscsi_req = type { i32, i32, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.hv_storvsc_request = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@SCSI_STATUS_CHECK_COND = common dso_local global i32 0, align 4
@SRB_STATUS_AUTOSENSE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"vm_srb->sense_info_len <= request->sense_info_len\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.storvsc_softc*, %struct.vstor_packet*, %struct.hv_storvsc_request*)* @hv_storvsc_on_iocompletion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_storvsc_on_iocompletion(%struct.storvsc_softc* %0, %struct.vstor_packet* %1, %struct.hv_storvsc_request* %2) #0 {
  %4 = alloca %struct.storvsc_softc*, align 8
  %5 = alloca %struct.vstor_packet*, align 8
  %6 = alloca %struct.hv_storvsc_request*, align 8
  %7 = alloca %struct.vmscsi_req*, align 8
  store %struct.storvsc_softc* %0, %struct.storvsc_softc** %4, align 8
  store %struct.vstor_packet* %1, %struct.vstor_packet** %5, align 8
  store %struct.hv_storvsc_request* %2, %struct.hv_storvsc_request** %6, align 8
  %8 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %9 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.vmscsi_req* %10, %struct.vmscsi_req** %7, align 8
  %11 = load %struct.vmscsi_req*, %struct.vmscsi_req** %7, align 8
  %12 = getelementptr inbounds %struct.vmscsi_req, %struct.vmscsi_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %15 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 %13, i32* %18, align 4
  %19 = load %struct.vmscsi_req*, %struct.vmscsi_req** %7, align 8
  %20 = getelementptr inbounds %struct.vmscsi_req, %struct.vmscsi_req* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %23 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %21, i32* %26, align 4
  %27 = load %struct.vmscsi_req*, %struct.vmscsi_req** %7, align 8
  %28 = getelementptr inbounds %struct.vmscsi_req, %struct.vmscsi_req* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %31 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %29, i32* %34, align 4
  %35 = load %struct.vmscsi_req*, %struct.vmscsi_req** %7, align 8
  %36 = getelementptr inbounds %struct.vmscsi_req, %struct.vmscsi_req* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 255
  %39 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %3
  %42 = load %struct.vmscsi_req*, %struct.vmscsi_req** %7, align 8
  %43 = getelementptr inbounds %struct.vmscsi_req, %struct.vmscsi_req* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SRB_STATUS_AUTOSENSE_VALID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %41
  %49 = load %struct.vmscsi_req*, %struct.vmscsi_req** %7, align 8
  %50 = getelementptr inbounds %struct.vmscsi_req, %struct.vmscsi_req* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %53 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %59 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.vmscsi_req*, %struct.vmscsi_req** %7, align 8
  %62 = getelementptr inbounds %struct.vmscsi_req, %struct.vmscsi_req* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vmscsi_req*, %struct.vmscsi_req** %7, align 8
  %66 = getelementptr inbounds %struct.vmscsi_req, %struct.vmscsi_req* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @memcpy(i32 %60, i32 %64, i64 %67)
  %69 = load %struct.vmscsi_req*, %struct.vmscsi_req** %7, align 8
  %70 = getelementptr inbounds %struct.vmscsi_req, %struct.vmscsi_req* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %73 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %48, %41, %3
  %75 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %76 = call i32 @storvsc_io_done(%struct.hv_storvsc_request* %75)
  %77 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %78 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %77, i32 0, i32 0
  %79 = call i32 @atomic_subtract_int(i64* %78, i32 1)
  %80 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %81 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %74
  %85 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %86 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %91 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %90, i32 0, i32 1
  %92 = call i32 @sema_post(i32* %91)
  br label %93

93:                                               ; preds = %89, %84, %74
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @storvsc_io_done(%struct.hv_storvsc_request*) #1

declare dso_local i32 @atomic_subtract_int(i64*, i32) #1

declare dso_local i32 @sema_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
