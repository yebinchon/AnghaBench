; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@vtnet_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*)* @vtnet_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_init_locked(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  %5 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %8, i32 0, i32 1
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %12 = call i32 @VTNET_CORE_LOCK_ASSERT(%struct.vtnet_softc* %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %22 = call i32 @vtnet_stop(%struct.vtnet_softc* %21)
  %23 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %24 = call i64 @vtnet_virtio_reinit(%struct.vtnet_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %43

27:                                               ; preds = %20
  %28 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %29 = call i64 @vtnet_reinit(%struct.vtnet_softc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %43

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @virtio_reinit_complete(i32 %33)
  %35 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %36 = call i32 @vtnet_update_link_status(%struct.vtnet_softc* %35)
  %37 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %38 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %37, i32 0, i32 0
  %39 = load i32, i32* @hz, align 4
  %40 = load i32, i32* @vtnet_tick, align 4
  %41 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %42 = call i32 @callout_reset(i32* %38, i32 %39, i32 %40, %struct.vtnet_softc* %41)
  br label %46

43:                                               ; preds = %31, %26
  %44 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %45 = call i32 @vtnet_stop(%struct.vtnet_softc* %44)
  br label %46

46:                                               ; preds = %43, %32, %19
  ret void
}

declare dso_local i32 @VTNET_CORE_LOCK_ASSERT(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_stop(%struct.vtnet_softc*) #1

declare dso_local i64 @vtnet_virtio_reinit(%struct.vtnet_softc*) #1

declare dso_local i64 @vtnet_reinit(%struct.vtnet_softc*) #1

declare dso_local i32 @virtio_reinit_complete(i32) #1

declare dso_local i32 @vtnet_update_link_status(%struct.vtnet_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.vtnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
