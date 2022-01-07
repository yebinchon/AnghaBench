; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_ifmedia_sts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_ifmedia_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.vtnet_softc* }
%struct.vtnet_softc = type { i32 }
%struct.ifmediareq = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@VTNET_MEDIATYPE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @vtnet_ifmedia_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_ifmedia_sts(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.vtnet_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  store %struct.vtnet_softc* %8, %struct.vtnet_softc** %5, align 8
  %9 = load i32, i32* @IFM_AVALID, align 4
  %10 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %11 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @IFM_ETHER, align 4
  %13 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %14 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.vtnet_softc*, %struct.vtnet_softc** %5, align 8
  %16 = call i32 @VTNET_CORE_LOCK(%struct.vtnet_softc* %15)
  %17 = load %struct.vtnet_softc*, %struct.vtnet_softc** %5, align 8
  %18 = call i64 @vtnet_is_link_up(%struct.vtnet_softc* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32, i32* @IFM_ACTIVE, align 4
  %22 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %23 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @VTNET_MEDIATYPE, align 4
  %27 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %28 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @IFM_NONE, align 4
  %33 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %34 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %20
  %38 = load %struct.vtnet_softc*, %struct.vtnet_softc** %5, align 8
  %39 = call i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc* %38)
  ret void
}

declare dso_local i32 @VTNET_CORE_LOCK(%struct.vtnet_softc*) #1

declare dso_local i64 @vtnet_is_link_up(%struct.vtnet_softc*) #1

declare dso_local i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
