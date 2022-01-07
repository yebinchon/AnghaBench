; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PSM_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@KBDC_RID_AUX = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @psmdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmdetach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.psm_softc* @device_get_softc(i32 %6)
  store %struct.psm_softc* %7, %struct.psm_softc** %4, align 8
  %8 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %9 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PSM_OPEN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load i32, i32* @KBDC_RID_AUX, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %20 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %23 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bus_teardown_intr(i32 %18, i32 %21, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SYS_RES_IRQ, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %30 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bus_release_resource(i32 %26, i32 %27, i32 %28, i32 %31)
  %33 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %34 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @destroy_dev(i32 %35)
  %37 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %38 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @destroy_dev(i32 %39)
  %41 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %42 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %41, i32 0, i32 2
  %43 = call i32 @callout_drain(i32* %42)
  %44 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %45 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %44, i32 0, i32 1
  %46 = call i32 @callout_drain(i32* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %16, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.psm_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
