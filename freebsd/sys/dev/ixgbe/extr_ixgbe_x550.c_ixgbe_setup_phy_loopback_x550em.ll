; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_phy_loopback_x550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_phy_loopback_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_10G = common dso_local global i32 0, align 4
@IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_32B = common dso_local global i32 0, align 4
@IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_KRPCS = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_DFX_BURNIN_TX_RX_KR_LB_MASK = common dso_local global i32 0, align 4
@IXGBE_KRM_RX_TRN_LINKUP_CTRL_PROTOCOL_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_phy_loopback_x550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %9, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = bitcast %struct.ixgbe_hw* %11 to %struct.ixgbe_hw.0*
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %16)
  %18 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %19 = call i64 %10(%struct.ixgbe_hw.0* %12, i32 %17, i32 %18, i32* %5)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @IXGBE_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  store i64 %24, i64* %2, align 8
  br label %188

25:                                               ; preds = %1
  %26 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_10G, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %40, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = bitcast %struct.ixgbe_hw* %42 to %struct.ixgbe_hw.1*
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @IXGBE_KRM_LINK_CTRL_1(i32 %47)
  %49 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 %41(%struct.ixgbe_hw.1* %43, i32 %48, i32 %49, i32 %50)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @IXGBE_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %25
  %56 = load i64, i64* %4, align 8
  store i64 %56, i64* %2, align 8
  br label %188

57:                                               ; preds = %25
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %61, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = bitcast %struct.ixgbe_hw* %63 to %struct.ixgbe_hw.0*
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @IXGBE_KRM_PORT_CAR_GEN_CTRL(i32 %68)
  %70 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %71 = call i64 %62(%struct.ixgbe_hw.0* %64, i32 %69, i32 %70, i32* %5)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @IXGBE_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %57
  %76 = load i64, i64* %4, align 8
  store i64 %76, i64* %2, align 8
  br label %188

77:                                               ; preds = %57
  %78 = load i32, i32* @IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_32B, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_KRPCS, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %87, align 8
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = bitcast %struct.ixgbe_hw* %89 to %struct.ixgbe_hw.1*
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @IXGBE_KRM_PORT_CAR_GEN_CTRL(i32 %94)
  %96 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i64 %88(%struct.ixgbe_hw.1* %90, i32 %95, i32 %96, i32 %97)
  store i64 %98, i64* %4, align 8
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @IXGBE_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %77
  %103 = load i64, i64* %4, align 8
  store i64 %103, i64* %2, align 8
  br label %188

104:                                              ; preds = %77
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %108, align 8
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %111 = bitcast %struct.ixgbe_hw* %110 to %struct.ixgbe_hw.0*
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @IXGBE_KRM_PMD_DFX_BURNIN(i32 %115)
  %117 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %118 = call i64 %109(%struct.ixgbe_hw.0* %111, i32 %116, i32 %117, i32* %5)
  store i64 %118, i64* %4, align 8
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* @IXGBE_SUCCESS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %104
  %123 = load i64, i64* %4, align 8
  store i64 %123, i64* %2, align 8
  br label %188

124:                                              ; preds = %104
  %125 = load i32, i32* @IXGBE_KRM_PMD_DFX_BURNIN_TX_RX_KR_LB_MASK, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %129 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %131, align 8
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %134 = bitcast %struct.ixgbe_hw* %133 to %struct.ixgbe_hw.1*
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %136 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @IXGBE_KRM_PMD_DFX_BURNIN(i32 %138)
  %140 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i64 %132(%struct.ixgbe_hw.1* %134, i32 %139, i32 %140, i32 %141)
  store i64 %142, i64* %4, align 8
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* @IXGBE_SUCCESS, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %124
  %147 = load i64, i64* %4, align 8
  store i64 %147, i64* %2, align 8
  br label %188

148:                                              ; preds = %124
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %150 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %152, align 8
  %154 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %155 = bitcast %struct.ixgbe_hw* %154 to %struct.ixgbe_hw.0*
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %157 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @IXGBE_KRM_RX_TRN_LINKUP_CTRL(i32 %159)
  %161 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %162 = call i64 %153(%struct.ixgbe_hw.0* %155, i32 %160, i32 %161, i32* %5)
  store i64 %162, i64* %4, align 8
  %163 = load i64, i64* %4, align 8
  %164 = load i64, i64* @IXGBE_SUCCESS, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %148
  %167 = load i64, i64* %4, align 8
  store i64 %167, i64* %2, align 8
  br label %188

168:                                              ; preds = %148
  %169 = load i32, i32* @IXGBE_KRM_RX_TRN_LINKUP_CTRL_PROTOCOL_BYPASS, align 4
  %170 = load i32, i32* %5, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %5, align 4
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %173 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %175, align 8
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %178 = bitcast %struct.ixgbe_hw* %177 to %struct.ixgbe_hw.1*
  %179 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %180 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @IXGBE_KRM_RX_TRN_LINKUP_CTRL(i32 %182)
  %184 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i64 %176(%struct.ixgbe_hw.1* %178, i32 %183, i32 %184, i32 %185)
  store i64 %186, i64* %4, align 8
  %187 = load i64, i64* %4, align 8
  store i64 %187, i64* %2, align 8
  br label %188

188:                                              ; preds = %168, %166, %146, %122, %102, %75, %55, %23
  %189 = load i64, i64* %2, align 8
  ret i64 %189
}

declare dso_local i32 @IXGBE_KRM_LINK_CTRL_1(i32) #1

declare dso_local i32 @IXGBE_KRM_PORT_CAR_GEN_CTRL(i32) #1

declare dso_local i32 @IXGBE_KRM_PMD_DFX_BURNIN(i32) #1

declare dso_local i32 @IXGBE_KRM_RX_TRN_LINKUP_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
