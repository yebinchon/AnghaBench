; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_pci.c_mpr_pci_free_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_pci.c_mpr_pci_free_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, i32, %struct.mpr_queue* }
%struct.mpr_queue = type { i32*, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpr_pci_free_interrupts(%struct.mpr_softc* %0) #0 {
  %2 = alloca %struct.mpr_softc*, align 8
  %3 = alloca %struct.mpr_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %2, align 8
  %5 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %5, i32 0, i32 2
  %7 = load %struct.mpr_queue*, %struct.mpr_queue** %6, align 8
  %8 = icmp eq %struct.mpr_queue* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %54

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %51, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %18, i32 0, i32 2
  %20 = load %struct.mpr_queue*, %struct.mpr_queue** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %20, i64 %22
  store %struct.mpr_queue* %23, %struct.mpr_queue** %3, align 8
  %24 = load %struct.mpr_queue*, %struct.mpr_queue** %3, align 8
  %25 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %17
  %29 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mpr_queue*, %struct.mpr_queue** %3, align 8
  %33 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.mpr_queue*, %struct.mpr_queue** %3, align 8
  %36 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bus_teardown_intr(i32 %31, i32* %34, i32 %37)
  %39 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SYS_RES_IRQ, align 4
  %43 = load %struct.mpr_queue*, %struct.mpr_queue** %3, align 8
  %44 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mpr_queue*, %struct.mpr_queue** %3, align 8
  %47 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @bus_release_resource(i32 %41, i32 %42, i32 %45, i32* %48)
  br label %50

50:                                               ; preds = %28, %17
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %11

54:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
