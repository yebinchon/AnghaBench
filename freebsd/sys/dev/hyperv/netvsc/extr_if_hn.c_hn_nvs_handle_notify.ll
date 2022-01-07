; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_nvs_handle_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_nvs_handle_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32 }
%struct.vmbus_chanpkt_hdr = type { i32 }
%struct.hn_nvs_hdr = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"invalid nvs notify\0A\00", align 1
@HN_NVS_TYPE_TXTBL_NOTE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"got notify, nvs type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, %struct.vmbus_chanpkt_hdr*)* @hn_nvs_handle_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_nvs_handle_notify(%struct.hn_softc* %0, %struct.vmbus_chanpkt_hdr* %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.vmbus_chanpkt_hdr*, align 8
  %5 = alloca %struct.hn_nvs_hdr*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store %struct.vmbus_chanpkt_hdr* %1, %struct.vmbus_chanpkt_hdr** %4, align 8
  %6 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %4, align 8
  %7 = call i32 @VMBUS_CHANPKT_DATALEN(%struct.vmbus_chanpkt_hdr* %6)
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @if_printf(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %4, align 8
  %17 = call %struct.hn_nvs_hdr* @VMBUS_CHANPKT_CONST_DATA(%struct.vmbus_chanpkt_hdr* %16)
  store %struct.hn_nvs_hdr* %17, %struct.hn_nvs_hdr** %5, align 8
  %18 = load %struct.hn_nvs_hdr*, %struct.hn_nvs_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.hn_nvs_hdr, %struct.hn_nvs_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HN_NVS_TYPE_TXTBL_NOTE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %32

24:                                               ; preds = %15
  %25 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %26 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hn_nvs_hdr*, %struct.hn_nvs_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.hn_nvs_hdr, %struct.hn_nvs_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32, i8*, ...) @if_printf(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %24, %23, %10
  ret void
}

declare dso_local i32 @VMBUS_CHANPKT_DATALEN(%struct.vmbus_chanpkt_hdr*) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local %struct.hn_nvs_hdr* @VMBUS_CHANPKT_CONST_DATA(%struct.vmbus_chanpkt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
