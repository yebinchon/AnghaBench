; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_sfp_module_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_sfp_module_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i64, i64, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i64 (%struct.ixgbe_hw.0*, i32, i64*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.TYPE_6__ = type { i64 }

@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"ixgbe_identify_sfp_module_generic\00", align 1
@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@ixgbe_sfp_type_not_present = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_SFF_IDENTIFIER = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_SFF_IDENTIFIER_SFP = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_unsupported = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBE_COMP_CODES = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBE_COMP_CODES = common dso_local global i32 0, align 4
@IXGBE_SFF_CABLE_TECHNOLOGY = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_SFF_DA_PASSIVE_CABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_cu = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASESR_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_sr = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASELR_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_lr = common dso_local global i32 0, align 4
@ixgbe_sfp_type_unknown = common dso_local global i8* null, align 8
@ixgbe_sfp_type_da_cu_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_cu_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_DA_ACTIVE_CABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_CABLE_SPEC_COMP = common dso_local global i32 0, align 4
@IXGBE_SFF_DA_SPEC_ACTIVE_LIMITING = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_act_lmt_core1 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_srlr_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_srlr_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBASET_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core1 = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBASESX_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core1 = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBASELX_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core1 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ixgbe_phy_nl = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE0 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE1 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE2 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_passive_tyco = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_ftl_active = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_ftl = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_avago = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_intel = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_passive_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_active_unknown = common dso_local global i64 0, align 8
@IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [289 x i8] c"WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics. Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter. Intel Corporation is not responsible for any harm caused by using untested modules.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SFP+ module not supported\0A\00", align 1
@ixgbe_phy_unknown = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_identify_sfp_module_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [3 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %14 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %14, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %19 = bitcast [3 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 24, i1 false)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %20 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %24, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = bitcast %struct.ixgbe_hw* %26 to %struct.ixgbe_hw.1*
  %28 = call i64 %25(%struct.ixgbe_hw.1* %27)
  %29 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %37, i64* %4, align 8
  br label %674

38:                                               ; preds = %1
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %42, align 8
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = bitcast %struct.ixgbe_hw* %44 to %struct.ixgbe_hw.2*
  %46 = call i32 %43(%struct.ixgbe_hw.2* %45)
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %50, align 8
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = bitcast %struct.ixgbe_hw* %52 to %struct.ixgbe_hw.0*
  %54 = load i32, i32* @IXGBE_SFF_IDENTIFIER, align 4
  %55 = call i64 %51(%struct.ixgbe_hw.0* %53, i32 %54, i64* %7)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @IXGBE_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %38
  br label %676

60:                                               ; preds = %38
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @IXGBE_SFF_IDENTIFIER_SFP, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %70, i64* %4, align 8
  br label %673

71:                                               ; preds = %60
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %75, align 8
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = bitcast %struct.ixgbe_hw* %77 to %struct.ixgbe_hw.0*
  %79 = load i32, i32* @IXGBE_SFF_1GBE_COMP_CODES, align 4
  %80 = call i64 %76(%struct.ixgbe_hw.0* %78, i32 %79, i64* %8)
  store i64 %80, i64* %4, align 8
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @IXGBE_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %676

85:                                               ; preds = %71
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %89, align 8
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = bitcast %struct.ixgbe_hw* %91 to %struct.ixgbe_hw.0*
  %93 = load i32, i32* @IXGBE_SFF_10GBE_COMP_CODES, align 4
  %94 = call i64 %90(%struct.ixgbe_hw.0* %92, i32 %93, i64* %9)
  store i64 %94, i64* %4, align 8
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @IXGBE_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %676

99:                                               ; preds = %85
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %101 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %103, align 8
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = bitcast %struct.ixgbe_hw* %105 to %struct.ixgbe_hw.0*
  %107 = load i32, i32* @IXGBE_SFF_CABLE_TECHNOLOGY, align 4
  %108 = call i64 %104(%struct.ixgbe_hw.0* %106, i32 %107, i64* %11)
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* @IXGBE_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %676

113:                                              ; preds = %99
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %115 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %159

120:                                              ; preds = %113
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %123 = and i64 %121, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i32, i32* @ixgbe_sfp_type_da_cu, align 4
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %128 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  br label %158

130:                                              ; preds = %120
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %133 = and i64 %131, %132
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i32, i32* @ixgbe_sfp_type_sr, align 4
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %138 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  br label %157

140:                                              ; preds = %130
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %143 = and i64 %141, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i32, i32* @ixgbe_sfp_type_lr, align 4
  %147 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %148 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  br label %156

150:                                              ; preds = %140
  %151 = load i8*, i8** @ixgbe_sfp_type_unknown, align 8
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %154 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  br label %156

156:                                              ; preds = %150, %145
  br label %157

157:                                              ; preds = %156, %135
  br label %158

158:                                              ; preds = %157, %125
  br label %332

159:                                              ; preds = %113
  %160 = load i64, i64* %11, align 8
  %161 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %162 = and i64 %160, %161
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %159
  %165 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %166 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = load i32, i32* @ixgbe_sfp_type_da_cu_core0, align 4
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %173 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  br label %180

175:                                              ; preds = %164
  %176 = load i32, i32* @ixgbe_sfp_type_da_cu_core1, align 4
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %178 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  br label %180

180:                                              ; preds = %175, %170
  br label %331

181:                                              ; preds = %159
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %184 = and i64 %182, %183
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %224

186:                                              ; preds = %181
  %187 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %188 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %190, align 8
  %192 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %193 = bitcast %struct.ixgbe_hw* %192 to %struct.ixgbe_hw.0*
  %194 = load i32, i32* @IXGBE_SFF_CABLE_SPEC_COMP, align 4
  %195 = call i64 %191(%struct.ixgbe_hw.0* %193, i32 %194, i64* %12)
  %196 = load i64, i64* %12, align 8
  %197 = load i64, i64* @IXGBE_SFF_DA_SPEC_ACTIVE_LIMITING, align 8
  %198 = and i64 %196, %197
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %186
  %201 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %202 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core0, align 4
  %208 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %209 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 8
  br label %216

211:                                              ; preds = %200
  %212 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core1, align 4
  %213 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %214 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  store i32 %212, i32* %215, align 8
  br label %216

216:                                              ; preds = %211, %206
  br label %223

217:                                              ; preds = %186
  %218 = load i8*, i8** @ixgbe_sfp_type_unknown, align 8
  %219 = ptrtoint i8* %218 to i32
  %220 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %221 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  br label %223

223:                                              ; preds = %217, %216
  br label %330

224:                                              ; preds = %181
  %225 = load i64, i64* %9, align 8
  %226 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %227 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %228 = or i64 %226, %227
  %229 = and i64 %225, %228
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %224
  %232 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %233 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %231
  %238 = load i32, i32* @ixgbe_sfp_type_srlr_core0, align 4
  %239 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %240 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 8
  br label %247

242:                                              ; preds = %231
  %243 = load i32, i32* @ixgbe_sfp_type_srlr_core1, align 4
  %244 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %245 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  store i32 %243, i32* %246, align 8
  br label %247

247:                                              ; preds = %242, %237
  br label %329

248:                                              ; preds = %224
  %249 = load i64, i64* %8, align 8
  %250 = load i64, i64* @IXGBE_SFF_1GBASET_CAPABLE, align 8
  %251 = and i64 %249, %250
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %272

253:                                              ; preds = %248
  %254 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %255 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %253
  %260 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %261 = trunc i64 %260 to i32
  %262 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %263 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 8
  br label %271

265:                                              ; preds = %253
  %266 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %267 = trunc i64 %266 to i32
  %268 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %269 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  store i32 %267, i32* %270, align 8
  br label %271

271:                                              ; preds = %265, %259
  br label %328

272:                                              ; preds = %248
  %273 = load i64, i64* %8, align 8
  %274 = load i64, i64* @IXGBE_SFF_1GBASESX_CAPABLE, align 8
  %275 = and i64 %273, %274
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %296

277:                                              ; preds = %272
  %278 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %279 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %285 = trunc i64 %284 to i32
  %286 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %287 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  store i32 %285, i32* %288, align 8
  br label %295

289:                                              ; preds = %277
  %290 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %291 = trunc i64 %290 to i32
  %292 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %293 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 8
  br label %295

295:                                              ; preds = %289, %283
  br label %327

296:                                              ; preds = %272
  %297 = load i64, i64* %8, align 8
  %298 = load i64, i64* @IXGBE_SFF_1GBASELX_CAPABLE, align 8
  %299 = and i64 %297, %298
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %320

301:                                              ; preds = %296
  %302 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %303 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %301
  %308 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %309 = trunc i64 %308 to i32
  %310 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %311 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 0
  store i32 %309, i32* %312, align 8
  br label %319

313:                                              ; preds = %301
  %314 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %315 = trunc i64 %314 to i32
  %316 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %317 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 0
  store i32 %315, i32* %318, align 8
  br label %319

319:                                              ; preds = %313, %307
  br label %326

320:                                              ; preds = %296
  %321 = load i8*, i8** @ixgbe_sfp_type_unknown, align 8
  %322 = ptrtoint i8* %321 to i32
  %323 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %324 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  store i32 %322, i32* %325, align 8
  br label %326

326:                                              ; preds = %320, %319
  br label %327

327:                                              ; preds = %326, %295
  br label %328

328:                                              ; preds = %327, %271
  br label %329

329:                                              ; preds = %328, %247
  br label %330

330:                                              ; preds = %329, %223
  br label %331

331:                                              ; preds = %330, %180
  br label %332

332:                                              ; preds = %331, %158
  %333 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %334 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %6, align 4
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %339, label %344

339:                                              ; preds = %332
  %340 = load i64, i64* @TRUE, align 8
  %341 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %342 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 5
  store i64 %340, i64* %343, align 8
  br label %344

344:                                              ; preds = %339, %332
  %345 = load i64, i64* @FALSE, align 8
  %346 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %347 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 4
  store i64 %345, i64* %348, align 8
  %349 = load i64, i64* %8, align 8
  %350 = load i64, i64* @IXGBE_SFF_1GBASESX_CAPABLE, align 8
  %351 = and i64 %349, %350
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %344
  %354 = load i64, i64* %9, align 8
  %355 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %356 = and i64 %354, %355
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %368, label %358

358:                                              ; preds = %353, %344
  %359 = load i64, i64* %8, align 8
  %360 = load i64, i64* @IXGBE_SFF_1GBASELX_CAPABLE, align 8
  %361 = and i64 %359, %360
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %373

363:                                              ; preds = %358
  %364 = load i64, i64* %9, align 8
  %365 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %366 = and i64 %364, %365
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %363, %353
  %369 = load i64, i64* @TRUE, align 8
  %370 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %371 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 4
  store i64 %369, i64* %372, align 8
  br label %373

373:                                              ; preds = %368, %363, %358
  %374 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %375 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @ixgbe_phy_nl, align 8
  %379 = icmp ne i64 %377, %378
  br i1 %379, label %380, label %489

380:                                              ; preds = %373
  %381 = load i64, i64* %7, align 8
  %382 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %383 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 2
  store i64 %381, i64* %384, align 8
  %385 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %386 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 3
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 0
  %389 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %388, align 8
  %390 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %391 = bitcast %struct.ixgbe_hw* %390 to %struct.ixgbe_hw.0*
  %392 = load i32, i32* @IXGBE_SFF_VENDOR_OUI_BYTE0, align 4
  %393 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %394 = call i64 %389(%struct.ixgbe_hw.0* %391, i32 %392, i64* %393)
  store i64 %394, i64* %4, align 8
  %395 = load i64, i64* %4, align 8
  %396 = load i64, i64* @IXGBE_SUCCESS, align 8
  %397 = icmp ne i64 %395, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %380
  br label %676

399:                                              ; preds = %380
  %400 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %401 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 0
  %404 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %403, align 8
  %405 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %406 = bitcast %struct.ixgbe_hw* %405 to %struct.ixgbe_hw.0*
  %407 = load i32, i32* @IXGBE_SFF_VENDOR_OUI_BYTE1, align 4
  %408 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %409 = call i64 %404(%struct.ixgbe_hw.0* %406, i32 %407, i64* %408)
  store i64 %409, i64* %4, align 8
  %410 = load i64, i64* %4, align 8
  %411 = load i64, i64* @IXGBE_SUCCESS, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %399
  br label %676

414:                                              ; preds = %399
  %415 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %416 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 3
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 0
  %419 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %418, align 8
  %420 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %421 = bitcast %struct.ixgbe_hw* %420 to %struct.ixgbe_hw.0*
  %422 = load i32, i32* @IXGBE_SFF_VENDOR_OUI_BYTE2, align 4
  %423 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  %424 = call i64 %419(%struct.ixgbe_hw.0* %421, i32 %422, i64* %423)
  store i64 %424, i64* %4, align 8
  %425 = load i64, i64* %4, align 8
  %426 = load i64, i64* @IXGBE_SUCCESS, align 8
  %427 = icmp ne i64 %425, %426
  br i1 %427, label %428, label %429

428:                                              ; preds = %414
  br label %676

429:                                              ; preds = %414
  %430 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %431 = load i64, i64* %430, align 16
  %432 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT, align 8
  %433 = shl i64 %431, %432
  %434 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT, align 8
  %437 = shl i64 %435, %436
  %438 = or i64 %433, %437
  %439 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  %440 = load i64, i64* %439, align 16
  %441 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT, align 8
  %442 = shl i64 %440, %441
  %443 = or i64 %438, %442
  %444 = trunc i64 %443 to i32
  store i32 %444, i32* %5, align 4
  %445 = load i32, i32* %5, align 4
  switch i32 %445, label %483 [
    i32 128, label %446
    i32 130, label %457
    i32 131, label %473
    i32 129, label %478
  ]

446:                                              ; preds = %429
  %447 = load i64, i64* %11, align 8
  %448 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %449 = and i64 %447, %448
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %456

451:                                              ; preds = %446
  %452 = load i64, i64* @ixgbe_phy_sfp_passive_tyco, align 8
  %453 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %454 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 1
  store i64 %452, i64* %455, align 8
  br label %456

456:                                              ; preds = %451, %446
  br label %488

457:                                              ; preds = %429
  %458 = load i64, i64* %11, align 8
  %459 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %460 = and i64 %458, %459
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %467

462:                                              ; preds = %457
  %463 = load i64, i64* @ixgbe_phy_sfp_ftl_active, align 8
  %464 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %465 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 1
  store i64 %463, i64* %466, align 8
  br label %472

467:                                              ; preds = %457
  %468 = load i64, i64* @ixgbe_phy_sfp_ftl, align 8
  %469 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %470 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 1
  store i64 %468, i64* %471, align 8
  br label %472

472:                                              ; preds = %467, %462
  br label %488

473:                                              ; preds = %429
  %474 = load i64, i64* @ixgbe_phy_sfp_avago, align 8
  %475 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %476 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %476, i32 0, i32 1
  store i64 %474, i64* %477, align 8
  br label %488

478:                                              ; preds = %429
  %479 = load i64, i64* @ixgbe_phy_sfp_intel, align 8
  %480 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %481 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %481, i32 0, i32 1
  store i64 %479, i64* %482, align 8
  br label %488

483:                                              ; preds = %429
  %484 = load i64, i64* @ixgbe_phy_sfp_unknown, align 8
  %485 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %486 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %486, i32 0, i32 1
  store i64 %484, i64* %487, align 8
  br label %488

488:                                              ; preds = %483, %478, %473, %472, %456
  br label %489

489:                                              ; preds = %488, %373
  %490 = load i64, i64* %11, align 8
  %491 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %492 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %493 = or i64 %491, %492
  %494 = and i64 %490, %493
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %519

496:                                              ; preds = %489
  %497 = load i64, i64* %11, align 8
  %498 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %499 = and i64 %497, %498
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %496
  %502 = load i64, i64* @ixgbe_phy_sfp_passive_unknown, align 8
  %503 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %504 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 1
  store i64 %502, i64* %505, align 8
  br label %517

506:                                              ; preds = %496
  %507 = load i64, i64* %11, align 8
  %508 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %509 = and i64 %507, %508
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %516

511:                                              ; preds = %506
  %512 = load i64, i64* @ixgbe_phy_sfp_active_unknown, align 8
  %513 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %514 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i32 0, i32 1
  store i64 %512, i64* %515, align 8
  br label %516

516:                                              ; preds = %511, %506
  br label %517

517:                                              ; preds = %516, %501
  %518 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %518, i64* %4, align 8
  br label %674

519:                                              ; preds = %489
  %520 = load i64, i64* %9, align 8
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %577

522:                                              ; preds = %519
  %523 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %524 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = sext i32 %526 to i64
  %528 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %577, label %530

530:                                              ; preds = %522
  %531 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %532 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = sext i32 %534 to i64
  %536 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %537 = icmp eq i64 %535, %536
  br i1 %537, label %577, label %538

538:                                              ; preds = %530
  %539 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %540 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = sext i32 %542 to i64
  %544 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %545 = icmp eq i64 %543, %544
  br i1 %545, label %577, label %546

546:                                              ; preds = %538
  %547 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %548 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = sext i32 %550 to i64
  %552 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %577, label %554

554:                                              ; preds = %546
  %555 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %556 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %555, i32 0, i32 1
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = sext i32 %558 to i64
  %560 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %561 = icmp eq i64 %559, %560
  br i1 %561, label %577, label %562

562:                                              ; preds = %554
  %563 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %564 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = sext i32 %566 to i64
  %568 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %569 = icmp eq i64 %567, %568
  br i1 %569, label %577, label %570

570:                                              ; preds = %562
  %571 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %572 = ptrtoint i8* %571 to i64
  %573 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %574 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %574, i32 0, i32 1
  store i64 %572, i64* %575, align 8
  %576 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %576, i64* %4, align 8
  br label %674

577:                                              ; preds = %562, %554, %546, %538, %530, %522, %519
  %578 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %579 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %579, i32 0, i32 0
  %581 = load i64, i64* %580, align 8
  %582 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %583 = icmp eq i64 %581, %582
  br i1 %583, label %584, label %586

584:                                              ; preds = %577
  %585 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %585, i64* %4, align 8
  br label %674

586:                                              ; preds = %577
  %587 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %588 = call i32 @ixgbe_get_device_caps(%struct.ixgbe_hw* %587, i32* %13)
  %589 = load i32, i32* %13, align 4
  %590 = load i32, i32* @IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP, align 4
  %591 = and i32 %589, %590
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %670, label %593

593:                                              ; preds = %586
  %594 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %595 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %594, i32 0, i32 1
  %596 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = sext i32 %597 to i64
  %599 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %600 = icmp eq i64 %598, %599
  br i1 %600, label %670, label %601

601:                                              ; preds = %593
  %602 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %603 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %602, i32 0, i32 1
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = sext i32 %605 to i64
  %607 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %608 = icmp eq i64 %606, %607
  br i1 %608, label %670, label %609

609:                                              ; preds = %601
  %610 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %611 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = sext i32 %613 to i64
  %615 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %616 = icmp eq i64 %614, %615
  br i1 %616, label %670, label %617

617:                                              ; preds = %609
  %618 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %619 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = sext i32 %621 to i64
  %623 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %624 = icmp eq i64 %622, %623
  br i1 %624, label %670, label %625

625:                                              ; preds = %617
  %626 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %627 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %626, i32 0, i32 1
  %628 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = sext i32 %629 to i64
  %631 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %632 = icmp eq i64 %630, %631
  br i1 %632, label %670, label %633

633:                                              ; preds = %625
  %634 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %635 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 8
  %638 = sext i32 %637 to i64
  %639 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %640 = icmp eq i64 %638, %639
  br i1 %640, label %670, label %641

641:                                              ; preds = %633
  %642 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %643 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %642, i32 0, i32 1
  %644 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %643, i32 0, i32 1
  %645 = load i64, i64* %644, align 8
  %646 = load i64, i64* @ixgbe_phy_sfp_intel, align 8
  %647 = icmp eq i64 %645, %646
  br i1 %647, label %648, label %650

648:                                              ; preds = %641
  %649 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %649, i64* %4, align 8
  br label %669

650:                                              ; preds = %641
  %651 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %652 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %651, i32 0, i32 0
  %653 = load i64, i64* %652, align 8
  %654 = load i64, i64* @TRUE, align 8
  %655 = icmp eq i64 %653, %654
  br i1 %655, label %656, label %660

656:                                              ; preds = %650
  %657 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %658 = call i32 @EWARN(%struct.ixgbe_hw* %657, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.1, i64 0, i64 0))
  %659 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %659, i64* %4, align 8
  br label %668

660:                                              ; preds = %650
  %661 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %662 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %663 = ptrtoint i8* %662 to i64
  %664 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %665 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %665, i32 0, i32 1
  store i64 %663, i64* %666, align 8
  %667 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %667, i64* %4, align 8
  br label %668

668:                                              ; preds = %660, %656
  br label %669

669:                                              ; preds = %668, %648
  br label %672

670:                                              ; preds = %633, %625, %617, %609, %601, %593, %586
  %671 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %671, i64* %4, align 8
  br label %672

672:                                              ; preds = %670, %669
  br label %673

673:                                              ; preds = %672, %64
  br label %674

674:                                              ; preds = %673, %584, %570, %517, %31
  %675 = load i64, i64* %4, align 8
  store i64 %675, i64* %2, align 8
  br label %698

676:                                              ; preds = %428, %413, %398, %112, %98, %84, %59
  %677 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %678 = ptrtoint i8* %677 to i32
  %679 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %680 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %679, i32 0, i32 1
  %681 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %680, i32 0, i32 0
  store i32 %678, i32* %681, align 8
  %682 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %683 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %682, i32 0, i32 1
  %684 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %683, i32 0, i32 1
  %685 = load i64, i64* %684, align 8
  %686 = load i64, i64* @ixgbe_phy_nl, align 8
  %687 = icmp ne i64 %685, %686
  br i1 %687, label %688, label %696

688:                                              ; preds = %676
  %689 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %690 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %689, i32 0, i32 1
  %691 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %690, i32 0, i32 2
  store i64 0, i64* %691, align 8
  %692 = load i64, i64* @ixgbe_phy_unknown, align 8
  %693 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %694 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %694, i32 0, i32 1
  store i64 %692, i64* %695, align 8
  br label %696

696:                                              ; preds = %688, %676
  %697 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %697, i64* %2, align 8
  br label %698

698:                                              ; preds = %696, %674
  %699 = load i64, i64* %2, align 8
  ret i64 %699
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEBUGFUNC(i8*) #2

declare dso_local i32 @ixgbe_get_device_caps(%struct.ixgbe_hw*, i32*) #2

declare dso_local i32 @EWARN(%struct.ixgbe_hw*, i8*) #2

declare dso_local i32 @DEBUGOUT(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
