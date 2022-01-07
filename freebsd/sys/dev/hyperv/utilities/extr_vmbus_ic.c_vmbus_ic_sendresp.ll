; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_ic.c_vmbus_ic_sendresp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_ic.c_vmbus_ic_sendresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_ic_softc = type { i32 }
%struct.vmbus_channel = type { i32 }
%struct.vmbus_icmsg_hdr = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"invalid data length %d\00", align 1
@VMBUS_ICMSG_FLAG_XACT = common dso_local global i32 0, align 4
@VMBUS_ICMSG_FLAG_RESP = common dso_local global i32 0, align 4
@VMBUS_CHANPKT_TYPE_INBAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"resp send failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_ic_sendresp(%struct.vmbus_ic_softc* %0, %struct.vmbus_channel* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vmbus_ic_softc*, align 8
  %7 = alloca %struct.vmbus_channel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmbus_icmsg_hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.vmbus_ic_softc* %0, %struct.vmbus_ic_softc** %6, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp uge i64 %14, 4
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %16, i8* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.vmbus_icmsg_hdr*
  store %struct.vmbus_icmsg_hdr* %22, %struct.vmbus_icmsg_hdr** %11, align 8
  %23 = load i32, i32* @VMBUS_ICMSG_FLAG_XACT, align 4
  %24 = load i32, i32* @VMBUS_ICMSG_FLAG_RESP, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.vmbus_icmsg_hdr*, %struct.vmbus_icmsg_hdr** %11, align 8
  %27 = getelementptr inbounds %struct.vmbus_icmsg_hdr, %struct.vmbus_icmsg_hdr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %29 = load i32, i32* @VMBUS_CHANPKT_TYPE_INBAND, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @vmbus_chan_send(%struct.vmbus_channel* %28, i32 %29, i32 0, i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %5
  %37 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %6, align 8
  %38 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %5
  %43 = load i32, i32* %12, align 4
  ret i32 %43
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vmbus_chan_send(%struct.vmbus_channel*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
