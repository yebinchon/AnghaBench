; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_lfa_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_lfa_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32, i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i64, i64 }

@ELINK_PHY_INITIALIZED = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@ELINK_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elink_lfa_reset(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  %7 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %8 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %7, i32 0, i32 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  store %struct.bxe_softc* %9, %struct.bxe_softc** %6, align 8
  %10 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %11 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %13 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @ELINK_PHY_INITIALIZED, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %17 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %21 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %26 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %27 = call i32 @elink_link_reset(%struct.elink_params* %25, %struct.elink_vars* %26, i32 1)
  store i32 %27, i32* %3, align 4
  br label %95

28:                                               ; preds = %2
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %30 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %31 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %32 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %30, %35
  %37 = call i32 @REG_WR(%struct.bxe_softc* %29, i64 %36, i32 1)
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %39 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %28
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %43 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %44 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %47 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @elink_set_bmac_rx(%struct.bxe_softc* %42, i32 %45, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %41, %28
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %52 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %56 = call i32 @elink_set_xmac_rxtx(%struct.elink_params* %55, i32 0)
  %57 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %58 = call i32 @elink_set_umac_rxtx(%struct.elink_params* %57, i32 0)
  br label %59

59:                                               ; preds = %54, %50
  %60 = call i32 @DELAY(i32 10000)
  %61 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %62 = call i32 @elink_set_rx_filter(%struct.elink_params* %61, i32 0)
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %64 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %59
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %68 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %69 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %72 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @elink_set_bmac_rx(%struct.bxe_softc* %67, i32 %70, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %66, %59
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %77 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %81 = call i32 @elink_set_xmac_rxtx(%struct.elink_params* %80, i32 1)
  %82 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %83 = call i32 @elink_set_umac_rxtx(%struct.elink_params* %82, i32 1)
  br label %84

84:                                               ; preds = %79, %75
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %86 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %87 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %88 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %86, %91
  %93 = call i32 @REG_WR(%struct.bxe_softc* %85, i64 %92, i32 0)
  %94 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %84, %24
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @elink_link_reset(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @elink_set_bmac_rx(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @elink_set_xmac_rxtx(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_set_umac_rxtx(%struct.elink_params*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @elink_set_rx_filter(%struct.elink_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
