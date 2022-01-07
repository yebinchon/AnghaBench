; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_set_icus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_set_icus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt_pci_softc = type { i32, i32, i32, i32, i32, i32 }

@PIC_OCW1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gt_pci_softc*)* @gt_pci_set_icus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gt_pci_set_icus(%struct.gt_pci_softc* %0) #0 {
  %2 = alloca %struct.gt_pci_softc*, align 8
  store %struct.gt_pci_softc* %0, %struct.gt_pci_softc** %2, align 8
  %3 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %4 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 65280
  %7 = icmp ne i32 %6, 65280
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %10 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, -5
  store i32 %12, i32* %10, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %15 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, 4
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %20 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %23 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PIC_OCW1, align 4
  %26 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %27 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = call i32 @bus_space_write_1(i32 %21, i32 %24, i32 %25, i32 %29)
  %31 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %32 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %35 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PIC_OCW1, align 4
  %38 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %39 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = call i32 @bus_space_write_1(i32 %33, i32 %36, i32 %37, i32 %42)
  %44 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %45 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %48 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %51 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 255
  %54 = call i32 @bus_space_write_1(i32 %46, i32 %49, i32 0, i32 %53)
  %55 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %56 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %59 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %2, align 8
  %62 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  %66 = call i32 @bus_space_write_1(i32 %57, i32 %60, i32 1, i32 %65)
  ret void
}

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
