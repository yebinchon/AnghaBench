; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_mii_bitbang_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_mii_bitbang_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_softc = type { i32 }

@BSR = common dso_local global i32 0, align 4
@BSR_BANK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%s: smc_mii_bitbang_write called with bank %d (!= 3)\00", align 1
@MGMT = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @smc_mii_bitbang_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_mii_bitbang_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.smc_softc* @device_get_softc(i32 %6)
  store %struct.smc_softc* %7, %struct.smc_softc** %5, align 8
  %8 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %9 = call i32 @SMC_ASSERT_LOCKED(%struct.smc_softc* %8)
  %10 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %11 = load i32, i32* @BSR, align 4
  %12 = call i32 @smc_read_2(%struct.smc_softc* %10, i32 %11)
  %13 = load i32, i32* @BSR_BANK_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 3
  %16 = zext i1 %15 to i32
  %17 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %18 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_get_nameunit(i32 %19)
  %21 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %22 = load i32, i32* @BSR, align 4
  %23 = call i32 @smc_read_2(%struct.smc_softc* %21, i32 %22)
  %24 = load i32, i32* @BSR_BANK_MASK, align 4
  %25 = and i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %16, i8* %27)
  %29 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %30 = load i32, i32* @MGMT, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @smc_write_2(%struct.smc_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.smc_softc*, %struct.smc_softc** %5, align 8
  %34 = load i32, i32* @MGMT, align 4
  %35 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %36 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @smc_barrier(%struct.smc_softc* %33, i32 %34, i32 2, i32 %37)
  ret void
}

declare dso_local %struct.smc_softc* @device_get_softc(i32) #1

declare dso_local i32 @SMC_ASSERT_LOCKED(%struct.smc_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @smc_read_2(%struct.smc_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @smc_write_2(%struct.smc_softc*, i32, i32) #1

declare dso_local i32 @smc_barrier(%struct.smc_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
