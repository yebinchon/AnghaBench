; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_qsfp_module_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_qsfp_module_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i8*, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i64, i64, %struct.TYPE_9__, i8*, i8* }
%struct.TYPE_9__ = type { i64 (%struct.ixgbe_hw.0*, i32, i64*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"ixgbe_identify_qsfp_module_generic\00", align 1
@ixgbe_media_type_fiber_qsfp = common dso_local global i64 0, align 8
@ixgbe_sfp_type_not_present = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_SFF_IDENTIFIER = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_SFF_IDENTIFIER_QSFP_PLUS = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_unsupported = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_SFF_QSFP_10GBE_COMP = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_1GBE_COMP = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_DA_PASSIVE_CABLE = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_passive_unknown = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_cu_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_cu_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASESR_CAPABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_10GBASELR_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_srlr_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_srlr_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_DA_ACTIVE_CABLE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@IXGBE_SFF_QSFP_CONNECTOR = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_CABLE_LENGTH = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_DEVICE_TECH = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_CONNECTOR_NOT_SEPARABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_QSFP_TRANSMITER_850NM_VCSEL = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_active_unknown = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_act_lmt_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBASESX_CAPABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBASELX_CAPABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_QSFP_VENDOR_OUI_BYTE0 = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_VENDOR_OUI_BYTE1 = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_VENDOR_OUI_BYTE2 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_INTEL = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_intel = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_unknown = common dso_local global i64 0, align 8
@IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [289 x i8] c"WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics. Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter. Intel Corporation is not responsible for any harm caused by using untested modules.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"QSFP module not supported\0A\00", align 1
@ixgbe_phy_unknown = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_identify_qsfp_module_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [3 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %16 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %16, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %21 = bitcast [3 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 24, i1 false)
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load i8*, i8** @FALSE, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %28, align 8
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = bitcast %struct.ixgbe_hw* %30 to %struct.ixgbe_hw.1*
  %32 = call i64 %29(%struct.ixgbe_hw.1* %31)
  %33 = load i64, i64* @ixgbe_media_type_fiber_qsfp, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %41, i64* %4, align 8
  br label %405

42:                                               ; preds = %1
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %46, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = bitcast %struct.ixgbe_hw* %48 to %struct.ixgbe_hw.2*
  %50 = call i32 %47(%struct.ixgbe_hw.2* %49)
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %54, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = bitcast %struct.ixgbe_hw* %56 to %struct.ixgbe_hw.0*
  %58 = load i32, i32* @IXGBE_SFF_IDENTIFIER, align 4
  %59 = call i64 %55(%struct.ixgbe_hw.0* %57, i32 %58, i64* %7)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @IXGBE_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  br label %407

64:                                               ; preds = %42
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @IXGBE_SFF_IDENTIFIER_QSFP_PLUS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %74, i64* %4, align 8
  br label %405

75:                                               ; preds = %64
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  store i64 %76, i64* %79, align 8
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %83, align 8
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %86 = bitcast %struct.ixgbe_hw* %85 to %struct.ixgbe_hw.0*
  %87 = load i32, i32* @IXGBE_SFF_QSFP_10GBE_COMP, align 4
  %88 = call i64 %84(%struct.ixgbe_hw.0* %86, i32 %87, i64* %9)
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @IXGBE_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  br label %407

93:                                               ; preds = %75
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %95 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %97, align 8
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = bitcast %struct.ixgbe_hw* %99 to %struct.ixgbe_hw.0*
  %101 = load i32, i32* @IXGBE_SFF_QSFP_1GBE_COMP, align 4
  %102 = call i64 %98(%struct.ixgbe_hw.0* %100, i32 %101, i64* %8)
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* %4, align 8
  %104 = load i64, i64* @IXGBE_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %407

107:                                              ; preds = %93
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @IXGBE_SFF_QSFP_DA_PASSIVE_CABLE, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %107
  %113 = load i64, i64* @ixgbe_phy_qsfp_passive_unknown, align 8
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %115 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %118 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %112
  %123 = load i32, i32* @ixgbe_sfp_type_da_cu_core0, align 4
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %125 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  br label %132

127:                                              ; preds = %112
  %128 = load i32, i32* @ixgbe_sfp_type_da_cu_core1, align 4
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %130 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  br label %132

132:                                              ; preds = %127, %122
  br label %244

133:                                              ; preds = %107
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %136 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %137 = or i64 %135, %136
  %138 = and i64 %134, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %133
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %142 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load i32, i32* @ixgbe_sfp_type_srlr_core0, align 4
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %149 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  br label %156

151:                                              ; preds = %140
  %152 = load i32, i32* @ixgbe_sfp_type_srlr_core1, align 4
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %154 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  br label %156

156:                                              ; preds = %151, %146
  br label %243

157:                                              ; preds = %133
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* @IXGBE_SFF_QSFP_DA_ACTIVE_CABLE, align 8
  %160 = and i64 %158, %159
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i8*, i8** @TRUE, align 8
  %164 = ptrtoint i8* %163 to i32
  store i32 %164, i32* %15, align 4
  br label %165

165:                                              ; preds = %162, %157
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %211, label %168

168:                                              ; preds = %165
  %169 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %170 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %172, align 8
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %175 = bitcast %struct.ixgbe_hw* %174 to %struct.ixgbe_hw.0*
  %176 = load i32, i32* @IXGBE_SFF_QSFP_CONNECTOR, align 4
  %177 = call i64 %173(%struct.ixgbe_hw.0* %175, i32 %176, i64* %12)
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %179 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %181, align 8
  %183 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %184 = bitcast %struct.ixgbe_hw* %183 to %struct.ixgbe_hw.0*
  %185 = load i32, i32* @IXGBE_SFF_QSFP_CABLE_LENGTH, align 4
  %186 = call i64 %182(%struct.ixgbe_hw.0* %184, i32 %185, i64* %13)
  %187 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %188 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %190, align 8
  %192 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %193 = bitcast %struct.ixgbe_hw* %192 to %struct.ixgbe_hw.0*
  %194 = load i32, i32* @IXGBE_SFF_QSFP_DEVICE_TECH, align 4
  %195 = call i64 %191(%struct.ixgbe_hw.0* %193, i32 %194, i64* %14)
  %196 = load i64, i64* %12, align 8
  %197 = load i64, i64* @IXGBE_SFF_QSFP_CONNECTOR_NOT_SEPARABLE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %168
  %200 = load i64, i64* %13, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i64, i64* %14, align 8
  %204 = ashr i64 %203, 4
  %205 = load i64, i64* @IXGBE_SFF_QSFP_TRANSMITER_850NM_VCSEL, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i8*, i8** @TRUE, align 8
  %209 = ptrtoint i8* %208 to i32
  store i32 %209, i32* %15, align 4
  br label %210

210:                                              ; preds = %207, %202, %199, %168
  br label %211

211:                                              ; preds = %210, %165
  %212 = load i32, i32* %15, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %235

214:                                              ; preds = %211
  %215 = load i64, i64* @ixgbe_phy_qsfp_active_unknown, align 8
  %216 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %217 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  store i64 %215, i64* %218, align 8
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %220 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %214
  %225 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core0, align 4
  %226 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %227 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 8
  br label %234

229:                                              ; preds = %214
  %230 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core1, align 4
  %231 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %232 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  br label %234

234:                                              ; preds = %229, %224
  br label %242

235:                                              ; preds = %211
  %236 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %237 = ptrtoint i8* %236 to i64
  %238 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %239 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  store i64 %237, i64* %240, align 8
  %241 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %241, i64* %4, align 8
  br label %405

242:                                              ; preds = %234
  br label %243

243:                                              ; preds = %242, %156
  br label %244

244:                                              ; preds = %243, %132
  %245 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %246 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %6, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %244
  %252 = load i8*, i8** @TRUE, align 8
  %253 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %254 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 5
  store i8* %252, i8** %255, align 8
  br label %256

256:                                              ; preds = %251, %244
  %257 = load i8*, i8** @FALSE, align 8
  %258 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %259 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 4
  store i8* %257, i8** %260, align 8
  %261 = load i64, i64* %8, align 8
  %262 = load i64, i64* @IXGBE_SFF_1GBASESX_CAPABLE, align 8
  %263 = and i64 %261, %262
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %256
  %266 = load i64, i64* %9, align 8
  %267 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %268 = and i64 %266, %267
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %280, label %270

270:                                              ; preds = %265, %256
  %271 = load i64, i64* %8, align 8
  %272 = load i64, i64* @IXGBE_SFF_1GBASELX_CAPABLE, align 8
  %273 = and i64 %271, %272
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %285

275:                                              ; preds = %270
  %276 = load i64, i64* %9, align 8
  %277 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %278 = and i64 %276, %277
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %275, %265
  %281 = load i8*, i8** @TRUE, align 8
  %282 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %283 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 4
  store i8* %281, i8** %284, align 8
  br label %285

285:                                              ; preds = %280, %275, %270
  %286 = load i64, i64* %9, align 8
  %287 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %288 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %289 = or i64 %287, %288
  %290 = and i64 %286, %289
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %404

292:                                              ; preds = %285
  %293 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %294 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %296, align 8
  %298 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %299 = bitcast %struct.ixgbe_hw* %298 to %struct.ixgbe_hw.0*
  %300 = load i32, i32* @IXGBE_SFF_QSFP_VENDOR_OUI_BYTE0, align 4
  %301 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %302 = call i64 %297(%struct.ixgbe_hw.0* %299, i32 %300, i64* %301)
  store i64 %302, i64* %4, align 8
  %303 = load i64, i64* %4, align 8
  %304 = load i64, i64* @IXGBE_SUCCESS, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %292
  br label %407

307:                                              ; preds = %292
  %308 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %309 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %311, align 8
  %313 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %314 = bitcast %struct.ixgbe_hw* %313 to %struct.ixgbe_hw.0*
  %315 = load i32, i32* @IXGBE_SFF_QSFP_VENDOR_OUI_BYTE1, align 4
  %316 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %317 = call i64 %312(%struct.ixgbe_hw.0* %314, i32 %315, i64* %316)
  store i64 %317, i64* %4, align 8
  %318 = load i64, i64* %4, align 8
  %319 = load i64, i64* @IXGBE_SUCCESS, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %307
  br label %407

322:                                              ; preds = %307
  %323 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %324 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  %327 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %326, align 8
  %328 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %329 = bitcast %struct.ixgbe_hw* %328 to %struct.ixgbe_hw.0*
  %330 = load i32, i32* @IXGBE_SFF_QSFP_VENDOR_OUI_BYTE2, align 4
  %331 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  %332 = call i64 %327(%struct.ixgbe_hw.0* %329, i32 %330, i64* %331)
  store i64 %332, i64* %4, align 8
  %333 = load i64, i64* %4, align 8
  %334 = load i64, i64* @IXGBE_SUCCESS, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %322
  br label %407

337:                                              ; preds = %322
  %338 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %339 = load i64, i64* %338, align 16
  %340 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT, align 8
  %341 = shl i64 %339, %340
  %342 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT, align 8
  %345 = shl i64 %343, %344
  %346 = or i64 %341, %345
  %347 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  %348 = load i64, i64* %347, align 16
  %349 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT, align 8
  %350 = shl i64 %348, %349
  %351 = or i64 %346, %350
  store i64 %351, i64* %5, align 8
  %352 = load i64, i64* %5, align 8
  %353 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_INTEL, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %360

355:                                              ; preds = %337
  %356 = load i64, i64* @ixgbe_phy_qsfp_intel, align 8
  %357 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %358 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 1
  store i64 %356, i64* %359, align 8
  br label %365

360:                                              ; preds = %337
  %361 = load i64, i64* @ixgbe_phy_qsfp_unknown, align 8
  %362 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %363 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 1
  store i64 %361, i64* %364, align 8
  br label %365

365:                                              ; preds = %360, %355
  %366 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %367 = call i32 @ixgbe_get_device_caps(%struct.ixgbe_hw* %366, i32* %11)
  %368 = load i32, i32* %11, align 4
  %369 = load i32, i32* @IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %401, label %372

372:                                              ; preds = %365
  %373 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %374 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @ixgbe_phy_qsfp_intel, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %381

379:                                              ; preds = %372
  %380 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %380, i64* %4, align 8
  br label %400

381:                                              ; preds = %372
  %382 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %383 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %382, i32 0, i32 0
  %384 = load i8*, i8** %383, align 8
  %385 = load i8*, i8** @TRUE, align 8
  %386 = icmp eq i8* %384, %385
  br i1 %386, label %387, label %391

387:                                              ; preds = %381
  %388 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %389 = call i32 @EWARN(%struct.ixgbe_hw* %388, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.1, i64 0, i64 0))
  %390 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %390, i64* %4, align 8
  br label %399

391:                                              ; preds = %381
  %392 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %393 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %394 = ptrtoint i8* %393 to i64
  %395 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %396 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 1
  store i64 %394, i64* %397, align 8
  %398 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %398, i64* %4, align 8
  br label %399

399:                                              ; preds = %391, %387
  br label %400

400:                                              ; preds = %399, %379
  br label %403

401:                                              ; preds = %365
  %402 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %402, i64* %4, align 8
  br label %403

403:                                              ; preds = %401, %400
  br label %404

404:                                              ; preds = %403, %285
  br label %405

405:                                              ; preds = %404, %235, %68, %35
  %406 = load i64, i64* %4, align 8
  store i64 %406, i64* %2, align 8
  br label %421

407:                                              ; preds = %336, %321, %306, %106, %92, %63
  %408 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %409 = ptrtoint i8* %408 to i32
  %410 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %411 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 0
  store i32 %409, i32* %412, align 8
  %413 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %414 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 2
  store i64 0, i64* %415, align 8
  %416 = load i64, i64* @ixgbe_phy_unknown, align 8
  %417 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %418 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 1
  store i64 %416, i64* %419, align 8
  %420 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %420, i64* %2, align 8
  br label %421

421:                                              ; preds = %407, %405
  %422 = load i64, i64* %2, align 8
  ret i64 %422
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
