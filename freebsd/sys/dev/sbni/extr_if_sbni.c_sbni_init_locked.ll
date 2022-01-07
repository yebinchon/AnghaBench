; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@SBNI_HZ = common dso_local global i32 0, align 4
@sbni_timeout = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*)* @sbni_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbni_init_locked(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %4 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %5 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %4, i32 0, i32 1
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %16 = call i32 @card_start(%struct.sbni_softc* %15)
  %17 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %18 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %17, i32 0, i32 0
  %19 = load i32, i32* @hz, align 4
  %20 = load i32, i32* @SBNI_HZ, align 4
  %21 = sdiv i32 %19, %20
  %22 = load i32, i32* @sbni_timeout, align 4
  %23 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %24 = call i32 @callout_reset(i32* %18, i32 %21, i32 %22, %struct.sbni_softc* %23)
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = call i32 @sbni_start_locked(%struct.ifnet* %36)
  br label %38

38:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @card_start(%struct.sbni_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.sbni_softc*) #1

declare dso_local i32 @sbni_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
