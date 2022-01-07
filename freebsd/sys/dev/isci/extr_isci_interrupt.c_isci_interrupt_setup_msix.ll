; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_interrupt.c_isci_interrupt_setup_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_interrupt.c_isci_interrupt_setup_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_softc = type { i64, i32, i32*, i32*, %struct.ISCI_INTERRUPT_INFO* }
%struct.ISCI_INTERRUPT_INFO = type { i64, i32*, i32*, i32*, i32* }

@SCIC_MSIX_INTERRUPT_TYPE = common dso_local global i32 0, align 4
@SCI_MAX_MSIX_MESSAGES_PER_CONTROLLER = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bus_alloc_resource failed\0A\00", align 1
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@isci_interrupt_msix_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"bus_setup_intr failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_softc*)* @isci_interrupt_setup_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_interrupt_setup_msix(%struct.isci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ISCI_INTERRUPT_INFO*, align 8
  store %struct.isci_softc* %0, %struct.isci_softc** %3, align 8
  %8 = load i32, i32* @SCIC_MSIX_INTERRUPT_TYPE, align 4
  %9 = load i64, i64* @SCI_MAX_MSIX_MESSAGES_PER_CONTROLLER, align 8
  %10 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %11 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = call i32 @scic_controller_get_handler_methods(i32 %8, i64 %9, i32* %13)
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %98, %1
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %18 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %101

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @SCI_MAX_MSIX_MESSAGES_PER_CONTROLLER, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %25

25:                                               ; preds = %94, %21
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @SCI_MAX_MSIX_MESSAGES_PER_CONTROLLER, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %97

29:                                               ; preds = %25
  %30 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %31 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %30, i32 0, i32 4
  %32 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %33, %34
  %36 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %32, i64 %35
  store %struct.ISCI_INTERRUPT_INFO* %36, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %37 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %38 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %43 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %42, i32 0, i32 4
  store i32* %41, i32** %43, align 8
  %44 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %45 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %50 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %51, %52
  %54 = add i64 %53, 1
  %55 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %56 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %58 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SYS_RES_IRQ, align 4
  %61 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %62 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %61, i32 0, i32 0
  %63 = load i32, i32* @RF_ACTIVE, align 4
  %64 = call i32* @bus_alloc_resource_any(i32 %59, i32 %60, i64* %62, i32 %63)
  %65 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %66 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %68 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %29
  %72 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %102

73:                                               ; preds = %29
  %74 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %75 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.isci_softc*, %struct.isci_softc** %3, align 8
  %77 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %80 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @INTR_TYPE_CAM, align 4
  %83 = load i32, i32* @INTR_MPSAFE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @isci_interrupt_msix_handler, align 4
  %86 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %87 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %7, align 8
  %88 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %87, i32 0, i32 1
  %89 = call i64 @bus_setup_intr(i32 %78, i32* %81, i32 %84, i32* null, i32 %85, %struct.ISCI_INTERRUPT_INFO* %86, i32** %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %73
  %92 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %102

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %5, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %5, align 8
  br label %25

97:                                               ; preds = %25
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %4, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %4, align 8
  br label %15

101:                                              ; preds = %15
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %91, %71
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @scic_controller_get_handler_methods(i32, i64, i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @isci_log_message(i32, i8*, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ISCI_INTERRUPT_INFO*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
