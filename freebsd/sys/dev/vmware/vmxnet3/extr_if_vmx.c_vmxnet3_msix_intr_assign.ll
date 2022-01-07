; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_msix_intr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_msix_intr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32, i32, %struct.vmxnet3_softc*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vmxnet3_rxqueue = type { i32, i32, %struct.vmxnet3_rxqueue*, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [6 x i8] c"rxq%d\00", align 1
@IFLIB_INTR_RX = common dso_local global i32 0, align 4
@vmxnet3_rxq_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to register rxq %d interrupt handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"txq%d\00", align 1
@IFLIB_INTR_TX = common dso_local global i32 0, align 4
@IFLIB_INTR_ADMIN = common dso_local global i32 0, align 4
@vmxnet3_event_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to register event interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vmxnet3_msix_intr_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_msix_intr_assign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmxnet3_softc*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.vmxnet3_rxqueue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.vmxnet3_softc* @iflib_get_softc(i32 %12)
  store %struct.vmxnet3_softc* %13, %struct.vmxnet3_softc** %6, align 8
  %14 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %7, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %55, %2
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @snprintf(i8* %24, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %28 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %27, i32 0, i32 2
  %29 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %29, i64 %31
  %33 = bitcast %struct.vmxnet3_softc* %32 to %struct.vmxnet3_rxqueue*
  store %struct.vmxnet3_rxqueue* %33, %struct.vmxnet3_rxqueue** %8, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %8, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %35, i32 0, i32 1
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* @IFLIB_INTR_RX, align 4
  %40 = load i32, i32* @vmxnet3_rxq_intr, align 4
  %41 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %8, align 8
  %42 = bitcast %struct.vmxnet3_rxqueue* %41 to %struct.vmxnet3_softc*
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %45 = call i32 @iflib_irq_alloc_generic(i32 %34, i32* %36, i32 %38, i32 %39, i32 %40, %struct.vmxnet3_softc* %42, i32 %43, i8* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %23
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @iflib_get_dev(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %97

54:                                               ; preds = %23
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %17

58:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %74, %58
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @snprintf(i8* %66, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @IFLIB_INTR_TX, align 4
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %73 = call i32 @iflib_softirq_alloc_generic(i32 %69, i32* null, i32 %70, i32* null, i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %59

77:                                               ; preds = %59
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %80 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* @IFLIB_INTR_ADMIN, align 4
  %86 = load i32, i32* @vmxnet3_event_intr, align 4
  %87 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %6, align 8
  %88 = call i32 @iflib_irq_alloc_generic(i32 %78, i32* %80, i32 %84, i32 %85, i32 %86, %struct.vmxnet3_softc* %87, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %77
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @iflib_get_dev(i32 %92)
  %94 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %97

96:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %91, %48
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.vmxnet3_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @iflib_irq_alloc_generic(i32, i32*, i32, i32, i32, %struct.vmxnet3_softc*, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @iflib_softirq_alloc_generic(i32, i32*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
