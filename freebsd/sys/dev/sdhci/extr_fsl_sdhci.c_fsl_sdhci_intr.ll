; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sdhci_softc = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@SDHCI_INT_STATUS = common dso_local global i32 0, align 4
@SDHCI_INT_RESPONSE = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fsl_sdhci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sdhci_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fsl_sdhci_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.fsl_sdhci_softc*
  store %struct.fsl_sdhci_softc* %6, %struct.fsl_sdhci_softc** %3, align 8
  %7 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %26 [
    i32 128, label %14
    i32 129, label %20
  ]

14:                                               ; preds = %1
  %15 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %16 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %17 = call i32 @RD4(%struct.fsl_sdhci_softc* %15, i32 %16)
  %18 = load i32, i32* @SDHCI_INT_RESPONSE, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %4, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %22 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %23 = call i32 @RD4(%struct.fsl_sdhci_softc* %21, i32 %22)
  %24 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %20, %14
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = call i64 (...) @getsbinuptime()
  %32 = load i32, i32* @SBT_1MS, align 4
  %33 = mul nsw i32 250, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %39 = call i32 @fsl_sdhci_r1bfix_is_wait_done(%struct.fsl_sdhci_softc* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %30
  %42 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %43 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @WR4(%struct.fsl_sdhci_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %47 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %50 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %51 = call i32 @bus_barrier(i32 %48, i32 %49, i32 4, i32 %50)
  br label %52

52:                                               ; preds = %41, %30
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %55 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @mtx_unlock(i32* %56)
  %58 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %59 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %58, i32 0, i32 1
  %60 = call i32 @sdhci_generic_intr(%struct.TYPE_2__* %59)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @RD4(%struct.fsl_sdhci_softc*, i32) #1

declare dso_local i64 @getsbinuptime(...) #1

declare dso_local i32 @fsl_sdhci_r1bfix_is_wait_done(%struct.fsl_sdhci_softc*) #1

declare dso_local i32 @WR4(%struct.fsl_sdhci_softc*, i32, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sdhci_generic_intr(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
