; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32, i32 }
%struct.mii_data = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"running init ...\0A\00", align 1
@MGB_RFE_CTL = common dso_local global i32 0, align 4
@MGB_RFE_ALLOW_PERFECT_FILTER = common dso_local global i32 0, align 4
@MGB_RFE_ALLOW_BROADCAST = common dso_local global i32 0, align 4
@MGB_RFE_ALLOW_UNICAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mii_mediachg returned: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mgb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgb_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgb_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mgb_softc* @iflib_get_softc(i32 %6)
  store %struct.mgb_softc* %7, %struct.mgb_softc** %3, align 8
  %8 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mii_data* @device_get_softc(i32 %10)
  store %struct.mii_data* %11, %struct.mii_data** %4, align 8
  %12 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %17 = call i32 @mgb_dma_init(%struct.mgb_softc* %16)
  %18 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %19 = load i32, i32* @MGB_RFE_CTL, align 4
  %20 = load i32, i32* @MGB_RFE_ALLOW_PERFECT_FILTER, align 4
  %21 = call i32 @CSR_CLEAR_REG(%struct.mgb_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %23 = load i32, i32* @MGB_RFE_CTL, align 4
  %24 = load i32, i32* @MGB_RFE_ALLOW_BROADCAST, align 4
  %25 = load i32, i32* @MGB_RFE_ALLOW_UNICAST, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MGB_RFE_ALLOW_UNICAST, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @CSR_UPDATE_REG(%struct.mgb_softc* %22, i32 %23, i32 %28)
  %30 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %31 = call i32 @mii_mediachg(%struct.mii_data* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @KASSERT(i32 %35, i8* %38)
  ret void
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mgb_dma_init(%struct.mgb_softc*) #1

declare dso_local i32 @CSR_CLEAR_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @CSR_UPDATE_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
