; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_irq_context = type { i32, %struct.mrsas_softc* }
%struct.mrsas_softc = type { i32, i32, i64 }

@MRSAS_FUSION_IN_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c" Entered into ISR when OCR is going active. \0A\00", align 1
@SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mrsas_irq_context*, align 8
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mrsas_irq_context*
  store %struct.mrsas_irq_context* %7, %struct.mrsas_irq_context** %3, align 8
  %8 = load %struct.mrsas_irq_context*, %struct.mrsas_irq_context** %3, align 8
  %9 = getelementptr inbounds %struct.mrsas_irq_context, %struct.mrsas_irq_context* %8, i32 0, i32 1
  %10 = load %struct.mrsas_softc*, %struct.mrsas_softc** %9, align 8
  store %struct.mrsas_softc* %10, %struct.mrsas_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %23 = call i32 @mrsas_clear_intr(%struct.mrsas_softc* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %50

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, i32* @MRSAS_FUSION_IN_RESET, align 4
  %30 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %31 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %30, i32 0, i32 0
  %32 = call i64 @mrsas_test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %37 = call i32 @mrsas_clear_intr(%struct.mrsas_softc* %36)
  br label %50

38:                                               ; preds = %28
  %39 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %40 = load %struct.mrsas_irq_context*, %struct.mrsas_irq_context** %3, align 8
  %41 = getelementptr inbounds %struct.mrsas_irq_context, %struct.mrsas_irq_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @mrsas_complete_cmd(%struct.mrsas_softc* %39, i32 %42)
  %44 = load i64, i64* @SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %48 = call i32 @mrsas_clear_intr(%struct.mrsas_softc* %47)
  br label %49

49:                                               ; preds = %46, %38
  br label %50

50:                                               ; preds = %49, %34, %26, %15
  ret void
}

declare dso_local i32 @mrsas_clear_intr(%struct.mrsas_softc*) #1

declare dso_local i64 @mrsas_test_bit(i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @mrsas_complete_cmd(%struct.mrsas_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
