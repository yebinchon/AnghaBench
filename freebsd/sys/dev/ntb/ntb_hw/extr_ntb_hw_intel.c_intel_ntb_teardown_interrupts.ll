; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_teardown_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_teardown_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, i32, %struct.ntb_int_info* }
%struct.ntb_int_info = type { i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_softc*)* @intel_ntb_teardown_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ntb_teardown_interrupts(%struct.ntb_softc* %0) #0 {
  %2 = alloca %struct.ntb_softc*, align 8
  %3 = alloca %struct.ntb_int_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %52, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %5
  %12 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %12, i32 0, i32 2
  %14 = load %struct.ntb_int_info*, %struct.ntb_int_info** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ntb_int_info, %struct.ntb_int_info* %14, i64 %16
  store %struct.ntb_int_info* %17, %struct.ntb_int_info** %3, align 8
  %18 = load %struct.ntb_int_info*, %struct.ntb_int_info** %3, align 8
  %19 = getelementptr inbounds %struct.ntb_int_info, %struct.ntb_int_info* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %11
  %23 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ntb_int_info*, %struct.ntb_int_info** %3, align 8
  %27 = getelementptr inbounds %struct.ntb_int_info, %struct.ntb_int_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ntb_int_info*, %struct.ntb_int_info** %3, align 8
  %30 = getelementptr inbounds %struct.ntb_int_info, %struct.ntb_int_info* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bus_teardown_intr(i32 %25, i32* %28, i32* %31)
  br label %33

33:                                               ; preds = %22, %11
  %34 = load %struct.ntb_int_info*, %struct.ntb_int_info** %3, align 8
  %35 = getelementptr inbounds %struct.ntb_int_info, %struct.ntb_int_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SYS_RES_IRQ, align 4
  %43 = load %struct.ntb_int_info*, %struct.ntb_int_info** %3, align 8
  %44 = getelementptr inbounds %struct.ntb_int_info, %struct.ntb_int_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @rman_get_rid(i32* %45)
  %47 = load %struct.ntb_int_info*, %struct.ntb_int_info** %3, align 8
  %48 = getelementptr inbounds %struct.ntb_int_info, %struct.ntb_int_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bus_release_resource(i32 %41, i32 %42, i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %38, %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %5

55:                                               ; preds = %5
  %56 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %57 = call i32 @intel_ntb_free_msix_vec(%struct.ntb_softc* %56)
  %58 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pci_release_msi(i32 %60)
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @intel_ntb_free_msix_vec(%struct.ntb_softc*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
