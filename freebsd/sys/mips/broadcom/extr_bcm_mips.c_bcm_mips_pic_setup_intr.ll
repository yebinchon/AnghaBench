; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_pic_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_pic_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.bcm_mips_softc = type { i32 }
%struct.bcm_mips_irqsrc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @bcm_mips_pic_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mips_pic_setup_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_irqsrc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.intr_map_data*, align 8
  %9 = alloca %struct.bcm_mips_softc*, align 8
  %10 = alloca %struct.bcm_mips_irqsrc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.bcm_mips_softc* @device_get_softc(i32 %12)
  store %struct.bcm_mips_softc* %13, %struct.bcm_mips_softc** %9, align 8
  %14 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %6, align 8
  %15 = bitcast %struct.intr_irqsrc* %14 to %struct.bcm_mips_irqsrc*
  store %struct.bcm_mips_irqsrc* %15, %struct.bcm_mips_irqsrc** %10, align 8
  %16 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %9, align 8
  %17 = call i32 @BCM_MIPS_LOCK(%struct.bcm_mips_softc* %16)
  %18 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %9, align 8
  %19 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %10, align 8
  %20 = load %struct.resource*, %struct.resource** %7, align 8
  %21 = call i32 @bcm_mips_retain_cpu_intr(%struct.bcm_mips_softc* %18, %struct.bcm_mips_irqsrc* %19, %struct.resource* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %9, align 8
  %23 = call i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc* %22)
  %24 = load i32, i32* %11, align 4
  ret i32 %24
}

declare dso_local %struct.bcm_mips_softc* @device_get_softc(i32) #1

declare dso_local i32 @BCM_MIPS_LOCK(%struct.bcm_mips_softc*) #1

declare dso_local i32 @bcm_mips_retain_cpu_intr(%struct.bcm_mips_softc*, %struct.bcm_mips_irqsrc*, %struct.resource*) #1

declare dso_local i32 @BCM_MIPS_UNLOCK(%struct.bcm_mips_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
