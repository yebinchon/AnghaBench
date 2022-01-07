; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_update_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_update_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*)* @vtnet_update_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_update_link_status(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  %5 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %5, i32 0, i32 1
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %9 = call i32 @VTNET_CORE_LOCK_ASSERT(%struct.vtnet_softc* %8)
  %10 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %11 = call i32 @vtnet_is_link_up(%struct.vtnet_softc* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %21 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = load i32, i32* @LINK_STATE_UP, align 4
  %24 = call i32 @if_link_state_change(%struct.ifnet* %22, i32 %23)
  br label %40

25:                                               ; preds = %14, %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %30 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %35 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = load i32, i32* @LINK_STATE_DOWN, align 4
  %38 = call i32 @if_link_state_change(%struct.ifnet* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %28, %25
  br label %40

40:                                               ; preds = %39, %19
  ret void
}

declare dso_local i32 @VTNET_CORE_LOCK_ASSERT(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_is_link_up(%struct.vtnet_softc*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
