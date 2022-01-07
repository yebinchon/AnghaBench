; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_assert_aux_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_assert_aux_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbdc_softc = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@KBD_ENABLE_AUX_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atkbdc_softc*)* @atkbdc_assert_aux_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atkbdc_assert_aux_intr(%struct.atkbdc_softc* %0) #0 {
  %2 = alloca %struct.atkbdc_softc*, align 8
  store %struct.atkbdc_softc* %0, %struct.atkbdc_softc** %2, align 8
  %3 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %4 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @KBD_ENABLE_AUX_INT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %13 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vm_isa_pulse_irq(i32 %17, i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @vm_isa_pulse_irq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
