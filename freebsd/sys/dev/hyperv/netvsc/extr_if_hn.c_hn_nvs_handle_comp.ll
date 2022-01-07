; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_nvs_handle_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_nvs_handle_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32 }
%struct.vmbus_channel = type { i32 }
%struct.vmbus_chanpkt_hdr = type { i64 }
%struct.hn_nvs_sendctx = type { i32 (%struct.hn_nvs_sendctx*, %struct.hn_softc*, %struct.vmbus_channel*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, %struct.vmbus_channel*, %struct.vmbus_chanpkt_hdr*)* @hn_nvs_handle_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_nvs_handle_comp(%struct.hn_softc* %0, %struct.vmbus_channel* %1, %struct.vmbus_chanpkt_hdr* %2) #0 {
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca %struct.vmbus_channel*, align 8
  %6 = alloca %struct.vmbus_chanpkt_hdr*, align 8
  %7 = alloca %struct.hn_nvs_sendctx*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %5, align 8
  store %struct.vmbus_chanpkt_hdr* %2, %struct.vmbus_chanpkt_hdr** %6, align 8
  %8 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %9 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hn_nvs_sendctx*
  store %struct.hn_nvs_sendctx* %11, %struct.hn_nvs_sendctx** %7, align 8
  %12 = load %struct.hn_nvs_sendctx*, %struct.hn_nvs_sendctx** %7, align 8
  %13 = getelementptr inbounds %struct.hn_nvs_sendctx, %struct.hn_nvs_sendctx* %12, i32 0, i32 0
  %14 = load i32 (%struct.hn_nvs_sendctx*, %struct.hn_softc*, %struct.vmbus_channel*, i32, i32)*, i32 (%struct.hn_nvs_sendctx*, %struct.hn_softc*, %struct.vmbus_channel*, i32, i32)** %13, align 8
  %15 = load %struct.hn_nvs_sendctx*, %struct.hn_nvs_sendctx** %7, align 8
  %16 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %18 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %19 = call i32 @VMBUS_CHANPKT_CONST_DATA(%struct.vmbus_chanpkt_hdr* %18)
  %20 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %21 = call i32 @VMBUS_CHANPKT_DATALEN(%struct.vmbus_chanpkt_hdr* %20)
  %22 = call i32 %14(%struct.hn_nvs_sendctx* %15, %struct.hn_softc* %16, %struct.vmbus_channel* %17, i32 %19, i32 %21)
  ret void
}

declare dso_local i32 @VMBUS_CHANPKT_CONST_DATA(%struct.vmbus_chanpkt_hdr*) #1

declare dso_local i32 @VMBUS_CHANPKT_DATALEN(%struct.vmbus_chanpkt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
