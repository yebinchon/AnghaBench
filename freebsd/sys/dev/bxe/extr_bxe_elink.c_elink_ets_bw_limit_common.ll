; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ets_bw_limit_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ets_bw_limit_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"ETS enabled BW limit configuration\0A\00", align 1
@NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0 = common dso_local global i32 0, align 4
@ELINK_ETS_BW_LIMIT_CREDIT_UPPER_BOUND = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1 = common dso_local global i32 0, align 4
@PBF_REG_ETS_ENABLED = common dso_local global i32 0, align 4
@PBF_REG_NUM_STRICT_ARB_SLOTS = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT = common dso_local global i32 0, align 4
@PBF_REG_COS0_UPPER_BOUND = common dso_local global i32 0, align 4
@PBF_REG_COS1_UPPER_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*)* @elink_ets_bw_limit_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_ets_bw_limit_common(%struct.elink_params* %0) #0 {
  %2 = alloca %struct.elink_params*, align 8
  %3 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %2, align 8
  %4 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %5 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %4, i32 0, i32 0
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  store %struct.bxe_softc* %6, %struct.bxe_softc** %3, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %8 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %10 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ, align 4
  %11 = call i32 @REG_WR(%struct.bxe_softc* %9, i32 %10, i32 24)
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP, align 4
  %14 = call i32 @REG_WR(%struct.bxe_softc* %12, i32 %13, i32 4378)
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0, align 4
  %17 = load i32, i32* @ELINK_ETS_BW_LIMIT_CREDIT_UPPER_BOUND, align 4
  %18 = call i32 @REG_WR(%struct.bxe_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %20 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1, align 4
  %21 = load i32, i32* @ELINK_ETS_BW_LIMIT_CREDIT_UPPER_BOUND, align 4
  %22 = call i32 @REG_WR(%struct.bxe_softc* %19, i32 %20, i32 %21)
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %24 = load i32, i32* @PBF_REG_ETS_ENABLED, align 4
  %25 = call i32 @REG_WR(%struct.bxe_softc* %23, i32 %24, i32 1)
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %27 = load i32, i32* @PBF_REG_NUM_STRICT_ARB_SLOTS, align 4
  %28 = call i32 @REG_WR(%struct.bxe_softc* %26, i32 %27, i32 0)
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT, align 4
  %31 = call i32 @REG_WR(%struct.bxe_softc* %29, i32 %30, i32 7)
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %33 = load i32, i32* @PBF_REG_COS0_UPPER_BOUND, align 4
  %34 = load i32, i32* @ELINK_ETS_BW_LIMIT_CREDIT_UPPER_BOUND, align 4
  %35 = call i32 @REG_WR(%struct.bxe_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %37 = load i32, i32* @PBF_REG_COS1_UPPER_BOUND, align 4
  %38 = load i32, i32* @ELINK_ETS_BW_LIMIT_CREDIT_UPPER_BOUND, align 4
  %39 = call i32 @REG_WR(%struct.bxe_softc* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
