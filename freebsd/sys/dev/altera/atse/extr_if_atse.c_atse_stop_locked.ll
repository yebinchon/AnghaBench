; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atse_softc = type { i32, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_TX_ENA = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_RX_ENA = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Disabling MAC TX/RX timed out.\0A\00", align 1
@ATSE_FLAGS_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atse_softc*)* @atse_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_stop_locked(%struct.atse_softc* %0) #0 {
  %2 = alloca %struct.atse_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store %struct.atse_softc* %0, %struct.atse_softc** %2, align 8
  %7 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %8 = call i32 @ATSE_LOCK_ASSERT(%struct.atse_softc* %7)
  %9 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %10 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %9, i32 0, i32 3
  %11 = call i32 @callout_stop(i32* %10)
  %12 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %13 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %12, i32 0, i32 2
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %5, align 8
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_TX_ENA, align 4
  %24 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_RX_ENA, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %27 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %28 = call i32 @CSR_READ_4(%struct.atse_softc* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %34 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @CSR_WRITE_4(%struct.atse_softc* %33, i32 %34, i32 %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %51, %1
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 100
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %42 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %43 = call i32 @CSR_READ_4(%struct.atse_softc* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %54

49:                                               ; preds = %40
  %50 = call i32 @DELAY(i32 10)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %37

54:                                               ; preds = %48, %37
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %61 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* @ATSE_FLAGS_LINK, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %68 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  ret i32 0
}

declare dso_local i32 @ATSE_LOCK_ASSERT(%struct.atse_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_READ_4(%struct.atse_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.atse_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
