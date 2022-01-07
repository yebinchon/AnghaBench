; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_send_multichannel_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_send_multichannel_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_softc = type { i32, i32, %struct.hv_storvsc_request }
%struct.hv_storvsc_request = type { i32, %struct.vstor_packet }
%struct.vstor_packet = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vmbus_channel = type { i32 }

@mp_ncpus = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"stor_synch_sema\00", align 1
@VSTOR_OPERATION_CREATE_MULTI_CHANNELS = common dso_local global i64 0, align 8
@REQUEST_COMPLETION_FLAG = common dso_local global i32 0, align 4
@VMBUS_CHANPKT_TYPE_INBAND = common dso_local global i32 0, align 4
@VMBUS_CHANPKT_FLAG_RC = common dso_local global i32 0, align 4
@VSTOR_PKT_SIZE = common dso_local global i32 0, align 4
@VSTOR_OPERATION_COMPLETEIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"Storvsc_error: create multi-channel invalid operation (%d) or statue (%u)\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Storvsc create multi-channel success!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.storvsc_softc*, i32)* @storvsc_send_multichannel_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_send_multichannel_request(%struct.storvsc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.storvsc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmbus_channel**, align 8
  %6 = alloca %struct.hv_storvsc_request*, align 8
  %7 = alloca %struct.vstor_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.storvsc_softc* %0, %struct.storvsc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i64, i64* @mp_ncpus, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i32 @MIN(i32 %11, i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %15, i32 0, i32 2
  store %struct.hv_storvsc_request* %16, %struct.hv_storvsc_request** %6, align 8
  %17 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %18 = call i32 @memset(%struct.hv_storvsc_request* %17, i32 0, i32 32)
  %19 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %20 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %19, i32 0, i32 0
  %21 = call i32 @sema_init(i32* %20, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %23 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %22, i32 0, i32 1
  store %struct.vstor_packet* %23, %struct.vstor_packet** %7, align 8
  %24 = load i64, i64* @VSTOR_OPERATION_CREATE_MULTI_CHANNELS, align 8
  %25 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %26 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @REQUEST_COMPLETION_FLAG, align 4
  %28 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %29 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %32 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %35 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VMBUS_CHANPKT_TYPE_INBAND, align 4
  %38 = load i32, i32* @VMBUS_CHANPKT_FLAG_RC, align 4
  %39 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %40 = load i32, i32* @VSTOR_PKT_SIZE, align 4
  %41 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %42 = ptrtoint %struct.hv_storvsc_request* %41 to i64
  %43 = trunc i64 %42 to i32
  %44 = call i32 @vmbus_chan_send(i32 %36, i32 %37, i32 %38, %struct.vstor_packet* %39, i32 %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %6, align 8
  %46 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %45, i32 0, i32 0
  %47 = call i32 @sema_wait(i32* %46)
  %48 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %49 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VSTOR_OPERATION_COMPLETEIO, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %2
  %54 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %55 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53, %2
  %59 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %60 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %63 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %64)
  br label %99

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %70 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %72 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call %struct.vmbus_channel** @vmbus_subchan_get(i32 %73, i32 %74)
  store %struct.vmbus_channel** %75, %struct.vmbus_channel*** %5, align 8
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %88, %66
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %82 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %82, i64 %84
  %86 = load %struct.vmbus_channel*, %struct.vmbus_channel** %85, align 8
  %87 = call i32 @storvsc_subchan_attach(%struct.storvsc_softc* %81, %struct.vmbus_channel* %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %76

91:                                               ; preds = %76
  %92 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @vmbus_subchan_rel(%struct.vmbus_channel** %92, i32 %93)
  %95 = load i64, i64* @bootverbose, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %58, %97, %91
  ret void
}

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @memset(%struct.hv_storvsc_request*, i32, i32) #1

declare dso_local i32 @sema_init(i32*, i32, i8*) #1

declare dso_local i32 @vmbus_chan_send(i32, i32, i32, %struct.vstor_packet*, i32, i32) #1

declare dso_local i32 @sema_wait(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.vmbus_channel** @vmbus_subchan_get(i32, i32) #1

declare dso_local i32 @storvsc_subchan_attach(%struct.storvsc_softc*, %struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_subchan_rel(%struct.vmbus_channel**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
