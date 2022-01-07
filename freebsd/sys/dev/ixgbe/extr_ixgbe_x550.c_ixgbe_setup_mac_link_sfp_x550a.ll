; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_mac_link_sfp_x550a.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_mac_link_sfp_x550a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.3*, i32, i32, i32)* }
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque

@FALSE = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_DEV_ID_X550EM_A_SFP_N = common dso_local global i64 0, align 8
@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_DA = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invalid NW_MNG_IF_SEL.MDIO_PHY_ADD value\0A\00", align 1
@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@IXGBE_CS4227_EFUSE_PDF_SKU = common dso_local global i32 0, align 4
@IXGBE_MDIO_ZERO_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_CS4223_SKU_ID = common dso_local global i32 0, align 4
@IXGBE_CS4227_LINE_SPARE24_LSB = common dso_local global i32 0, align 4
@IXGBE_CS4227_EDC_MODE_CX1 = common dso_local global i32 0, align 4
@IXGBE_CS4227_EDC_MODE_SR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_mac_link_sfp_x550a(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @UNREFERENCED_1PARAMETER(i32 %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = call i64 @ixgbe_supported_sfp_modules_X550em(%struct.ixgbe_hw* %17, i32* %10)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %23, i64* %4, align 8
  br label %208

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @IXGBE_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %4, align 8
  br label %208

30:                                               ; preds = %24
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IXGBE_DEV_ID_X550EM_A_SFP_N, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %90

36:                                               ; preds = %30
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %40, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = bitcast %struct.ixgbe_hw* %42 to %struct.ixgbe_hw.2*
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %47)
  %49 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %50 = call i64 %41(%struct.ixgbe_hw.2* %43, i32 %48, i32 %49, i32* %12)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @IXGBE_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %4, align 8
  br label %208

56:                                               ; preds = %36
  %57 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_DA, align 4
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_SR, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64 (%struct.ixgbe_hw.3*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.3*, i32, i32, i32)** %70, align 8
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %73 = bitcast %struct.ixgbe_hw* %72 to %struct.ixgbe_hw.3*
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %77)
  %79 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i64 %71(%struct.ixgbe_hw.3* %73, i32 %78, i32 %79, i32 %80)
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @IXGBE_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %66
  %86 = load i64, i64* %8, align 8
  store i64 %86, i64* %4, align 8
  br label %208

87:                                               ; preds = %66
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %89 = call i64 @ixgbe_setup_sfi_x550a(%struct.ixgbe_hw* %88, i32* %6)
  store i64 %89, i64* %8, align 8
  br label %206

90:                                               ; preds = %30
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ixgbe_setup_kr_speed_x550em(%struct.ixgbe_hw* %91, i32 %92)
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %95 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %90
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %101 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 65535
  br i1 %104, label %105, label %108

105:                                              ; preds = %99, %90
  %106 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %107 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %107, i64* %4, align 8
  br label %208

108:                                              ; preds = %99
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %112, align 8
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %115 = bitcast %struct.ixgbe_hw* %114 to %struct.ixgbe_hw.0*
  %116 = load i32, i32* @IXGBE_CS4227_EFUSE_PDF_SKU, align 4
  %117 = load i32, i32* @IXGBE_MDIO_ZERO_DEV_TYPE, align 4
  %118 = call i64 %113(%struct.ixgbe_hw.0* %115, i32 %116, i32 %117, i32* %9)
  store i64 %118, i64* %8, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* @IXGBE_SUCCESS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %108
  %123 = load i64, i64* %8, align 8
  store i64 %123, i64* %4, align 8
  br label %208

124:                                              ; preds = %108
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @IXGBE_CS4223_SKU_ID, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %130 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %134 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 1
  %138 = add nsw i32 %132, %137
  %139 = shl i32 %138, 12
  store i32 %139, i32* %13, align 4
  br label %146

140:                                              ; preds = %124
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %142 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = shl i32 %144, 12
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %140, %128
  %147 = load i32, i32* @IXGBE_CS4227_LINE_SPARE24_LSB, align 4
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %11, align 4
  %150 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %151 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %153, align 8
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %156 = bitcast %struct.ixgbe_hw* %155 to %struct.ixgbe_hw.0*
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @IXGBE_MDIO_ZERO_DEV_TYPE, align 4
  %159 = call i64 %154(%struct.ixgbe_hw.0* %156, i32 %157, i32 %158, i32* %9)
  store i64 %159, i64* %8, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* @IXGBE_SUCCESS, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %146
  %164 = load i64, i64* %8, align 8
  store i64 %164, i64* %4, align 8
  br label %208

165:                                              ; preds = %146
  %166 = load i32, i32* @IXGBE_CS4227_EDC_MODE_CX1, align 4
  %167 = shl i32 %166, 1
  %168 = load i32, i32* @IXGBE_CS4227_EDC_MODE_SR, align 4
  %169 = shl i32 %168, 1
  %170 = or i32 %167, %169
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %9, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load i32, i32* @IXGBE_CS4227_EDC_MODE_CX1, align 4
  %178 = shl i32 %177, 1
  %179 = or i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %184

180:                                              ; preds = %165
  %181 = load i32, i32* @IXGBE_CS4227_EDC_MODE_SR, align 4
  %182 = shl i32 %181, 1
  %183 = or i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %180, %176
  %185 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %186 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %188, align 8
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %191 = bitcast %struct.ixgbe_hw* %190 to %struct.ixgbe_hw.1*
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @IXGBE_MDIO_ZERO_DEV_TYPE, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i64 %189(%struct.ixgbe_hw.1* %191, i32 %192, i32 %193, i32 %194)
  store i64 %195, i64* %8, align 8
  %196 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %197 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %199, align 8
  %201 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %202 = bitcast %struct.ixgbe_hw* %201 to %struct.ixgbe_hw.0*
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @IXGBE_MDIO_ZERO_DEV_TYPE, align 4
  %205 = call i64 %200(%struct.ixgbe_hw.0* %202, i32 %203, i32 %204, i32* %9)
  store i64 %205, i64* %8, align 8
  br label %206

206:                                              ; preds = %184, %87
  %207 = load i64, i64* %8, align 8
  store i64 %207, i64* %4, align 8
  br label %208

208:                                              ; preds = %206, %163, %122, %105, %85, %54, %28, %22
  %209 = load i64, i64* %4, align 8
  ret i64 %209
}

declare dso_local i32 @UNREFERENCED_1PARAMETER(i32) #1

declare dso_local i64 @ixgbe_supported_sfp_modules_X550em(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32) #1

declare dso_local i64 @ixgbe_setup_sfi_x550a(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @ixgbe_setup_kr_speed_x550em(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
