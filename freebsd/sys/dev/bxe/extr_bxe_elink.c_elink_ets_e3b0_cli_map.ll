; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ets_e3b0_cli_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ets_e3b0_cli_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_ets_params = type { i32 }

@NIG_REG_P1_TX_ARB_CLIENT_IS_STRICT = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT = common dso_local global i32 0, align 4
@PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P1 = common dso_local global i32 0, align 4
@PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P0 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CLIENT_IS_SUBJECT2WFQ = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ = common dso_local global i32 0, align 4
@PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P1 = common dso_local global i32 0, align 4
@PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P0 = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_ets_params*, i32, i32)* @elink_ets_e3b0_cli_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_ets_e3b0_cli_map(%struct.elink_params* %0, %struct.elink_ets_params* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_ets_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bxe_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %5, align 8
  store %struct.elink_ets_params* %1, %struct.elink_ets_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 1
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  store %struct.bxe_softc* %17, %struct.bxe_softc** %9, align 8
  %18 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %19 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 3
  %23 = or i32 7, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 3
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @NIG_REG_P1_TX_ARB_CLIENT_IS_STRICT, align 4
  br label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @REG_WR(%struct.bxe_softc* %28, i32 %36, i32 %37)
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P1, align 4
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P0, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @REG_WR(%struct.bxe_softc* %39, i32 %47, i32 %48)
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @NIG_REG_P1_TX_ARB_CLIENT_IS_SUBJECT2WFQ, align 4
  br label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @REG_WR(%struct.bxe_softc* %50, i32 %58, i32 %59)
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P1, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P0, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @REG_WR(%struct.bxe_softc* %61, i32 %69, i32 %70)
  %72 = load i32, i32* @ELINK_STATUS_OK, align 4
  ret i32 %72
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
