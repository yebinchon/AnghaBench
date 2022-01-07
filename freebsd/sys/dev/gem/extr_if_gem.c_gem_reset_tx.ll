; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_reset_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_reset_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i64, i32 }

@GEM_TX_CONFIG = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@GEM_TX_CONFIG_TXDMA_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot disable TX DMA\0A\00", align 1
@GEM_RESET = common dso_local global i32 0, align 4
@GEM_RESET_TX = common dso_local global i32 0, align 4
@GEM_SUN_ERI = common dso_local global i64 0, align 8
@GEM_ERI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@GEM_RESET_CLSZ_SHFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot reset transmitter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gem_softc*)* @gem_reset_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_reset_tx(%struct.gem_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gem_softc*, align 8
  store %struct.gem_softc* %0, %struct.gem_softc** %3, align 8
  %4 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %5 = call i32 @gem_disable_tx(%struct.gem_softc* %4)
  %6 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %7 = load i32, i32* @GEM_TX_CONFIG, align 4
  %8 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %6, i32 %7, i32 0)
  %9 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %10 = load i32, i32* @GEM_TX_CONFIG, align 4
  %11 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %12 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @GEM_BANK1_BARRIER(%struct.gem_softc* %9, i32 %10, i32 4, i32 %13)
  %15 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %16 = load i32, i32* @GEM_TX_CONFIG, align 4
  %17 = load i32, i32* @GEM_TX_CONFIG_TXDMA_EN, align 4
  %18 = call i32 @GEM_BANK1_BITWAIT(%struct.gem_softc* %15, i32 %16, i32 %17, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %22 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %1
  %26 = call i32 @DELAY(i32 5000)
  %27 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %28 = load i32, i32* @GEM_RESET, align 4
  %29 = load i32, i32* @GEM_RESET_TX, align 4
  %30 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %31 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GEM_SUN_ERI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @GEM_ERI_CACHE_LINE_SIZE, align 4
  %37 = load i32, i32* @GEM_RESET_CLSZ_SHFT, align 4
  %38 = shl i32 %36, %37
  br label %40

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 0, %39 ]
  %42 = or i32 %29, %41
  %43 = call i32 @GEM_BANK2_WRITE_4(%struct.gem_softc* %27, i32 %28, i32 %42)
  %44 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %45 = load i32, i32* @GEM_RESET, align 4
  %46 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %47 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @GEM_BANK2_BARRIER(%struct.gem_softc* %44, i32 %45, i32 4, i32 %48)
  %50 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %51 = load i32, i32* @GEM_RESET, align 4
  %52 = load i32, i32* @GEM_RESET_TX, align 4
  %53 = call i32 @GEM_BANK2_BITWAIT(%struct.gem_softc* %50, i32 %51, i32 %52, i32 0)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %40
  %56 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %57 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %61

60:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @gem_disable_tx(%struct.gem_softc*) #1

declare dso_local i32 @GEM_BANK1_WRITE_4(%struct.gem_softc*, i32, i32) #1

declare dso_local i32 @GEM_BANK1_BARRIER(%struct.gem_softc*, i32, i32, i32) #1

declare dso_local i32 @GEM_BANK1_BITWAIT(%struct.gem_softc*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @GEM_BANK2_WRITE_4(%struct.gem_softc*, i32, i32) #1

declare dso_local i32 @GEM_BANK2_BARRIER(%struct.gem_softc*, i32, i32, i32) #1

declare dso_local i32 @GEM_BANK2_BITWAIT(%struct.gem_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
