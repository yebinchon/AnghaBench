; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_halt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32 }
%struct.vmbus_xact = type { i32 }
%struct.rndis_halt_req = type { i32, i32, i32 }
%struct.hn_nvs_sendctx = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"no xact for RNDIS halt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@REMOTE_NDIS_HALT_MSG = common dso_local global i32 0, align 4
@hn_nvs_sent_xact = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"RNDIS halt done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*)* @hn_rndis_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_rndis_halt(%struct.hn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.vmbus_xact*, align 8
  %5 = alloca %struct.rndis_halt_req*, align 8
  %6 = alloca %struct.hn_nvs_sendctx, align 4
  %7 = alloca i64, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  %8 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.vmbus_xact* @vmbus_xact_get(i32 %10, i32 12)
  store %struct.vmbus_xact* %11, %struct.vmbus_xact** %4, align 8
  %12 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %13 = icmp eq %struct.vmbus_xact* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %16 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @if_printf(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %48

20:                                               ; preds = %1
  %21 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %22 = call %struct.rndis_halt_req* @vmbus_xact_req_data(%struct.vmbus_xact* %21)
  store %struct.rndis_halt_req* %22, %struct.rndis_halt_req** %5, align 8
  %23 = load i32, i32* @REMOTE_NDIS_HALT_MSG, align 4
  %24 = load %struct.rndis_halt_req*, %struct.rndis_halt_req** %5, align 8
  %25 = getelementptr inbounds %struct.rndis_halt_req, %struct.rndis_halt_req* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rndis_halt_req*, %struct.rndis_halt_req** %5, align 8
  %27 = getelementptr inbounds %struct.rndis_halt_req, %struct.rndis_halt_req* %26, i32 0, i32 0
  store i32 12, i32* %27, align 4
  %28 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %29 = call i32 @hn_rndis_rid(%struct.hn_softc* %28)
  %30 = load %struct.rndis_halt_req*, %struct.rndis_halt_req** %5, align 8
  %31 = getelementptr inbounds %struct.rndis_halt_req, %struct.rndis_halt_req* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @hn_nvs_sent_xact, align 4
  %33 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %34 = call i32 @hn_nvs_sendctx_init(%struct.hn_nvs_sendctx* %6, i32 %32, %struct.vmbus_xact* %33)
  %35 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %36 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %37 = call i32 @hn_rndis_xact_exec1(%struct.hn_softc* %35, %struct.vmbus_xact* %36, i32 12, %struct.hn_nvs_sendctx* %6, i64* %7)
  %38 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %39 = call i32 @vmbus_xact_put(%struct.vmbus_xact* %38)
  %40 = load i64, i64* @bootverbose, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %20
  %43 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %44 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @if_printf(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %20
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.vmbus_xact* @vmbus_xact_get(i32, i32) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local %struct.rndis_halt_req* @vmbus_xact_req_data(%struct.vmbus_xact*) #1

declare dso_local i32 @hn_rndis_rid(%struct.hn_softc*) #1

declare dso_local i32 @hn_nvs_sendctx_init(%struct.hn_nvs_sendctx*, i32, %struct.vmbus_xact*) #1

declare dso_local i32 @hn_rndis_xact_exec1(%struct.hn_softc*, %struct.vmbus_xact*, i32, %struct.hn_nvs_sendctx*, i64*) #1

declare dso_local i32 @vmbus_xact_put(%struct.vmbus_xact*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
