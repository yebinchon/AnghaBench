; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir_pci.c_gdt_pci_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir_pci.c_gdt_pci_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_softc = type { i32 }

@GDT_D_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"gdt_pci_enable_intr(%p) \00", align 1
@GDT_MPR_EDOOR = common dso_local global i32 0, align 4
@GDT_EDOOR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdt_pci_enable_intr(%struct.gdt_softc* %0) #0 {
  %2 = alloca %struct.gdt_softc*, align 8
  store %struct.gdt_softc* %0, %struct.gdt_softc** %2, align 8
  %3 = load i32, i32* @GDT_D_INTR, align 4
  %4 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %5 = bitcast %struct.gdt_softc* %4 to i8*
  %6 = call i32 @GDT_DPRINTF(i32 %3, i8* %5)
  %7 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %8 = call i32 @GDT_CLASS(%struct.gdt_softc* %7)
  switch i32 %8, label %26 [
    i32 128, label %9
  ]

9:                                                ; preds = %1
  %10 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %11 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GDT_MPR_EDOOR, align 4
  %14 = call i32 @bus_write_1(i32 %12, i32 %13, i32 255)
  %15 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %16 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GDT_EDOOR_EN, align 4
  %19 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GDT_EDOOR_EN, align 4
  %23 = call i32 @bus_read_1(i32 %21, i32 %22)
  %24 = and i32 %23, -5
  %25 = call i32 @bus_write_1(i32 %17, i32 %18, i32 %24)
  br label %26

26:                                               ; preds = %1, %9
  ret void
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @GDT_CLASS(%struct.gdt_softc*) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
