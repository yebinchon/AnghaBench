; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_irqs_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_irqs_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptnet_softc = type { i32, i32*, %struct.ptnet_queue*, i32 }
%struct.ptnet_queue = type { i32*, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@PTNETMAP_MSIX_PCI_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptnet_softc*)* @ptnet_irqs_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptnet_irqs_fini(%struct.ptnet_softc* %0) #0 {
  %2 = alloca %struct.ptnet_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptnet_queue*, align 8
  store %struct.ptnet_softc* %0, %struct.ptnet_softc** %2, align 8
  %6 = load %struct.ptnet_softc*, %struct.ptnet_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %66, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ptnet_softc*, %struct.ptnet_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %69

15:                                               ; preds = %9
  %16 = load %struct.ptnet_softc*, %struct.ptnet_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %16, i32 0, i32 2
  %18 = load %struct.ptnet_queue*, %struct.ptnet_queue** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %18, i64 %20
  store %struct.ptnet_queue* %21, %struct.ptnet_queue** %5, align 8
  %22 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %23 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %28 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @taskqueue_free(i32* %29)
  %31 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %32 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %15
  %34 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %35 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %41 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %44 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_teardown_intr(i32 %39, i32* %42, i32* %45)
  %47 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %48 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %38, %33
  %50 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %51 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @SYS_RES_IRQ, align 4
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %60 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bus_release_resource(i32 %55, i32 %56, i32 %58, i32* %61)
  %63 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %64 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %54, %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %9

69:                                               ; preds = %9
  %70 = load %struct.ptnet_softc*, %struct.ptnet_softc** %2, align 8
  %71 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @pci_release_msi(i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @SYS_RES_MEMORY, align 4
  %79 = load i32, i32* @PTNETMAP_MSIX_PCI_BAR, align 4
  %80 = call i32 @PCIR_BAR(i32 %79)
  %81 = load %struct.ptnet_softc*, %struct.ptnet_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @bus_release_resource(i32 %77, i32 %78, i32 %80, i32* %83)
  %85 = load %struct.ptnet_softc*, %struct.ptnet_softc** %2, align 8
  %86 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %74, %69
  ret void
}

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
