; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_init_umac_loopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_init_umac_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i32, i32, i32, i32, i32 }

@ELINK_SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_NONE = common dso_local global i32 0, align 4
@ELINK_MAC_TYPE_UMAC = common dso_local global i32 0, align 4
@PHY_XGXS_FLAG = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_vars*)* @elink_init_umac_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_init_umac_loopback(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca %struct.elink_params*, align 8
  %4 = alloca %struct.elink_vars*, align 8
  %5 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %3, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %4, align 8
  %6 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %7 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %6, i32 0, i32 1
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  store %struct.bxe_softc* %8, %struct.bxe_softc** %5, align 8
  %9 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %10 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @ELINK_SPEED_1000, align 4
  %12 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %13 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @DUPLEX_FULL, align 4
  %15 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %16 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @ELINK_FLOW_CTRL_NONE, align 4
  %18 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %19 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @ELINK_MAC_TYPE_UMAC, align 4
  %21 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %22 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @PHY_XGXS_FLAG, align 4
  %24 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %25 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %27 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %28 = call i32 @elink_umac_enable(%struct.elink_params* %26, %struct.elink_vars* %27, i32 1)
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %30 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %31 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %32 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %30, %35
  %37 = call i32 @REG_WR(%struct.bxe_softc* %29, i64 %36, i32 0)
  ret void
}

declare dso_local i32 @elink_umac_enable(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
