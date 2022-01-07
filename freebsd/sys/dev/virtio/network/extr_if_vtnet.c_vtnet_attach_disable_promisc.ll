; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_attach_disable_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_attach_disable_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@VTNET_FLAG_CTRL_RX = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cannot disable default promiscuous mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*)* @vtnet_attach_disable_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_attach_disable_promisc(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  %4 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %4, i32 0, i32 2
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %8 = call i32 @VTNET_CORE_LOCK(%struct.vtnet_softc* %7)
  %9 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VTNET_FLAG_CTRL_RX, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @IFF_PROMISC, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %23 = call i64 @vtnet_set_promisc(%struct.vtnet_softc* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* @IFF_PROMISC, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %32 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %25, %21
  br label %36

36:                                               ; preds = %35, %15
  %37 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %38 = call i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc* %37)
  ret void
}

declare dso_local i32 @VTNET_CORE_LOCK(%struct.vtnet_softc*) #1

declare dso_local i64 @vtnet_set_promisc(%struct.vtnet_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
