; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vte_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vte_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vte_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vte_softc* @device_get_softc(i32 %5)
  store %struct.vte_softc* %6, %struct.vte_softc** %3, align 8
  %7 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %8 = call i32 @VTE_LOCK(%struct.vte_softc* %7)
  %9 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %9, i32 0, i32 0
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %26 = call i32 @vte_init_locked(%struct.vte_softc* %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %29 = call i32 @VTE_UNLOCK(%struct.vte_softc* %28)
  ret i32 0
}

declare dso_local %struct.vte_softc* @device_get_softc(i32) #1

declare dso_local i32 @VTE_LOCK(%struct.vte_softc*) #1

declare dso_local i32 @vte_init_locked(%struct.vte_softc*) #1

declare dso_local i32 @VTE_UNLOCK(%struct.vte_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
