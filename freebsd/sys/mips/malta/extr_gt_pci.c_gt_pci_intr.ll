; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt_pci_softc = type { i32, i32, i32, %struct.intr_event** }
%struct.intr_event = type { i32 }

@PIC_OCW3 = common dso_local global i32 0, align 4
@OCW3_SEL = common dso_local global i32 0, align 4
@OCW3_P = common dso_local global i32 0, align 4
@OCW3_POLL_PENDING = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@PIC_OCW2 = common dso_local global i32 0, align 4
@OCW2_SELECT = common dso_local global i32 0, align 4
@OCW2_EOI = common dso_local global i32 0, align 4
@OCW2_SL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gt_pci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt_pci_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gt_pci_softc*, align 8
  %4 = alloca %struct.intr_event*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.gt_pci_softc*
  store %struct.gt_pci_softc* %7, %struct.gt_pci_softc** %3, align 8
  br label %8

8:                                                ; preds = %108, %84, %1
  %9 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PIC_OCW3, align 4
  %16 = load i32, i32* @OCW3_SEL, align 4
  %17 = load i32, i32* @OCW3_P, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @bus_space_write_1(i32 %11, i32 %14, i32 %15, i32 %18)
  %20 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %21 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PIC_OCW3, align 4
  %27 = call i32 @bus_space_read_1(i32 %22, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @OCW3_POLL_PENDING, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %8
  %33 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %33

34:                                               ; preds = %8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @OCW3_POLL_IRQ(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %69

39:                                               ; preds = %34
  %40 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %41 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %44 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PIC_OCW3, align 4
  %47 = load i32, i32* @OCW3_SEL, align 4
  %48 = load i32, i32* @OCW3_P, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @bus_space_write_1(i32 %42, i32 %45, i32 %46, i32 %49)
  %51 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %52 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %55 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PIC_OCW3, align 4
  %58 = call i32 @bus_space_read_1(i32 %53, i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @OCW3_POLL_PENDING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %39
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @OCW3_POLL_IRQ(i32 %64)
  %66 = add nsw i32 %65, 8
  store i32 %66, i32* %5, align 4
  br label %68

67:                                               ; preds = %39
  store i32 2, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %63
  br label %69

69:                                               ; preds = %68, %34
  %70 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %71 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %70, i32 0, i32 3
  %72 = load %struct.intr_event**, %struct.intr_event*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %72, i64 %74
  %76 = load %struct.intr_event*, %struct.intr_event** %75, align 8
  store %struct.intr_event* %76, %struct.intr_event** %4, align 8
  %77 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %78 = icmp ne %struct.intr_event* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %81 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %80, i32 0, i32 0
  %82 = call i64 @CK_SLIST_EMPTY(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %69
  br label %8

85:                                               ; preds = %79
  %86 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %87 = call i32 @intr_event_handle(%struct.intr_event* %86, i32* null)
  %88 = load i32, i32* %5, align 4
  %89 = icmp sgt i32 %88, 7
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %92 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %95 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @PIC_OCW2, align 4
  %98 = load i32, i32* @OCW2_SELECT, align 4
  %99 = load i32, i32* @OCW2_EOI, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @OCW2_SL, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, 7
  %105 = call i32 @OCW2_ILS(i32 %104)
  %106 = or i32 %102, %105
  %107 = call i32 @bus_space_write_1(i32 %93, i32 %96, i32 %97, i32 %106)
  store i32 2, i32* %5, align 4
  br label %108

108:                                              ; preds = %90, %85
  %109 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %110 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %3, align 8
  %113 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @PIC_OCW2, align 4
  %116 = load i32, i32* @OCW2_SELECT, align 4
  %117 = load i32, i32* @OCW2_EOI, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @OCW2_SL, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @OCW2_ILS(i32 %121)
  %123 = or i32 %120, %122
  %124 = call i32 @bus_space_write_1(i32 %111, i32 %114, i32 %115, i32 %123)
  br label %8
}

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @OCW3_POLL_IRQ(i32) #1

declare dso_local i64 @CK_SLIST_EMPTY(i32*) #1

declare dso_local i32 @intr_event_handle(%struct.intr_event*, i32*) #1

declare dso_local i32 @OCW2_ILS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
