; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_mii_bitbang_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_mii_bitbang_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_softc = type { i32 }

@BSR = common dso_local global i32 0, align 4
@BSR_BANK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: smc_mii_bitbang_read called with bank %d (!= 3)\00", align 1
@MGMT = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smc_mii_bitbang_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_mii_bitbang_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smc_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.smc_softc* @device_get_softc(i32 %5)
  store %struct.smc_softc* %6, %struct.smc_softc** %3, align 8
  %7 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %8 = call i32 @SMC_ASSERT_LOCKED(%struct.smc_softc* %7)
  %9 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %10 = load i32, i32* @BSR, align 4
  %11 = call i32 @smc_read_2(%struct.smc_softc* %9, i32 %10)
  %12 = load i32, i32* @BSR_BANK_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 3
  %15 = zext i1 %14 to i32
  %16 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_get_nameunit(i32 %18)
  %20 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %21 = load i32, i32* @BSR, align 4
  %22 = call i32 @smc_read_2(%struct.smc_softc* %20, i32 %21)
  %23 = load i32, i32* @BSR_BANK_MASK, align 4
  %24 = and i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %15, i8* %26)
  %28 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %29 = load i32, i32* @MGMT, align 4
  %30 = call i32 @smc_read_2(%struct.smc_softc* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %32 = load i32, i32* @MGMT, align 4
  %33 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %34 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @smc_barrier(%struct.smc_softc* %31, i32 %32, i32 2, i32 %35)
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.smc_softc* @device_get_softc(i32) #1

declare dso_local i32 @SMC_ASSERT_LOCKED(%struct.smc_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @smc_read_2(%struct.smc_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @smc_barrier(%struct.smc_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
