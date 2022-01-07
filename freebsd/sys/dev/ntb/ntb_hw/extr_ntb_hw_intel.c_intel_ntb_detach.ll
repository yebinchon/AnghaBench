; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NTB_XEON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @intel_ntb_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ntb_softc* @device_get_softc(i32 %4)
  store %struct.ntb_softc* %5, %struct.ntb_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @ntb_unregister_device(i32 %6)
  %8 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %8, i32 0, i32 7
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %14 = call i32 @DB_MASK_LOCK(%struct.ntb_softc* %13)
  %15 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %16 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %16, i32 0, i32 7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @db_iowrite(%struct.ntb_softc* %15, i32 %20, i32 %23)
  %25 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %26 = call i32 @DB_MASK_UNLOCK(%struct.ntb_softc* %25)
  br label %27

27:                                               ; preds = %12, %1
  %28 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %28, i32 0, i32 5
  %30 = call i32 @callout_drain(i32* %29)
  %31 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %31, i32 0, i32 4
  %33 = call i32 @callout_drain(i32* %32)
  %34 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %34, i32 0, i32 3
  %36 = call i32 @callout_drain(i32* %35)
  %37 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_disable_busmaster(i32 %39)
  %41 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NTB_XEON, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %48 = call i32 @intel_ntb_teardown_xeon(%struct.ntb_softc* %47)
  br label %49

49:                                               ; preds = %46, %27
  %50 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %51 = call i32 @intel_ntb_teardown_interrupts(%struct.ntb_softc* %50)
  %52 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %52, i32 0, i32 1
  %54 = call i32 @mtx_destroy(i32* %53)
  %55 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %56 = call i32 @intel_ntb_unmap_pci_bar(%struct.ntb_softc* %55)
  ret i32 0
}

declare dso_local %struct.ntb_softc* @device_get_softc(i32) #1

declare dso_local i32 @ntb_unregister_device(i32) #1

declare dso_local i32 @DB_MASK_LOCK(%struct.ntb_softc*) #1

declare dso_local i32 @db_iowrite(%struct.ntb_softc*, i32, i32) #1

declare dso_local i32 @DB_MASK_UNLOCK(%struct.ntb_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

declare dso_local i32 @intel_ntb_teardown_xeon(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_teardown_interrupts(%struct.ntb_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @intel_ntb_unmap_pci_bar(%struct.ntb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
