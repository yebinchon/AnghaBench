; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_ixfi_x550em_x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_ixfi_x550em_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.ixgbe_mac_info }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_mac_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_KRM_RX_TRN_LINKUP_CTRL_CONV_WO_PROTOCOL = common dso_local global i32 0, align 4
@IXGBE_KRM_DSP_TXFFE_STATE_C0_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_DSP_TXFFE_STATE_CP1_CN1_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_DSP_TXFFE_STATE_CO_ADAPT_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_TX_COEFF_CTRL_1_OVRRD_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_TX_COEFF_CTRL_1_CZERO_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_TX_COEFF_CTRL_1_CPLUS1_OVRRD_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_TX_COEFF_CTRL_1_CMINUS1_OVRRD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_setup_ixfi_x550em_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_ixfi_x550em_x(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_mac_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 1
  store %struct.ixgbe_mac_info* %8, %struct.ixgbe_mac_info** %4, align 8
  %9 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %11, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = bitcast %struct.ixgbe_hw* %13 to %struct.ixgbe_hw.0*
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IXGBE_KRM_RX_TRN_LINKUP_CTRL(i32 %18)
  %20 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %21 = call i64 %12(%struct.ixgbe_hw.0* %14, i32 %19, i32 %20, i32* %6)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @IXGBE_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %2, align 8
  br label %199

27:                                               ; preds = %1
  %28 = load i32, i32* @IXGBE_KRM_RX_TRN_LINKUP_CTRL_CONV_WO_PROTOCOL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.1*
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @IXGBE_KRM_RX_TRN_LINKUP_CTRL(i32 %40)
  %42 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 %34(%struct.ixgbe_hw.1* %36, i32 %41, i32 %42, i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @IXGBE_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %2, align 8
  br label %199

50:                                               ; preds = %27
  %51 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %53, align 8
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = bitcast %struct.ixgbe_hw* %55 to %struct.ixgbe_hw.0*
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @IXGBE_KRM_DSP_TXFFE_STATE_4(i32 %60)
  %62 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %63 = call i64 %54(%struct.ixgbe_hw.0* %56, i32 %61, i32 %62, i32* %6)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @IXGBE_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* %2, align 8
  br label %199

69:                                               ; preds = %50
  %70 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_C0_EN, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_CP1_CN1_EN, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_CO_ADAPT_EN, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %83 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %84, align 8
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %87 = bitcast %struct.ixgbe_hw* %86 to %struct.ixgbe_hw.1*
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %89 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @IXGBE_KRM_DSP_TXFFE_STATE_4(i32 %91)
  %93 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i64 %85(%struct.ixgbe_hw.1* %87, i32 %92, i32 %93, i32 %94)
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @IXGBE_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %69
  %100 = load i64, i64* %5, align 8
  store i64 %100, i64* %2, align 8
  br label %199

101:                                              ; preds = %69
  %102 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %103 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %104, align 8
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %107 = bitcast %struct.ixgbe_hw* %106 to %struct.ixgbe_hw.0*
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %109 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @IXGBE_KRM_DSP_TXFFE_STATE_5(i32 %111)
  %113 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %114 = call i64 %105(%struct.ixgbe_hw.0* %107, i32 %112, i32 %113, i32* %6)
  store i64 %114, i64* %5, align 8
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* @IXGBE_SUCCESS, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = load i64, i64* %5, align 8
  store i64 %119, i64* %2, align 8
  br label %199

120:                                              ; preds = %101
  %121 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_C0_EN, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %6, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_CP1_CN1_EN, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* @IXGBE_KRM_DSP_TXFFE_STATE_CO_ADAPT_EN, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %6, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %6, align 4
  %133 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %134 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %135, align 8
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %138 = bitcast %struct.ixgbe_hw* %137 to %struct.ixgbe_hw.1*
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %140 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @IXGBE_KRM_DSP_TXFFE_STATE_5(i32 %142)
  %144 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i64 %136(%struct.ixgbe_hw.1* %138, i32 %143, i32 %144, i32 %145)
  store i64 %146, i64* %5, align 8
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* @IXGBE_SUCCESS, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %120
  %151 = load i64, i64* %5, align 8
  store i64 %151, i64* %2, align 8
  br label %199

152:                                              ; preds = %120
  %153 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %154 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %155, align 8
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %158 = bitcast %struct.ixgbe_hw* %157 to %struct.ixgbe_hw.0*
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %160 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @IXGBE_KRM_TX_COEFF_CTRL_1(i32 %162)
  %164 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %165 = call i64 %156(%struct.ixgbe_hw.0* %158, i32 %163, i32 %164, i32* %6)
  store i64 %165, i64* %5, align 8
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* @IXGBE_SUCCESS, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %152
  %170 = load i64, i64* %5, align 8
  store i64 %170, i64* %2, align 8
  br label %199

171:                                              ; preds = %152
  %172 = load i32, i32* @IXGBE_KRM_TX_COEFF_CTRL_1_OVRRD_EN, align 4
  %173 = load i32, i32* %6, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* @IXGBE_KRM_TX_COEFF_CTRL_1_CZERO_EN, align 4
  %176 = load i32, i32* %6, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* @IXGBE_KRM_TX_COEFF_CTRL_1_CPLUS1_OVRRD_EN, align 4
  %179 = load i32, i32* %6, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* @IXGBE_KRM_TX_COEFF_CTRL_1_CMINUS1_OVRRD_EN, align 4
  %182 = load i32, i32* %6, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %6, align 4
  %184 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %185 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %186, align 8
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %189 = bitcast %struct.ixgbe_hw* %188 to %struct.ixgbe_hw.1*
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %191 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @IXGBE_KRM_TX_COEFF_CTRL_1(i32 %193)
  %195 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i64 %187(%struct.ixgbe_hw.1* %189, i32 %194, i32 %195, i32 %196)
  store i64 %197, i64* %5, align 8
  %198 = load i64, i64* %5, align 8
  store i64 %198, i64* %2, align 8
  br label %199

199:                                              ; preds = %171, %169, %150, %118, %99, %67, %48, %25
  %200 = load i64, i64* %2, align 8
  ret i64 %200
}

declare dso_local i32 @IXGBE_KRM_RX_TRN_LINKUP_CTRL(i32) #1

declare dso_local i32 @IXGBE_KRM_DSP_TXFFE_STATE_4(i32) #1

declare dso_local i32 @IXGBE_KRM_DSP_TXFFE_STATE_5(i32) #1

declare dso_local i32 @IXGBE_KRM_TX_COEFF_CTRL_1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
