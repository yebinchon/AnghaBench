; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_heartbeat.c_vmbus_heartbeat_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_heartbeat.c_vmbus_heartbeat_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.vmbus_ic_softc = type { i32, i32, i8* }
%struct.vmbus_icmsg_hdr = type { i32 }
%struct.vmbus_icmsg_heartbeat = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"icbuf is not large enough\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid data len %d\0A\00", align 1
@VMBUS_HEARTBEAT_FWVER = common dso_local global i32 0, align 4
@VMBUS_HEARTBEAT_MSGVER = common dso_local global i32 0, align 4
@VMBUS_ICMSG_HEARTBEAT_SIZE_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid heartbeat len %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"got 0x%08x icmsg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*, i8*)* @vmbus_heartbeat_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_heartbeat_cb(%struct.vmbus_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vmbus_ic_softc*, align 8
  %6 = alloca %struct.vmbus_icmsg_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.vmbus_ic_softc*
  store %struct.vmbus_ic_softc* %12, %struct.vmbus_ic_softc** %5, align 8
  %13 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %14 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %17 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @vmbus_chan_recv(%struct.vmbus_channel* %19, i8* %20, i32* %7, i32* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ENOBUFS, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %87

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %36 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %87

40:                                               ; preds = %30
  %41 = load i8*, i8** %10, align 8
  %42 = bitcast i8* %41 to %struct.vmbus_icmsg_hdr*
  store %struct.vmbus_icmsg_hdr* %42, %struct.vmbus_icmsg_hdr** %6, align 8
  %43 = load %struct.vmbus_icmsg_hdr*, %struct.vmbus_icmsg_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.vmbus_icmsg_hdr, %struct.vmbus_icmsg_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %72 [
    i32 128, label %46
    i32 129, label %56
  ]

46:                                               ; preds = %40
  %47 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* @VMBUS_HEARTBEAT_FWVER, align 4
  %50 = load i32, i32* @VMBUS_HEARTBEAT_MSGVER, align 4
  %51 = call i32 @vmbus_ic_negomsg(%struct.vmbus_ic_softc* %47, i8* %48, i32* %7, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %87

55:                                               ; preds = %46
  br label %80

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @VMBUS_ICMSG_HEARTBEAT_SIZE_MIN, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %62 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %87

66:                                               ; preds = %56
  %67 = load i8*, i8** %10, align 8
  %68 = bitcast i8* %67 to %struct.vmbus_icmsg_heartbeat*
  %69 = getelementptr inbounds %struct.vmbus_icmsg_heartbeat, %struct.vmbus_icmsg_heartbeat* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %80

72:                                               ; preds = %40
  %73 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %74 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vmbus_icmsg_hdr*, %struct.vmbus_icmsg_hdr** %6, align 8
  %77 = getelementptr inbounds %struct.vmbus_icmsg_hdr, %struct.vmbus_icmsg_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %72, %66, %55
  %81 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %82 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @vmbus_ic_sendresp(%struct.vmbus_ic_softc* %81, %struct.vmbus_channel* %82, i8* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %60, %54, %34, %29
  ret void
}

declare dso_local i32 @vmbus_chan_recv(%struct.vmbus_channel*, i8*, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @vmbus_ic_negomsg(%struct.vmbus_ic_softc*, i8*, i32*, i32, i32) #1

declare dso_local i32 @vmbus_ic_sendresp(%struct.vmbus_ic_softc*, %struct.vmbus_channel*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
