; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_intr_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_intr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocs_softc = type { i64, i32, i32, i32, i32 }

@ocs_pci_intx_filter = common dso_local global i32* null, align 8
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@ocs_pci_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not initialize interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocs_softc*)* @ocs_intr_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_intr_setup(%struct.ocs_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocs_softc*, align 8
  %4 = alloca i32*, align 8
  store %struct.ocs_softc* %0, %struct.ocs_softc** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 0, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** @ocs_pci_intx_filter, align 8
  store i32* %10, i32** %4, align 8
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @INTR_MPSAFE, align 4
  %19 = load i32, i32* @INTR_TYPE_CAM, align 4
  %20 = or i32 %18, %19
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @ocs_pci_intr, align 4
  %23 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %23, i32 0, i32 3
  %25 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %25, i32 0, i32 2
  %27 = call i64 @bus_setup_intr(i32 %14, i32 %17, i32 %20, i32* %21, i32 %22, i32* %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %11
  %30 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %35

34:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
