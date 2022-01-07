; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_bmips.c_bcm_bmips_pic_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_bmips.c_bcm_bmips_pic_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.bcm_bmips_softc = type { i32 }
%struct.bcm_mips_irqsrc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"no assigned MIPS IRQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @bcm_bmips_pic_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_bmips_pic_enable_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.bcm_bmips_softc*, align 8
  %6 = alloca %struct.bcm_mips_irqsrc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.bcm_bmips_softc* @device_get_softc(i32 %7)
  store %struct.bcm_bmips_softc* %8, %struct.bcm_bmips_softc** %5, align 8
  %9 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %10 = bitcast %struct.intr_irqsrc* %9 to %struct.bcm_mips_irqsrc*
  store %struct.bcm_mips_irqsrc* %10, %struct.bcm_mips_irqsrc** %6, align 8
  %11 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %12 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.bcm_bmips_softc*, %struct.bcm_bmips_softc** %5, align 8
  %18 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %19 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bcm_mips_irqsrc*, %struct.bcm_mips_irqsrc** %6, align 8
  %24 = getelementptr inbounds %struct.bcm_mips_irqsrc, %struct.bcm_mips_irqsrc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bcm_bmips_unmask_irq(%struct.bcm_bmips_softc* %17, i32 %22, i32 %25)
  ret void
}

declare dso_local %struct.bcm_bmips_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bcm_bmips_unmask_irq(%struct.bcm_bmips_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
