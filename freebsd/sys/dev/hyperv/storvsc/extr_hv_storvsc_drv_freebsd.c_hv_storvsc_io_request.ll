; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_hv_storvsc_io_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_hv_storvsc_io_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_softc = type { i32, i32, %struct.TYPE_10__, %struct.vmbus_channel** }
%struct.TYPE_10__ = type { i32* }
%struct.vmbus_channel = type { i32 }
%struct.hv_storvsc_request = type { %struct.TYPE_11__*, i32, %struct.TYPE_9__, %struct.vstor_packet }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.vstor_packet = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32, i64 }

@REQUEST_COMPLETION_FLAG = common dso_local global i32 0, align 4
@vmscsi_size_delta = common dso_local global i64 0, align 8
@sense_buffer_size = common dso_local global i32 0, align 4
@VSTOR_OPERATION_EXECUTESRB = common dso_local global i32 0, align 4
@curcpu = common dso_local global i32 0, align 4
@VSTOR_PKT_SIZE = common dso_local global i32 0, align 4
@VMBUS_CHANPKT_TYPE_INBAND = common dso_local global i32 0, align 4
@VMBUS_CHANPKT_FLAG_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to send packet %p ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.storvsc_softc*, %struct.hv_storvsc_request*)* @hv_storvsc_io_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_storvsc_io_request(%struct.storvsc_softc* %0, %struct.hv_storvsc_request* %1) #0 {
  %3 = alloca %struct.storvsc_softc*, align 8
  %4 = alloca %struct.hv_storvsc_request*, align 8
  %5 = alloca %struct.vstor_packet*, align 8
  %6 = alloca %struct.vmbus_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.storvsc_softc* %0, %struct.storvsc_softc** %3, align 8
  store %struct.hv_storvsc_request* %1, %struct.hv_storvsc_request** %4, align 8
  %9 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %4, align 8
  %10 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %9, i32 0, i32 3
  store %struct.vstor_packet* %10, %struct.vstor_packet** %5, align 8
  store %struct.vmbus_channel* null, %struct.vmbus_channel** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @REQUEST_COMPLETION_FLAG, align 4
  %12 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %13 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i64, i64* @vmscsi_size_delta, align 8
  %17 = sub i64 4, %16
  %18 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %19 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  store i64 %17, i64* %21, align 8
  %22 = load i32, i32* @sense_buffer_size, align 4
  %23 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %24 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 8
  %27 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %4, align 8
  %28 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %33 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i64 %31, i64* %35, align 8
  %36 = load i32, i32* @VSTOR_OPERATION_EXECUTESRB, align 4
  %37 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %38 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %40 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @curcpu, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %47 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = srem i32 %45, %48
  store i32 %49, i32* %8, align 4
  %50 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %51 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %50, i32 0, i32 3
  %52 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %52, i64 %54
  %56 = load %struct.vmbus_channel*, %struct.vmbus_channel** %55, align 8
  store %struct.vmbus_channel* %56, %struct.vmbus_channel** %6, align 8
  %57 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %4, align 8
  %58 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = call i32 @mtx_unlock(i32* %60)
  %62 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %4, align 8
  %63 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %2
  %69 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %70 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %4, align 8
  %71 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %4, align 8
  %74 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %77 = load i32, i32* @VSTOR_PKT_SIZE, align 4
  %78 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %4, align 8
  %79 = ptrtoint %struct.hv_storvsc_request* %78 to i64
  %80 = trunc i64 %79 to i32
  %81 = call i32 @vmbus_chan_send_prplist(%struct.vmbus_channel* %69, %struct.TYPE_12__* %72, i32 %75, %struct.vstor_packet* %76, i32 %77, i32 %80)
  store i32 %81, i32* %7, align 4
  br label %92

82:                                               ; preds = %2
  %83 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %84 = load i32, i32* @VMBUS_CHANPKT_TYPE_INBAND, align 4
  %85 = load i32, i32* @VMBUS_CHANPKT_FLAG_RC, align 4
  %86 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %87 = load i32, i32* @VSTOR_PKT_SIZE, align 4
  %88 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %4, align 8
  %89 = ptrtoint %struct.hv_storvsc_request* %88 to i64
  %90 = trunc i64 %89 to i32
  %91 = call i32 @vmbus_chan_send(%struct.vmbus_channel* %83, i32 %84, i32 %85, %struct.vstor_packet* %86, i32 %87, i32 %90)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %82, %68
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %92
  %96 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %97 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %95, %92
  %106 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %4, align 8
  %107 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = call i32 @mtx_lock(i32* %109)
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.vstor_packet* %114, i32 %115)
  br label %121

117:                                              ; preds = %105
  %118 = load %struct.storvsc_softc*, %struct.storvsc_softc** %3, align 8
  %119 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %118, i32 0, i32 1
  %120 = call i32 @atomic_add_int(i32* %119, i32 1)
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vmbus_chan_send_prplist(%struct.vmbus_channel*, %struct.TYPE_12__*, i32, %struct.vstor_packet*, i32, i32) #1

declare dso_local i32 @vmbus_chan_send(%struct.vmbus_channel*, i32, i32, %struct.vstor_packet*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @printf(i8*, %struct.vstor_packet*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
