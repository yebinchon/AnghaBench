; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_check_half_open_conn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_check_half_open_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@PHY_PHYSICAL_LINK_FLAG = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_EMAC0_PORT = common dso_local global i64 0, align 8
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@MISC_REG_RESET_REG_2 = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@GRCBASE_XMAC1 = common dso_local global i64 0, align 8
@GRCBASE_XMAC0 = common dso_local global i64 0, align 8
@XMAC_REG_CLEAR_RX_LSS_STATUS = common dso_local global i64 0, align 8
@XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS = common dso_local global i32 0, align 4
@XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS = common dso_local global i32 0, align 4
@XMAC_REG_RX_LSS_STATUS = common dso_local global i64 0, align 8
@PHY_HALF_OPEN_CONN_FLAG = common dso_local global i32 0, align 4
@LINK_STATUS_NONE = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_BMAC1_MEM = common dso_local global i64 0, align 8
@NIG_REG_INGRESS_BMAC0_MEM = common dso_local global i64 0, align 8
@BIGMAC2_REGISTER_RX_LSS_STAT = common dso_local global i64 0, align 8
@BIGMAC_REGISTER_RX_LSS_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*, i32)* @elink_check_half_open_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_check_half_open_conn(%struct.elink_params* %0, %struct.elink_vars* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x i64], align 16
  store %struct.elink_params* %0, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %14 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %13, i32 0, i32 1
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  store %struct.bxe_softc* %15, %struct.bxe_softc** %8, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %17 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PHY_PHYSICAL_LINK_FLAG, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %24 = load i64, i64* @NIG_REG_EGRESS_EMAC0_PORT, align 8
  %25 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %26 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %24, %29
  %31 = call i32 @REG_RD(%struct.bxe_softc* %23, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22, %3
  %34 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %34, i32* %4, align 4
  br label %136

35:                                               ; preds = %22
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %37 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %35
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %41 = load i64, i64* @MISC_REG_RESET_REG_2, align 8
  %42 = call i32 @REG_RD(%struct.bxe_softc* %40, i64 %41)
  %43 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %85

46:                                               ; preds = %39
  %47 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %48 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, i64* @GRCBASE_XMAC1, align 8
  br label %55

53:                                               ; preds = %46
  %54 = load i64, i64* @GRCBASE_XMAC0, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  store i64 %56, i64* %10, align 8
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @XMAC_REG_CLEAR_RX_LSS_STATUS, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @REG_WR(%struct.bxe_softc* %57, i64 %60, i32 0)
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @XMAC_REG_CLEAR_RX_LSS_STATUS, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* @XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS, align 4
  %67 = load i32, i32* @XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @REG_WR(%struct.bxe_softc* %62, i64 %65, i32 %68)
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @XMAC_REG_RX_LSS_STATUS, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @REG_RD(%struct.bxe_softc* %70, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  store i64 1, i64* %9, align 8
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %79 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* @PHY_HALF_OPEN_CONN_FLAG, align 4
  %82 = load i32, i32* @LINK_STATUS_NONE, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @elink_analyze_link_error(%struct.elink_params* %78, %struct.elink_vars* %79, i64 %80, i32 %81, i32 %82, i32 %83)
  br label %134

85:                                               ; preds = %39, %35
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %87 = load i64, i64* @MISC_REG_RESET_REG_2, align 8
  %88 = call i32 @REG_RD(%struct.bxe_softc* %86, i64 %87)
  %89 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %90 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %91 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %89, %92
  %94 = and i32 %88, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %133

96:                                               ; preds = %85
  %97 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %98 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i64, i64* @NIG_REG_INGRESS_BMAC1_MEM, align 8
  br label %105

103:                                              ; preds = %96
  %104 = load i64, i64* @NIG_REG_INGRESS_BMAC0_MEM, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i64 [ %102, %101 ], [ %104, %103 ]
  store i64 %106, i64* %10, align 8
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %108 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i64, i64* @BIGMAC2_REGISTER_RX_LSS_STAT, align 8
  store i64 %111, i64* %11, align 8
  br label %114

112:                                              ; preds = %105
  %113 = load i64, i64* @BIGMAC_REGISTER_RX_LSS_STATUS, align 8
  store i64 %113, i64* %11, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* %11, align 8
  %118 = add nsw i64 %116, %117
  %119 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %120 = call i32 @REG_RD_DMAE(%struct.bxe_softc* %115, i64 %118, i64* %119, i32 2)
  %121 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %122 = load i64, i64* %121, align 16
  %123 = icmp sgt i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %9, align 8
  %126 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %127 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i32, i32* @PHY_HALF_OPEN_CONN_FLAG, align 4
  %130 = load i32, i32* @LINK_STATUS_NONE, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @elink_analyze_link_error(%struct.elink_params* %126, %struct.elink_vars* %127, i64 %128, i32 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %114, %85
  br label %134

134:                                              ; preds = %133, %77
  %135 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %134, %33
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @elink_analyze_link_error(%struct.elink_params*, %struct.elink_vars*, i64, i32, i32, i32) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD_DMAE(%struct.bxe_softc*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
