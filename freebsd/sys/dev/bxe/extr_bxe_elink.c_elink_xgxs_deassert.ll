; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_xgxs_deassert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_xgxs_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32*, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"elink_xgxs_deassert\0A\00", align 1
@ELINK_XGXS_RESET_BITS = common dso_local global i32 0, align 4
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_3_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_3_SET = common dso_local global i64 0, align 8
@ELINK_INT_PHY = common dso_local global i64 0, align 8
@ELINK_PHY_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*)* @elink_xgxs_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_xgxs_deassert(%struct.elink_params* %0) #0 {
  %2 = alloca %struct.elink_params*, align 8
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %2, align 8
  %6 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %7 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %6, i32 0, i32 2
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  store %struct.bxe_softc* %8, %struct.bxe_softc** %3, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %10 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @ELINK_XGXS_RESET_BITS, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 %15, 16
  %17 = shl i32 %14, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %19 = load i64, i64* @GRCBASE_MISC, align 8
  %20 = load i64, i64* @MISC_REGISTERS_RESET_REG_3_CLEAR, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @REG_WR(%struct.bxe_softc* %18, i64 %21, i32 %22)
  %24 = call i32 @DELAY(i32 500)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = load i64, i64* @GRCBASE_MISC, align 8
  %27 = load i64, i64* @MISC_REGISTERS_RESET_REG_3_SET, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @REG_WR(%struct.bxe_softc* %25, i64 %28, i32 %29)
  %31 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %32 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @ELINK_INT_PHY, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %37 = load i32, i32* @ELINK_PHY_INIT, align 4
  %38 = call i32 @elink_xgxs_specific_func(i32* %35, %struct.elink_params* %36, i32 %37)
  ret void
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @elink_xgxs_specific_func(i32*, %struct.elink_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
