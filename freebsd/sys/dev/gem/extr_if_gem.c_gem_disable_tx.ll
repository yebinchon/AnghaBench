; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_disable_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_disable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i32 }

@GEM_MAC_TX_CONFIG = common dso_local global i32 0, align 4
@GEM_MAC_TX_ENABLE = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot disable TX MAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gem_softc*)* @gem_disable_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_disable_tx(%struct.gem_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gem_softc*, align 8
  store %struct.gem_softc* %0, %struct.gem_softc** %3, align 8
  %4 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %5 = load i32, i32* @GEM_MAC_TX_CONFIG, align 4
  %6 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %7 = load i32, i32* @GEM_MAC_TX_CONFIG, align 4
  %8 = call i32 @GEM_BANK1_READ_4(%struct.gem_softc* %6, i32 %7)
  %9 = load i32, i32* @GEM_MAC_TX_ENABLE, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %4, i32 %5, i32 %11)
  %13 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %14 = load i32, i32* @GEM_MAC_TX_CONFIG, align 4
  %15 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %16 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @GEM_BANK1_BARRIER(%struct.gem_softc* %13, i32 %14, i32 4, i32 %17)
  %19 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %20 = load i32, i32* @GEM_MAC_TX_CONFIG, align 4
  %21 = load i32, i32* @GEM_MAC_TX_ENABLE, align 4
  %22 = call i64 @GEM_BANK1_BITWAIT(%struct.gem_softc* %19, i32 %20, i32 %21, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %27 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %24
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @GEM_BANK1_WRITE_4(%struct.gem_softc*, i32, i32) #1

declare dso_local i32 @GEM_BANK1_READ_4(%struct.gem_softc*, i32) #1

declare dso_local i32 @GEM_BANK1_BARRIER(%struct.gem_softc*, i32, i32, i32) #1

declare dso_local i64 @GEM_BANK1_BITWAIT(%struct.gem_softc*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
