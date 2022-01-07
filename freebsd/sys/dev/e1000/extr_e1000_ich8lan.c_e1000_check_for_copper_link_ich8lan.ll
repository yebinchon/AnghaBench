; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_check_for_copper_link_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_check_for_copper_link_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.TYPE_10__, %struct.e1000_mac_info, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*, i32, i64*)*, i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.3*, i32, i64)*, i32 (%struct.e1000_hw.4*, i32, i64*)*, i32 (%struct.e1000_hw.5*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.e1000_hw.4 = type opaque
%struct.e1000_hw.5 = type opaque
%struct.e1000_mac_info = type { i32, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i32 (%struct.e1000_hw.6*)* }
%struct.e1000_hw.6 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"e1000_check_for_copper_link_ich8lan\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4
@E1000_TIPG = common dso_local global i32 0, align 4
@E1000_TIPG_IPGT_MASK = common dso_local global i32 0, align 4
@HALF_DUPLEX = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@e1000_pch_spt = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@I82579_RX_CONFIG = common dso_local global i64 0, align 8
@I217_RX_CONFIG = common dso_local global i64 0, align 8
@e1000_pch_lpt = common dso_local global i32 0, align 4
@I217_PLL_CLOCK_GATE_REG = common dso_local global i32 0, align 4
@I217_PLL_CLOCK_GATE_MASK = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@HV_PM_CTRL = common dso_local global i32 0, align 4
@HV_PM_CTRL_K1_CLK_REQ = common dso_local global i64 0, align 8
@E1000_FEXTNVM4 = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_MASK = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_8USEC = common dso_local global i32 0, align 4
@E1000_DEV_ID_PCH_LPTLP_I218_LM = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPTLP_I218_V = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_LM3 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_V3 = common dso_local global i64 0, align 8
@E1000_FEXTNVM6 = common dso_local global i32 0, align 4
@E1000_PCIEANACFG = common dso_local global i32 0, align 4
@E1000_FEXTNVM6_K1_OFF_ENABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@e1000_phy_82578 = common dso_local global i64 0, align 8
@HV_KMRN_FIFO_CTRLSTA = common dso_local global i32 0, align 4
@HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK = common dso_local global i64 0, align 8
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT = common dso_local global i32 0, align 4
@e1000_phy_82579 = common dso_local global i64 0, align 8
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_check_for_copper_link_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_check_for_copper_link_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 2
  store %struct.e1000_mac_info* %20, %struct.e1000_mac_info** %4, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %21 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %27, i32* %2, align 4
  br label %580

28:                                               ; preds = %1
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = call i32 @e1000_phy_has_link_generic(%struct.e1000_hw* %29, i32 1, i32 0, i32* %9)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %580

35:                                               ; preds = %28
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @e1000_k1_gig_workaround_hv(%struct.e1000_hw* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %580

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %35
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 129
  br i1 %55, label %56, label %336

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %336

59:                                               ; preds = %56
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = call i32 @e1000_get_speed_and_duplex_copper_generic(%struct.e1000_hw* %60, i64* %11, i64* %12)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = load i32, i32* @E1000_TIPG, align 4
  %64 = call i32 @E1000_READ_REG(%struct.e1000_hw* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @E1000_TIPG_IPGT_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @HALF_DUPLEX, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %59
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @SPEED_10, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, 255
  store i32 %78, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %101

79:                                               ; preds = %72, %59
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @e1000_pch_spt, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @FULL_DUPLEX, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @SPEED_1000, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, 12
  store i32 %96, i32* %6, align 4
  store i64 1, i64* %8, align 8
  br label %100

97:                                               ; preds = %90, %86, %79
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, 8
  store i32 %99, i32* %6, align 4
  store i64 1, i64* %8, align 8
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %76
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = load i32, i32* @E1000_TIPG, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %102, i32 %103, i32 %104)
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %109, align 8
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = bitcast %struct.e1000_hw* %111 to %struct.e1000_hw.0*
  %113 = call i32 %110(%struct.e1000_hw.0* %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %580

118:                                              ; preds = %101
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 129
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i64, i64* @I82579_RX_CONFIG, align 8
  store i64 %125, i64* %7, align 8
  br label %128

126:                                              ; preds = %118
  %127 = load i64, i64* @I217_RX_CONFIG, align 8
  store i64 %127, i64* %7, align 8
  br label %128

128:                                              ; preds = %126, %124
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @e1000_write_emi_reg_locked(%struct.e1000_hw* %129, i64 %130, i64 %131)
  store i32 %132, i32* %5, align 4
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %134 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @e1000_pch_lpt, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %204

139:                                              ; preds = %128
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %141 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32 (%struct.e1000_hw.1*, i32, i64*)*, i32 (%struct.e1000_hw.1*, i32, i64*)** %143, align 8
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %146 = bitcast %struct.e1000_hw* %145 to %struct.e1000_hw.1*
  %147 = load i32, i32* @I217_PLL_CLOCK_GATE_REG, align 4
  %148 = call i32 %144(%struct.e1000_hw.1* %146, i32 %147, i64* %13)
  %149 = load i64, i64* @I217_PLL_CLOCK_GATE_MASK, align 8
  %150 = xor i64 %149, -1
  %151 = load i64, i64* %13, align 8
  %152 = and i64 %151, %150
  store i64 %152, i64* %13, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* @SPEED_100, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %160, label %156

156:                                              ; preds = %139
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* @SPEED_10, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156, %139
  %161 = load i64, i64* %13, align 8
  %162 = or i64 %161, 1000
  store i64 %162, i64* %13, align 8
  br label %166

163:                                              ; preds = %156
  %164 = load i64, i64* %13, align 8
  %165 = or i64 %164, 250
  store i64 %165, i64* %13, align 8
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %168 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.2*, i32, i64)** %170, align 8
  %172 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %173 = bitcast %struct.e1000_hw* %172 to %struct.e1000_hw.2*
  %174 = load i32, i32* @I217_PLL_CLOCK_GATE_REG, align 4
  %175 = load i64, i64* %13, align 8
  %176 = call i32 %171(%struct.e1000_hw.2* %173, i32 %174, i64 %175)
  %177 = load i64, i64* %11, align 8
  %178 = load i64, i64* @SPEED_1000, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %203

180:                                              ; preds = %166
  %181 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %182 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32 (%struct.e1000_hw.1*, i32, i64*)*, i32 (%struct.e1000_hw.1*, i32, i64*)** %184, align 8
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %187 = bitcast %struct.e1000_hw* %186 to %struct.e1000_hw.1*
  %188 = load i32, i32* @HV_PM_CTRL, align 4
  %189 = call i32 %185(%struct.e1000_hw.1* %187, i32 %188, i64* %13)
  %190 = load i64, i64* @HV_PM_CTRL_K1_CLK_REQ, align 8
  %191 = load i64, i64* %13, align 8
  %192 = or i64 %191, %190
  store i64 %192, i64* %13, align 8
  %193 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %194 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  %197 = load i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.2*, i32, i64)** %196, align 8
  %198 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %199 = bitcast %struct.e1000_hw* %198 to %struct.e1000_hw.2*
  %200 = load i32, i32* @HV_PM_CTRL, align 4
  %201 = load i64, i64* %13, align 8
  %202 = call i32 %197(%struct.e1000_hw.2* %199, i32 %200, i64 %201)
  br label %203

203:                                              ; preds = %180, %166
  br label %204

204:                                              ; preds = %203, %128
  %205 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %206 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 5
  %209 = load i32 (%struct.e1000_hw.5*)*, i32 (%struct.e1000_hw.5*)** %208, align 8
  %210 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %211 = bitcast %struct.e1000_hw* %210 to %struct.e1000_hw.5*
  %212 = call i32 %209(%struct.e1000_hw.5* %211)
  %213 = load i32, i32* %5, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %204
  %216 = load i32, i32* %5, align 4
  store i32 %216, i32* %2, align 4
  br label %580

217:                                              ; preds = %204
  %218 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %219 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @e1000_pch_spt, align 4
  %223 = icmp sge i32 %221, %222
  br i1 %223, label %224, label %335

224:                                              ; preds = %217
  %225 = load i64, i64* %11, align 8
  %226 = load i64, i64* @SPEED_1000, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %298

228:                                              ; preds = %224
  %229 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %230 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %232, align 8
  %234 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %235 = bitcast %struct.e1000_hw* %234 to %struct.e1000_hw.0*
  %236 = call i32 %233(%struct.e1000_hw.0* %235)
  store i32 %236, i32* %5, align 4
  %237 = load i32, i32* %5, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %228
  %240 = load i32, i32* %5, align 4
  store i32 %240, i32* %2, align 4
  br label %580

241:                                              ; preds = %228
  %242 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %243 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 1
  %246 = load i32 (%struct.e1000_hw.1*, i32, i64*)*, i32 (%struct.e1000_hw.1*, i32, i64*)** %245, align 8
  %247 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %248 = bitcast %struct.e1000_hw* %247 to %struct.e1000_hw.1*
  %249 = call i32 @PHY_REG(i32 776, i32 20)
  %250 = call i32 %246(%struct.e1000_hw.1* %248, i32 %249, i64* %14)
  store i32 %250, i32* %5, align 4
  %251 = load i32, i32* %5, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %241
  %254 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %255 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 5
  %258 = load i32 (%struct.e1000_hw.5*)*, i32 (%struct.e1000_hw.5*)** %257, align 8
  %259 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %260 = bitcast %struct.e1000_hw* %259 to %struct.e1000_hw.5*
  %261 = call i32 %258(%struct.e1000_hw.5* %260)
  %262 = load i32, i32* %5, align 4
  store i32 %262, i32* %2, align 4
  br label %580

263:                                              ; preds = %241
  %264 = load i64, i64* %14, align 8
  %265 = and i64 %264, 4092
  %266 = ashr i64 %265, 2
  store i64 %266, i64* %15, align 8
  %267 = load i64, i64* %15, align 8
  %268 = icmp slt i64 %267, 24
  br i1 %268, label %269, label %284

269:                                              ; preds = %263
  %270 = load i64, i64* %14, align 8
  %271 = and i64 %270, -4093
  store i64 %271, i64* %14, align 8
  %272 = load i64, i64* %14, align 8
  %273 = or i64 %272, 96
  store i64 %273, i64* %14, align 8
  %274 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %275 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 2
  %278 = load i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.2*, i32, i64)** %277, align 8
  %279 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %280 = bitcast %struct.e1000_hw* %279 to %struct.e1000_hw.2*
  %281 = call i32 @PHY_REG(i32 776, i32 20)
  %282 = load i64, i64* %14, align 8
  %283 = call i32 %278(%struct.e1000_hw.2* %280, i32 %281, i64 %282)
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %269, %263
  %285 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %286 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 5
  %289 = load i32 (%struct.e1000_hw.5*)*, i32 (%struct.e1000_hw.5*)** %288, align 8
  %290 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %291 = bitcast %struct.e1000_hw* %290 to %struct.e1000_hw.5*
  %292 = call i32 %289(%struct.e1000_hw.5* %291)
  %293 = load i32, i32* %5, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %284
  %296 = load i32, i32* %5, align 4
  store i32 %296, i32* %2, align 4
  br label %580

297:                                              ; preds = %284
  br label %334

298:                                              ; preds = %224
  %299 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %300 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 0
  %303 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %302, align 8
  %304 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %305 = bitcast %struct.e1000_hw* %304 to %struct.e1000_hw.0*
  %306 = call i32 %303(%struct.e1000_hw.0* %305)
  store i32 %306, i32* %5, align 4
  %307 = load i32, i32* %5, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %298
  %310 = load i32, i32* %5, align 4
  store i32 %310, i32* %2, align 4
  br label %580

311:                                              ; preds = %298
  %312 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %313 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 2
  %316 = load i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.2*, i32, i64)** %315, align 8
  %317 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %318 = bitcast %struct.e1000_hw* %317 to %struct.e1000_hw.2*
  %319 = call i32 @PHY_REG(i32 776, i32 20)
  %320 = call i32 %316(%struct.e1000_hw.2* %318, i32 %319, i64 49187)
  store i32 %320, i32* %5, align 4
  %321 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %322 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 5
  %325 = load i32 (%struct.e1000_hw.5*)*, i32 (%struct.e1000_hw.5*)** %324, align 8
  %326 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %327 = bitcast %struct.e1000_hw* %326 to %struct.e1000_hw.5*
  %328 = call i32 %325(%struct.e1000_hw.5* %327)
  %329 = load i32, i32* %5, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %311
  %332 = load i32, i32* %5, align 4
  store i32 %332, i32* %2, align 4
  br label %580

333:                                              ; preds = %311
  br label %334

334:                                              ; preds = %333, %297
  br label %335

335:                                              ; preds = %334, %217
  br label %336

336:                                              ; preds = %335, %56, %50
  %337 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %338 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @e1000_pch_lpt, align 4
  %342 = icmp sge i32 %340, %341
  br i1 %342, label %343, label %358

343:                                              ; preds = %336
  %344 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %345 = load i32, i32* @E1000_FEXTNVM4, align 4
  %346 = call i32 @E1000_READ_REG(%struct.e1000_hw* %344, i32 %345)
  store i32 %346, i32* %16, align 4
  %347 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_MASK, align 4
  %348 = xor i32 %347, -1
  %349 = load i32, i32* %16, align 4
  %350 = and i32 %349, %348
  store i32 %350, i32* %16, align 4
  %351 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_8USEC, align 4
  %352 = load i32, i32* %16, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %16, align 4
  %354 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %355 = load i32, i32* @E1000_FEXTNVM4, align 4
  %356 = load i32, i32* %16, align 4
  %357 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %354, i32 %355, i32 %356)
  br label %358

358:                                              ; preds = %343, %336
  %359 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %360 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_LM, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %382, label %364

364:                                              ; preds = %358
  %365 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %366 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_V, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %382, label %370

370:                                              ; preds = %364
  %371 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %372 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @E1000_DEV_ID_PCH_I218_LM3, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %382, label %376

376:                                              ; preds = %370
  %377 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %378 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @E1000_DEV_ID_PCH_I218_V3, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %391

382:                                              ; preds = %376, %370, %364, %358
  %383 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %384 = load i32, i32* %9, align 4
  %385 = call i32 @e1000_k1_workaround_lpt_lp(%struct.e1000_hw* %383, i32 %384)
  store i32 %385, i32* %5, align 4
  %386 = load i32, i32* %5, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %382
  %389 = load i32, i32* %5, align 4
  store i32 %389, i32* %2, align 4
  br label %580

390:                                              ; preds = %382
  br label %391

391:                                              ; preds = %390, %376
  %392 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %393 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @e1000_pch_lpt, align 4
  %397 = icmp sge i32 %395, %396
  br i1 %397, label %398, label %407

398:                                              ; preds = %391
  %399 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %400 = load i32, i32* %9, align 4
  %401 = call i32 @e1000_platform_pm_pch_lpt(%struct.e1000_hw* %399, i32 %400)
  store i32 %401, i32* %5, align 4
  %402 = load i32, i32* %5, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %398
  %405 = load i32, i32* %5, align 4
  store i32 %405, i32* %2, align 4
  br label %580

406:                                              ; preds = %398
  br label %407

407:                                              ; preds = %406, %391
  %408 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %409 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 1
  store i64 0, i64* %411, align 8
  %412 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %413 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %412, i32 0, i32 2
  %414 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @e1000_pch_lpt, align 4
  %417 = icmp sge i32 %415, %416
  br i1 %417, label %418, label %464

418:                                              ; preds = %407
  %419 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %420 = load i32, i32* @E1000_FEXTNVM6, align 4
  %421 = call i32 @E1000_READ_REG(%struct.e1000_hw* %419, i32 %420)
  store i32 %421, i32* %17, align 4
  %422 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %423 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %422, i32 0, i32 2
  %424 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* @e1000_pch_spt, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %446

428:                                              ; preds = %418
  %429 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %430 = load i32, i32* @E1000_PCIEANACFG, align 4
  %431 = call i32 @E1000_READ_REG(%struct.e1000_hw* %429, i32 %430)
  store i32 %431, i32* %18, align 4
  %432 = load i32, i32* %18, align 4
  %433 = load i32, i32* @E1000_FEXTNVM6_K1_OFF_ENABLE, align 4
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %440

436:                                              ; preds = %428
  %437 = load i32, i32* @E1000_FEXTNVM6_K1_OFF_ENABLE, align 4
  %438 = load i32, i32* %17, align 4
  %439 = or i32 %438, %437
  store i32 %439, i32* %17, align 4
  br label %445

440:                                              ; preds = %428
  %441 = load i32, i32* @E1000_FEXTNVM6_K1_OFF_ENABLE, align 4
  %442 = xor i32 %441, -1
  %443 = load i32, i32* %17, align 4
  %444 = and i32 %443, %442
  store i32 %444, i32* %17, align 4
  br label %445

445:                                              ; preds = %440, %436
  br label %446

446:                                              ; preds = %445, %418
  %447 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %448 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %447, i32 0, i32 3
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @TRUE, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %459

454:                                              ; preds = %446
  %455 = load i32, i32* @E1000_FEXTNVM6_K1_OFF_ENABLE, align 4
  %456 = xor i32 %455, -1
  %457 = load i32, i32* %17, align 4
  %458 = and i32 %457, %456
  store i32 %458, i32* %17, align 4
  br label %459

459:                                              ; preds = %454, %446
  %460 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %461 = load i32, i32* @E1000_FEXTNVM6, align 4
  %462 = load i32, i32* %17, align 4
  %463 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %460, i32 %461, i32 %462)
  br label %464

464:                                              ; preds = %459, %407
  %465 = load i32, i32* %9, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %469, label %467

467:                                              ; preds = %464
  %468 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %468, i32* %2, align 4
  br label %580

469:                                              ; preds = %464
  %470 = load i64, i64* @FALSE, align 8
  %471 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %472 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %471, i32 0, i32 3
  store i64 %470, i64* %472, align 8
  %473 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %474 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %473, i32 0, i32 2
  %475 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  switch i32 %476, label %538 [
    i32 129, label %477
    i32 128, label %485
  ]

477:                                              ; preds = %469
  %478 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %479 = call i32 @e1000_k1_workaround_lv(%struct.e1000_hw* %478)
  store i32 %479, i32* %5, align 4
  %480 = load i32, i32* %5, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %477
  %483 = load i32, i32* %5, align 4
  store i32 %483, i32* %2, align 4
  br label %580

484:                                              ; preds = %477
  br label %485

485:                                              ; preds = %469, %484
  %486 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %487 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = load i64, i64* @e1000_phy_82578, align 8
  %491 = icmp eq i64 %489, %490
  br i1 %491, label %492, label %500

492:                                              ; preds = %485
  %493 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %494 = call i32 @e1000_link_stall_workaround_hv(%struct.e1000_hw* %493)
  store i32 %494, i32* %5, align 4
  %495 = load i32, i32* %5, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %492
  %498 = load i32, i32* %5, align 4
  store i32 %498, i32* %2, align 4
  br label %580

499:                                              ; preds = %492
  br label %500

500:                                              ; preds = %499, %485
  %501 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %502 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %503, i32 0, i32 4
  %505 = load i32 (%struct.e1000_hw.4*, i32, i64*)*, i32 (%struct.e1000_hw.4*, i32, i64*)** %504, align 8
  %506 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %507 = bitcast %struct.e1000_hw* %506 to %struct.e1000_hw.4*
  %508 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA, align 4
  %509 = call i32 %505(%struct.e1000_hw.4* %507, i32 %508, i64* %10)
  %510 = load i64, i64* @HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK, align 8
  %511 = xor i64 %510, -1
  %512 = load i64, i64* %10, align 8
  %513 = and i64 %512, %511
  store i64 %513, i64* %10, align 8
  %514 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %515 = load i32, i32* @E1000_STATUS, align 4
  %516 = call i32 @E1000_READ_REG(%struct.e1000_hw* %514, i32 %515)
  %517 = load i32, i32* @E1000_STATUS_FD, align 4
  %518 = and i32 %516, %517
  %519 = load i32, i32* @E1000_STATUS_FD, align 4
  %520 = icmp ne i32 %518, %519
  br i1 %520, label %521, label %527

521:                                              ; preds = %500
  %522 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT, align 4
  %523 = shl i32 1, %522
  %524 = sext i32 %523 to i64
  %525 = load i64, i64* %10, align 8
  %526 = or i64 %525, %524
  store i64 %526, i64* %10, align 8
  br label %527

527:                                              ; preds = %521, %500
  %528 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %529 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %530, i32 0, i32 3
  %532 = load i32 (%struct.e1000_hw.3*, i32, i64)*, i32 (%struct.e1000_hw.3*, i32, i64)** %531, align 8
  %533 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %534 = bitcast %struct.e1000_hw* %533 to %struct.e1000_hw.3*
  %535 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA, align 4
  %536 = load i64, i64* %10, align 8
  %537 = call i32 %532(%struct.e1000_hw.3* %534, i32 %535, i64 %536)
  br label %539

538:                                              ; preds = %469
  br label %539

539:                                              ; preds = %538, %527
  %540 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %541 = call i32 @e1000_check_downshift_generic(%struct.e1000_hw* %540)
  %542 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %543 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %543, i32 0, i32 0
  %545 = load i64, i64* %544, align 8
  %546 = load i64, i64* @e1000_phy_82579, align 8
  %547 = icmp sgt i64 %545, %546
  br i1 %547, label %548, label %556

548:                                              ; preds = %539
  %549 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %550 = call i32 @e1000_set_eee_pchlan(%struct.e1000_hw* %549)
  store i32 %550, i32* %5, align 4
  %551 = load i32, i32* %5, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %555

553:                                              ; preds = %548
  %554 = load i32, i32* %5, align 4
  store i32 %554, i32* %2, align 4
  br label %580

555:                                              ; preds = %548
  br label %556

556:                                              ; preds = %555, %539
  %557 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %558 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %557, i32 0, i32 2
  %559 = load i32, i32* %558, align 8
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %564, label %561

561:                                              ; preds = %556
  %562 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %563 = sub nsw i32 0, %562
  store i32 %563, i32* %2, align 4
  br label %580

564:                                              ; preds = %556
  %565 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %566 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %565, i32 0, i32 1
  %567 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %566, i32 0, i32 0
  %568 = load i32 (%struct.e1000_hw.6*)*, i32 (%struct.e1000_hw.6*)** %567, align 8
  %569 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %570 = bitcast %struct.e1000_hw* %569 to %struct.e1000_hw.6*
  %571 = call i32 %568(%struct.e1000_hw.6* %570)
  %572 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %573 = call i32 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw* %572)
  store i32 %573, i32* %5, align 4
  %574 = load i32, i32* %5, align 4
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %564
  %577 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %578

578:                                              ; preds = %576, %564
  %579 = load i32, i32* %5, align 4
  store i32 %579, i32* %2, align 4
  br label %580

580:                                              ; preds = %578, %561, %553, %497, %482, %467, %404, %388, %331, %309, %295, %253, %239, %215, %116, %47, %33, %26
  %581 = load i32, i32* %2, align 4
  ret i32 %581
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e1000_k1_gig_workaround_hv(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_get_speed_and_duplex_copper_generic(%struct.e1000_hw*, i64*, i64*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_write_emi_reg_locked(%struct.e1000_hw*, i64, i64) #1

declare dso_local i32 @PHY_REG(i32, i32) #1

declare dso_local i32 @e1000_k1_workaround_lpt_lp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_platform_pm_pch_lpt(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_k1_workaround_lv(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_link_stall_workaround_hv(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_check_downshift_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_set_eee_pchlan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
