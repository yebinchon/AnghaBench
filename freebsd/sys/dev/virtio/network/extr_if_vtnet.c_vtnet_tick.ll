; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32, i32*, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtnet_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.vtnet_softc*
  store %struct.vtnet_softc* %8, %struct.vtnet_softc** %3, align 8
  %9 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %9, i32 0, i32 3
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %13 = call i32 @VTNET_CORE_LOCK_ASSERT(%struct.vtnet_softc* %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %17 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @vtnet_watchdog(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %44 = call i32 @vtnet_init_locked(%struct.vtnet_softc* %43)
  br label %50

45:                                               ; preds = %33
  %46 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %47 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %46, i32 0, i32 1
  %48 = load i32, i32* @hz, align 4
  %49 = call i32 @callout_schedule(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %36
  ret void
}

declare dso_local i32 @VTNET_CORE_LOCK_ASSERT(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_watchdog(i32*) #1

declare dso_local i32 @vtnet_init_locked(%struct.vtnet_softc*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
