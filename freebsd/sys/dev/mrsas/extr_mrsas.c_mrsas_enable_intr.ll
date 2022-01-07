; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i64 }

@MFI_FUSION_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@mrsas_reg_set = common dso_local global i32 0, align 4
@outbound_intr_status = common dso_local global i32 0, align 4
@outbound_intr_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_enable_intr(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  %5 = load i32, i32* @MFI_FUSION_ENABLE_INTERRUPT_MASK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %9 = load i32, i32* @mrsas_reg_set, align 4
  %10 = load i32, i32* @outbound_intr_status, align 4
  %11 = call i32 @offsetof(i32 %9, i32 %10)
  %12 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %8, i32 %11, i32 -1)
  %13 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %14 = load i32, i32* @mrsas_reg_set, align 4
  %15 = load i32, i32* @outbound_intr_status, align 4
  %16 = call i32 @offsetof(i32 %14, i32 %15)
  %17 = call i32 @mrsas_read_reg(%struct.mrsas_softc* %13, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %19 = load i32, i32* @mrsas_reg_set, align 4
  %20 = load i32, i32* @outbound_intr_mask, align 4
  %21 = call i32 @offsetof(i32 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %18, i32 %21, i32 %23)
  %25 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %26 = load i32, i32* @mrsas_reg_set, align 4
  %27 = load i32, i32* @outbound_intr_mask, align 4
  %28 = call i32 @offsetof(i32 %26, i32 %27)
  %29 = call i32 @mrsas_read_reg(%struct.mrsas_softc* %25, i32 %28)
  store i32 %29, i32* %4, align 4
  ret void
}

declare dso_local i32 @mrsas_write_reg(%struct.mrsas_softc*, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @mrsas_read_reg(%struct.mrsas_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
