; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_bmac1_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_bmac1_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32*, i64, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@NIG_REG_INGRESS_BMAC1_MEM = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_BMAC0_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Enabling BigMAC1\0A\00", align 1
@BIGMAC_REGISTER_BMAC_XGXS_CONTROL = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_TX_SOURCE_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"enable bmac loopback\0A\00", align 1
@BIGMAC_REGISTER_BMAC_CONTROL = common dso_local global i32 0, align 4
@ELINK_ETH_MAX_JUMBO_PACKET_SIZE = common dso_local global i32 0, align 4
@ELINK_ETH_OVREHEAD = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_RX_MAX_SIZE = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_TX_MAX_SIZE = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_CNT_MAX_SIZE = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_RX_LLFC_MSG_FLDS = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_TX_PAUSE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*, i64)* @elink_bmac1_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_bmac1_enable(%struct.elink_params* %0, %struct.elink_vars* %1, i64 %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %13 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %12, i32 0, i32 2
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %13, align 8
  store %struct.bxe_softc* %14, %struct.bxe_softc** %7, align 8
  %15 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @NIG_REG_INGRESS_BMAC1_MEM, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @NIG_REG_INGRESS_BMAC0_MEM, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %9, align 4
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %27 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 60, i32* %28, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @BIGMAC_REGISTER_BMAC_XGXS_CONTROL, align 4
  %33 = add nsw i32 %31, %32
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %35 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %30, i32 %33, i32* %34, i32 2)
  %36 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %37 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 24
  %42 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %43 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = or i32 %41, %47
  %49 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %50 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %48, %54
  %56 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %57 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %55, %60
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %64 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %70 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %68, %73
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @BIGMAC_REGISTER_TX_SOURCE_ADDR, align 4
  %79 = add nsw i32 %77, %78
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %81 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %76, i32 %79, i32* %80, i32 2)
  store i32 3, i32* %11, align 4
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %24
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, 4
  store i32 %86, i32* %11, align 4
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %88 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %24
  %90 = load i32, i32* %11, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @BIGMAC_REGISTER_BMAC_CONTROL, align 4
  %96 = add nsw i32 %94, %95
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %98 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %93, i32 %96, i32* %97, i32 2)
  %99 = load i32, i32* @ELINK_ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %100 = load i32, i32* @ELINK_ETH_OVREHEAD, align 4
  %101 = add nsw i32 %99, %100
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %103, align 4
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @BIGMAC_REGISTER_RX_MAX_SIZE, align 4
  %107 = add nsw i32 %105, %106
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %109 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %104, i32 %107, i32* %108, i32 2)
  %110 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %111 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %112 = call i32 @elink_update_pfc_bmac1(%struct.elink_params* %110, %struct.elink_vars* %111)
  %113 = load i32, i32* @ELINK_ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %114 = load i32, i32* @ELINK_ETH_OVREHEAD, align 4
  %115 = add nsw i32 %113, %114
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %117, align 4
  %118 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @BIGMAC_REGISTER_TX_MAX_SIZE, align 4
  %121 = add nsw i32 %119, %120
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %123 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %118, i32 %121, i32* %122, i32 2)
  %124 = load i32, i32* @ELINK_ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %125 = load i32, i32* @ELINK_ETH_OVREHEAD, align 4
  %126 = add nsw i32 %124, %125
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %128, align 4
  %129 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @BIGMAC_REGISTER_CNT_MAX_SIZE, align 4
  %132 = add nsw i32 %130, %131
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %134 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %129, i32 %132, i32* %133, i32 2)
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 16777728, i32* %135, align 4
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %136, align 4
  %137 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @BIGMAC_REGISTER_RX_LLFC_MSG_FLDS, align 4
  %140 = add nsw i32 %138, %139
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %142 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %137, i32 %140, i32* %141, i32 2)
  %143 = load i32, i32* @ELINK_STATUS_OK, align 4
  ret i32 %143
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @REG_WR_DMAE(%struct.bxe_softc*, i32, i32*, i32) #1

declare dso_local i32 @elink_update_pfc_bmac1(%struct.elink_params*, %struct.elink_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
