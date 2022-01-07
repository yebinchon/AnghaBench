; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_update_pfc_xmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_update_pfc_xmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32*, i64, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@GRCBASE_XMAC1 = common dso_local global i32 0, align 4
@GRCBASE_XMAC0 = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@XMAC_PAUSE_CTRL_REG_RX_PAUSE_EN = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@XMAC_PAUSE_CTRL_REG_TX_PAUSE_EN = common dso_local global i32 0, align 4
@XMAC_PFC_CTRL_HI_REG_PFC_REFRESH_EN = common dso_local global i32 0, align 4
@XMAC_PFC_CTRL_HI_REG_PFC_STATS_EN = common dso_local global i32 0, align 4
@XMAC_PFC_CTRL_HI_REG_RX_PFC_EN = common dso_local global i32 0, align 4
@XMAC_PFC_CTRL_HI_REG_TX_PFC_EN = common dso_local global i32 0, align 4
@XMAC_PFC_CTRL_HI_REG_FORCE_PFC_XON = common dso_local global i32 0, align 4
@XMAC_REG_PAUSE_CTRL = common dso_local global i32 0, align 4
@XMAC_REG_PFC_CTRL = common dso_local global i32 0, align 4
@XMAC_REG_PFC_CTRL_HI = common dso_local global i32 0, align 4
@XMAC_REG_CTRL_SA_LO = common dso_local global i32 0, align 4
@XMAC_REG_CTRL_SA_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_vars*, i32)* @elink_update_pfc_xmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_update_pfc_xmac(%struct.elink_params* %0, %struct.elink_vars* %1, i32 %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %13 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %12, i32 0, i32 3
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %13, align 8
  store %struct.bxe_softc* %14, %struct.bxe_softc** %7, align 8
  %15 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @GRCBASE_XMAC1, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @GRCBASE_XMAC0, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  store i32 98304, i32* %9, align 4
  store i32 -32768, i32* %10, align 4
  store i32 2, i32* %11, align 4
  %25 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %26 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %23
  %32 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %33 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ELINK_FLOW_CTRL_RX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @XMAC_PAUSE_CTRL_REG_RX_PAUSE_EN, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %44 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ELINK_FLOW_CTRL_TX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @XMAC_PAUSE_CTRL_REG_TX_PAUSE_EN, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %42
  br label %88

54:                                               ; preds = %23
  %55 = load i32, i32* @XMAC_PFC_CTRL_HI_REG_PFC_REFRESH_EN, align 4
  %56 = load i32, i32* @XMAC_PFC_CTRL_HI_REG_PFC_STATS_EN, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @XMAC_PFC_CTRL_HI_REG_RX_PFC_EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @XMAC_PFC_CTRL_HI_REG_TX_PFC_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @XMAC_PFC_CTRL_HI_REG_FORCE_PFC_XON, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @XMAC_REG_PAUSE_CTRL, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @REG_WR(%struct.bxe_softc* %66, i32 %69, i32 %70)
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @XMAC_REG_PFC_CTRL, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @REG_WR(%struct.bxe_softc* %72, i32 %75, i32 %76)
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @REG_WR(%struct.bxe_softc* %78, i32 %81, i32 %82)
  %84 = load i32, i32* @XMAC_PFC_CTRL_HI_REG_FORCE_PFC_XON, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %54, %53
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @XMAC_REG_PAUSE_CTRL, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @REG_WR(%struct.bxe_softc* %89, i32 %92, i32 %93)
  %95 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @XMAC_REG_PFC_CTRL, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @REG_WR(%struct.bxe_softc* %95, i32 %98, i32 %99)
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @REG_WR(%struct.bxe_softc* %101, i32 %104, i32 %105)
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @XMAC_REG_CTRL_SA_LO, align 4
  %110 = add nsw i32 %108, %109
  %111 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %112 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 24
  %117 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %118 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 16
  %123 = or i32 %116, %122
  %124 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %125 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = or i32 %123, %129
  %131 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %132 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 5
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %130, %135
  %137 = call i32 @REG_WR(%struct.bxe_softc* %107, i32 %110, i32 %136)
  %138 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @XMAC_REG_CTRL_SA_HI, align 4
  %141 = add nsw i32 %139, %140
  %142 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %143 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 8
  %148 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %149 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %147, %152
  %154 = call i32 @REG_WR(%struct.bxe_softc* %138, i32 %141, i32 %153)
  %155 = call i32 @DELAY(i32 30)
  ret void
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
