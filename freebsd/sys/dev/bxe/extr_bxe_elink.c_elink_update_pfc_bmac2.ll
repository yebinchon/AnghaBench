; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_update_pfc_bmac2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_update_pfc_bmac2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i64, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@NIG_REG_INGRESS_BMAC1_MEM = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_BMAC0_MEM = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_RX_CONTROL = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_TX_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PFC is enabled\0A\00", align 1
@BIGMAC2_REGISTER_PFC_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"PFC is disabled\0A\00", align 1
@BIGMAC2_REGISTER_TX_PAUSE_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"enable bmac loopback\0A\00", align 1
@BIGMAC2_REGISTER_BMAC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_vars*, i64)* @elink_update_pfc_bmac2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_update_pfc_bmac2(%struct.elink_params* %0, %struct.elink_vars* %1, i64 %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 2
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  store %struct.bxe_softc* %13, %struct.bxe_softc** %8, align 8
  %14 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @NIG_REG_INGRESS_BMAC1_MEM, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @NIG_REG_INGRESS_BMAC0_MEM, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %9, align 4
  store i32 20, i32* %10, align 4
  %24 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %25 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %22
  %31 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %32 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ELINK_FLOW_CTRL_RX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, 32
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %30, %22
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @BIGMAC2_REGISTER_RX_CONTROL, align 4
  %47 = add nsw i32 %45, %46
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %49 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %44, i32 %47, i32* %48, i32 2)
  %50 = call i32 @DELAY(i32 30)
  store i32 192, i32* %10, align 4
  %51 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %52 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %40
  %58 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %59 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ELINK_FLOW_CTRL_TX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, 8388608
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %57, %40
  %68 = load i32, i32* %10, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @BIGMAC2_REGISTER_TX_CONTROL, align 4
  %74 = add nsw i32 %72, %73
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %76 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %71, i32 %74, i32* %75, i32 2)
  %77 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %78 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %67
  %84 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %85 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, 2
  store i32 %92, i32* %90, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, 4
  store i32 %95, i32* %93, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, 8
  store i32 %98, i32* %96, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, 32
  store i32 %101, i32* %99, align 4
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %102, align 4
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @BIGMAC2_REGISTER_PFC_CONTROL, align 4
  %106 = add nsw i32 %104, %105
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %108 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %103, i32 %106, i32* %107, i32 2)
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, -5
  store i32 %111, i32* %109, align 4
  br label %117

112:                                              ; preds = %67
  %113 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %114 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 8, i32* %115, align 4
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %83
  %118 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @BIGMAC2_REGISTER_PFC_CONTROL, align 4
  %121 = add nsw i32 %119, %120
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %123 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %118, i32 %121, i32* %122, i32 2)
  store i32 32768, i32* %10, align 4
  %124 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %125 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %117
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, 65536
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %130, %117
  %134 = load i32, i32* %10, align 4
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %136, align 4
  %137 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @BIGMAC2_REGISTER_TX_PAUSE_CONTROL, align 4
  %140 = add nsw i32 %138, %139
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %142 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %137, i32 %140, i32* %141, i32 2)
  store i32 3, i32* %10, align 4
  %143 = load i64, i64* %6, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %133
  %146 = load i32, i32* %10, align 4
  %147 = or i32 %146, 4
  store i32 %147, i32* %10, align 4
  %148 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %149 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %150

150:                                              ; preds = %145, %133
  %151 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %152 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %158, 96
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %157, %150
  %161 = load i32, i32* %10, align 4
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %161, i32* %162, align 4
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %163, align 4
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @BIGMAC2_REGISTER_BMAC_CONTROL, align 4
  %167 = add nsw i32 %165, %166
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %169 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %164, i32 %167, i32* %168, i32 2)
  ret void
}

declare dso_local i32 @REG_WR_DMAE(%struct.bxe_softc*, i32, i32*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
