; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_hv_storvsc_on_channel_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_hv_storvsc_on_channel_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.storvsc_softc = type { %struct.hv_storvsc_request, %struct.hv_storvsc_request }
%struct.hv_storvsc_request = type { i32, i32 }
%struct.vstor_packet = type { i32 }

@VSTOR_PKT_SIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"storvsc recvbuf is not large enough\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"VMBUS: storvsc received a packet with NULL request id in COMPLETEIO operation.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"VMBUS: storvsc operation %d not implemented.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*, i8*)* @hv_storvsc_on_channel_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_storvsc_on_channel_callback(%struct.vmbus_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.storvsc_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hv_storvsc_request*, align 8
  %12 = alloca %struct.vstor_packet*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.storvsc_softc*
  store %struct.storvsc_softc* %14, %struct.storvsc_softc** %6, align 8
  %15 = call i32 @roundup2(i32 4, i32 8)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* @VSTOR_PKT_SIZE, align 4
  %20 = call i32 @roundup2(i32 %19, i32 8)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %23 = call i32 @vmbus_chan_recv(%struct.vmbus_channel* %22, i32* %18, i64* %7, i64* %8)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ENOBUFS, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %81, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = icmp sgt i64 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %92

37:                                               ; preds = %35
  %38 = load i64, i64* %8, align 8
  %39 = inttoptr i64 %38 to %struct.hv_storvsc_request*
  store %struct.hv_storvsc_request* %39, %struct.hv_storvsc_request** %11, align 8
  %40 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %11, align 8
  %41 = load %struct.storvsc_softc*, %struct.storvsc_softc** %6, align 8
  %42 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %41, i32 0, i32 1
  %43 = icmp eq %struct.hv_storvsc_request* %40, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %11, align 8
  %46 = load %struct.storvsc_softc*, %struct.storvsc_softc** %6, align 8
  %47 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %46, i32 0, i32 0
  %48 = icmp eq %struct.hv_storvsc_request* %45, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44, %37
  %50 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %11, align 8
  %51 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %50, i32 0, i32 1
  %52 = call i32 @memcpy(i32* %51, i32* %18, i32 4)
  %53 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %11, align 8
  %54 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %53, i32 0, i32 0
  %55 = call i32 @sema_post(i32* %54)
  br label %81

56:                                               ; preds = %44
  %57 = bitcast i32* %18 to %struct.vstor_packet*
  store %struct.vstor_packet* %57, %struct.vstor_packet** %12, align 8
  %58 = load %struct.vstor_packet*, %struct.vstor_packet** %12, align 8
  %59 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %79 [
    i32 130, label %61
    i32 128, label %71
    i32 129, label %76
  ]

61:                                               ; preds = %56
  %62 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %11, align 8
  %63 = icmp eq %struct.hv_storvsc_request* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @panic(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = load %struct.storvsc_softc*, %struct.storvsc_softc** %6, align 8
  %68 = load %struct.vstor_packet*, %struct.vstor_packet** %12, align 8
  %69 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %11, align 8
  %70 = call i32 @hv_storvsc_on_iocompletion(%struct.storvsc_softc* %67, %struct.vstor_packet* %68, %struct.hv_storvsc_request* %69)
  br label %80

71:                                               ; preds = %56
  %72 = load %struct.vstor_packet*, %struct.vstor_packet** %12, align 8
  %73 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %80

76:                                               ; preds = %56
  %77 = load %struct.storvsc_softc*, %struct.storvsc_softc** %6, align 8
  %78 = call i32 @hv_storvsc_rescan_target(%struct.storvsc_softc* %77)
  br label %80

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %79, %76, %71, %66
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i32, i32* @VSTOR_PKT_SIZE, align 4
  %83 = call i32 @roundup2(i32 %82, i32 8)
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %7, align 8
  %85 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %86 = call i32 @vmbus_chan_recv(%struct.vmbus_channel* %85, i32* %18, i64* %7, i64* %8)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ENOBUFS, align 4
  %89 = icmp ne i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @KASSERT(i32 %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %29

92:                                               ; preds = %35
  %93 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

declare dso_local i32 @roundup2(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vmbus_chan_recv(%struct.vmbus_channel*, i32*, i64*, i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sema_post(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @hv_storvsc_on_iocompletion(%struct.storvsc_softc*, %struct.vstor_packet*, %struct.hv_storvsc_request*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @hv_storvsc_rescan_target(%struct.storvsc_softc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
