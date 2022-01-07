; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_softc = type { i32, i32*, i32*, i32 }

@FALSE = common dso_local global i64 0, align 8
@g_force_legacy_interrupts = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bus_alloc_resource failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@ioat_interrupt_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bus_setup_intr failed\0A\00", align 1
@IOAT_INTRCTRL_MASTER_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioat_softc*)* @ioat_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_setup_intr(%struct.ioat_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioat_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ioat_softc* %0, %struct.ioat_softc** %3, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @g_force_legacy_interrupts, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pci_msix_count(i32 %15)
  %17 = icmp sge i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  %19 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pci_alloc_msix(i32 %21, i32* %4)
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* @TRUE, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %25, %18
  br label %28

28:                                               ; preds = %27, %12, %1
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %38, i32 0, i32 0
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %39, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  br label %61

45:                                               ; preds = %28
  %46 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SYS_RES_IRQ, align 4
  %52 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %52, i32 0, i32 0
  %54 = load i32, i32* @RF_SHAREABLE, align 4
  %55 = load i32, i32* @RF_ACTIVE, align 4
  %56 = or i32 %54, %55
  %57 = call i8* @bus_alloc_resource_any(i32 %50, i32 %51, i32* %53, i32 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %45, %31
  %62 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = call i32 @ioat_log_message(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %2, align 4
  br label %95

69:                                               ; preds = %61
  %70 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @INTR_MPSAFE, align 4
  %79 = load i32, i32* @INTR_TYPE_MISC, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @ioat_interrupt_handler, align 4
  %82 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %83 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %83, i32 0, i32 1
  %85 = call i32 @bus_setup_intr(i32 %74, i32* %77, i32 %80, i32* null, i32 %81, %struct.ioat_softc* %82, i32** %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %69
  %89 = call i32 @ioat_log_message(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %95

91:                                               ; preds = %69
  %92 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %93 = load i32, i32* @IOAT_INTRCTRL_MASTER_INT_EN, align 4
  %94 = call i32 @ioat_write_intrctrl(%struct.ioat_softc* %92, i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %88, %66
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @ioat_log_message(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ioat_softc*, i32**) #1

declare dso_local i32 @ioat_write_intrctrl(%struct.ioat_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
