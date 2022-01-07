; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_reset_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_reset_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i32, i32 }

@CAS_TX_CONF = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@CAS_TX_CONF_TXDMA_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot disable TX DMA\0A\00", align 1
@CAS_RESET = common dso_local global i32 0, align 4
@CAS_RESET_TX = common dso_local global i32 0, align 4
@CAS_SERDES = common dso_local global i32 0, align 4
@CAS_RESET_PCS_DIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot reset transmitter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas_softc*)* @cas_reset_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_reset_tx(%struct.cas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cas_softc*, align 8
  store %struct.cas_softc* %0, %struct.cas_softc** %3, align 8
  %4 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %5 = call i32 @cas_disable_tx(%struct.cas_softc* %4)
  %6 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %7 = load i32, i32* @CAS_TX_CONF, align 4
  %8 = call i32 @CAS_WRITE_4(%struct.cas_softc* %6, i32 %7, i32 0)
  %9 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %10 = load i32, i32* @CAS_TX_CONF, align 4
  %11 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %12 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @CAS_BARRIER(%struct.cas_softc* %9, i32 %10, i32 4, i32 %13)
  %15 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %16 = load i32, i32* @CAS_TX_CONF, align 4
  %17 = load i32, i32* @CAS_TX_CONF_TXDMA_EN, align 4
  %18 = call i32 @cas_bitwait(%struct.cas_softc* %15, i32 %16, i32 %17, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %22 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %27 = load i32, i32* @CAS_RESET, align 4
  %28 = load i32, i32* @CAS_RESET_TX, align 4
  %29 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %30 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CAS_SERDES, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @CAS_RESET_PCS_DIS, align 4
  br label %38

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = or i32 %28, %39
  %41 = call i32 @CAS_WRITE_4(%struct.cas_softc* %26, i32 %27, i32 %40)
  %42 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %43 = load i32, i32* @CAS_RESET, align 4
  %44 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %45 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @CAS_BARRIER(%struct.cas_softc* %42, i32 %43, i32 4, i32 %46)
  %48 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %49 = load i32, i32* @CAS_RESET, align 4
  %50 = load i32, i32* @CAS_RESET_TX, align 4
  %51 = call i32 @cas_bitwait(%struct.cas_softc* %48, i32 %49, i32 %50, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %38
  %54 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %55 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %59

58:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @cas_disable_tx(%struct.cas_softc*) #1

declare dso_local i32 @CAS_WRITE_4(%struct.cas_softc*, i32, i32) #1

declare dso_local i32 @CAS_BARRIER(%struct.cas_softc*, i32, i32, i32) #1

declare dso_local i32 @cas_bitwait(%struct.cas_softc*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
