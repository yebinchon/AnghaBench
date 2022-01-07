; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_interrupt.c_isci_interrupt_setup_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_interrupt.c_isci_interrupt_setup_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_softc = type { i32, i32, i32*, %struct.ISCI_INTERRUPT_INFO* }
%struct.ISCI_INTERRUPT_INFO = type { i32*, i32*, i64, i8*, i32* }

@SCIC_LEGACY_LINE_INTERRUPT_TYPE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bus_alloc_resource failed\0A\00", align 1
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@isci_interrupt_legacy_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"bus_setup_intr failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_softc*)* @isci_interrupt_setup_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_interrupt_setup_legacy(%struct.isci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_softc*, align 8
  %4 = alloca %struct.ISCI_INTERRUPT_INFO*, align 8
  store %struct.isci_softc* %0, %struct.isci_softc** %3, align 8
  %5 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %6 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %5, i32 0, i32 3
  %7 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %6, align 8
  %8 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %7, i64 0
  store %struct.ISCI_INTERRUPT_INFO* %8, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %9 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* @SCIC_LEGACY_LINE_INTERRUPT_TYPE, align 4
  %12 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @scic_controller_get_handler_methods(i32 %11, i32 0, i32* %15)
  %17 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %18 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %22 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %21, i32 0, i32 4
  store i32* %20, i32** %22, align 8
  %23 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %24 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %26 = bitcast %struct.isci_softc* %25 to i8*
  %27 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %28 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %30 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SYS_RES_IRQ, align 4
  %33 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %34 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %33, i32 0, i32 2
  %35 = load i32, i32* @RF_SHAREABLE, align 4
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = or i32 %35, %36
  %38 = call i32* @bus_alloc_resource_any(i32 %31, i32 %32, i64* %34, i32 %37)
  %39 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %40 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %42 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %68

47:                                               ; preds = %1
  %48 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %49 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %51 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %54 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @INTR_TYPE_CAM, align 4
  %57 = load i32, i32* @INTR_MPSAFE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @isci_interrupt_legacy_handler, align 4
  %60 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %61 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %4, align 8
  %62 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %61, i32 0, i32 0
  %63 = call i64 @bus_setup_intr(i32 %52, i32* %55, i32 %58, i32* null, i32 %59, %struct.ISCI_INTERRUPT_INFO* %60, i32** %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %47
  %66 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %68

67:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %65, %45
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @scic_controller_get_handler_methods(i32, i32, i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @isci_log_message(i32, i8*, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ISCI_INTERRUPT_INFO*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
