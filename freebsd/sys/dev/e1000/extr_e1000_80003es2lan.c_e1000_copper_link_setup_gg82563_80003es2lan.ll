; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_copper_link_setup_gg82563_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_copper_link_setup_gg82563_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info, %struct.TYPE_5__ }
%struct.e1000_phy_info = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.3 = type opaque

@.str = private unnamed_addr constant [44 x i8] c"e1000_copper_link_setup_gg82563_80003es2lan\00", align 1
@GG82563_PHY_MAC_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_MSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@GG82563_MSCR_TX_CLK_1000MBPS_25 = common dso_local global i32 0, align 4
@GG82563_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_MASK = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_MDI = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_MDIX = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_AUTO = common dso_local global i32 0, align 4
@GG82563_PSCR_POLARITY_REVERSAL_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error Resetting the PHY\0A\00", align 1
@E1000_KMRNCTRLSTA_OFFSET_FIFO_CTRL = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_FIFO_CTRL_RX_BYPASS = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_FIFO_CTRL_TX_BYPASS = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET_MAC2PHY_OPMODE = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OPMODE_E_IDLE = common dso_local global i32 0, align 4
@GG82563_PHY_SPEC_CTRL_2 = common dso_local global i32 0, align 4
@GG82563_PSCR2_REVERSE_AUTO_NEG = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LINK_MODE_MASK = common dso_local global i32 0, align 4
@GG82563_PHY_PWR_MGMT_CTRL = common dso_local global i32 0, align 4
@GG82563_PMCR_ENABLE_ELECTRICAL_IDLE = common dso_local global i32 0, align 4
@GG82563_PHY_KMRN_MODE_CTRL = common dso_local global i32 0, align 4
@GG82563_KMCR_PASS_FALSE_CARRIER = common dso_local global i32 0, align 4
@GG82563_PHY_INBAND_CTRL = common dso_local global i32 0, align 4
@GG82563_ICR_DIS_PADDING = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_setup_gg82563_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_setup_gg82563_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %14, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = bitcast %struct.e1000_hw* %16 to %struct.e1000_hw.1*
  %18 = load i32, i32* @GG82563_PHY_MAC_SPEC_CTRL, align 4
  %19 = call i64 %15(%struct.e1000_hw.1* %17, i32 %18, i32* %7)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %2, align 8
  br label %310

24:                                               ; preds = %1
  %25 = load i32, i32* @GG82563_MSCR_ASSERT_CRS_ON_TX, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @GG82563_MSCR_TX_CLK_1000MBPS_25, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.0*
  %38 = load i32, i32* @GG82563_PHY_MAC_SPEC_CTRL, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i64 %35(%struct.e1000_hw.0* %37, i32 %38, i32 %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %2, align 8
  br label %310

45:                                               ; preds = %24
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %49, align 8
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = bitcast %struct.e1000_hw* %51 to %struct.e1000_hw.1*
  %53 = load i32, i32* @GG82563_PHY_SPEC_CTRL, align 4
  %54 = call i64 %50(%struct.e1000_hw.1* %52, i32 %53, i32* %7)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %2, align 8
  br label %310

59:                                               ; preds = %45
  %60 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %76 [
    i32 1, label %67
    i32 2, label %71
    i32 0, label %75
  ]

67:                                               ; preds = %59
  %68 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_MDI, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %80

71:                                               ; preds = %59
  %72 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_MDIX, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %80

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %59, %75
  %77 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_AUTO, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %71, %67
  %81 = load i32, i32* @GG82563_PSCR_POLARITY_REVERSAL_DISABLE, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load i32, i32* @GG82563_PSCR_POLARITY_REVERSAL_DISABLE, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %80
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %97, align 8
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %100 = bitcast %struct.e1000_hw* %99 to %struct.e1000_hw.0*
  %101 = load i32, i32* @GG82563_PHY_SPEC_CTRL, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i64 %98(%struct.e1000_hw.0* %100, i32 %101, i32 %102)
  store i64 %103, i64* %5, align 8
  %104 = load i64, i64* %5, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i64, i64* %5, align 8
  store i64 %107, i64* %2, align 8
  br label %310

108:                                              ; preds = %93
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %112, align 8
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = bitcast %struct.e1000_hw* %114 to %struct.e1000_hw.2*
  %116 = call i64 %113(%struct.e1000_hw.2* %115)
  store i64 %116, i64* %5, align 8
  %117 = load i64, i64* %5, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i64, i64* %5, align 8
  store i64 %121, i64* %2, align 8
  br label %310

122:                                              ; preds = %108
  %123 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_FIFO_CTRL, align 4
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* @E1000_KMRNCTRLSTA_FIFO_CTRL_RX_BYPASS, align 4
  %125 = load i32, i32* @E1000_KMRNCTRLSTA_FIFO_CTRL_TX_BYPASS, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %7, align 4
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %127, i32 %128, i32 %129)
  store i64 %130, i64* %5, align 8
  %131 = load i64, i64* %5, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = load i64, i64* %5, align 8
  store i64 %134, i64* %2, align 8
  br label %310

135:                                              ; preds = %122
  %136 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_MAC2PHY_OPMODE, align 4
  store i32 %136, i32* %6, align 4
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %137, i32 %138, i32* %7)
  store i64 %139, i64* %5, align 8
  %140 = load i64, i64* %5, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i64, i64* %5, align 8
  store i64 %143, i64* %2, align 8
  br label %310

144:                                              ; preds = %135
  %145 = load i32, i32* @E1000_KMRNCTRLSTA_OPMODE_E_IDLE, align 4
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %7, align 4
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %148, i32 %149, i32 %150)
  store i64 %151, i64* %5, align 8
  %152 = load i64, i64* %5, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = load i64, i64* %5, align 8
  store i64 %155, i64* %2, align 8
  br label %310

156:                                              ; preds = %144
  %157 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %158 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %160, align 8
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %163 = bitcast %struct.e1000_hw* %162 to %struct.e1000_hw.1*
  %164 = load i32, i32* @GG82563_PHY_SPEC_CTRL_2, align 4
  %165 = call i64 %161(%struct.e1000_hw.1* %163, i32 %164, i32* %7)
  store i64 %165, i64* %5, align 8
  %166 = load i64, i64* %5, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %156
  %169 = load i64, i64* %5, align 8
  store i64 %169, i64* %2, align 8
  br label %310

170:                                              ; preds = %156
  %171 = load i32, i32* @GG82563_PSCR2_REVERSE_AUTO_NEG, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %7, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %7, align 4
  %175 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %176 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %178, align 8
  %180 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %181 = bitcast %struct.e1000_hw* %180 to %struct.e1000_hw.0*
  %182 = load i32, i32* @GG82563_PHY_SPEC_CTRL_2, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i64 %179(%struct.e1000_hw.0* %181, i32 %182, i32 %183)
  store i64 %184, i64* %5, align 8
  %185 = load i64, i64* %5, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %170
  %188 = load i64, i64* %5, align 8
  store i64 %188, i64* %2, align 8
  br label %310

189:                                              ; preds = %170
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %191 = load i32, i32* @E1000_CTRL_EXT, align 4
  %192 = call i32 @E1000_READ_REG(%struct.e1000_hw* %190, i32 %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %6, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %6, align 4
  %197 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %198 = load i32, i32* @E1000_CTRL_EXT, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %197, i32 %198, i32 %199)
  %201 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %202 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %204, align 8
  %206 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %207 = bitcast %struct.e1000_hw* %206 to %struct.e1000_hw.1*
  %208 = load i32, i32* @GG82563_PHY_PWR_MGMT_CTRL, align 4
  %209 = call i64 %205(%struct.e1000_hw.1* %207, i32 %208, i32* %7)
  store i64 %209, i64* %5, align 8
  %210 = load i64, i64* %5, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %189
  %213 = load i64, i64* %5, align 8
  store i64 %213, i64* %2, align 8
  br label %310

214:                                              ; preds = %189
  %215 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %216 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32 (%struct.e1000_hw.3*)*, i32 (%struct.e1000_hw.3*)** %218, align 8
  %220 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %221 = bitcast %struct.e1000_hw* %220 to %struct.e1000_hw.3*
  %222 = call i32 %219(%struct.e1000_hw.3* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %276, label %224

224:                                              ; preds = %214
  %225 = load i32, i32* @GG82563_PMCR_ENABLE_ELECTRICAL_IDLE, align 4
  %226 = load i32, i32* %7, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %7, align 4
  %228 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %229 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %231, align 8
  %233 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %234 = bitcast %struct.e1000_hw* %233 to %struct.e1000_hw.0*
  %235 = load i32, i32* @GG82563_PHY_PWR_MGMT_CTRL, align 4
  %236 = load i32, i32* %7, align 4
  %237 = call i64 %232(%struct.e1000_hw.0* %234, i32 %235, i32 %236)
  store i64 %237, i64* %5, align 8
  %238 = load i64, i64* %5, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %224
  %241 = load i64, i64* %5, align 8
  store i64 %241, i64* %2, align 8
  br label %310

242:                                              ; preds = %224
  %243 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %244 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %246, align 8
  %248 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %249 = bitcast %struct.e1000_hw* %248 to %struct.e1000_hw.1*
  %250 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %251 = call i64 %247(%struct.e1000_hw.1* %249, i32 %250, i32* %7)
  store i64 %251, i64* %5, align 8
  %252 = load i64, i64* %5, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %242
  %255 = load i64, i64* %5, align 8
  store i64 %255, i64* %2, align 8
  br label %310

256:                                              ; preds = %242
  %257 = load i32, i32* @GG82563_KMCR_PASS_FALSE_CARRIER, align 4
  %258 = xor i32 %257, -1
  %259 = load i32, i32* %7, align 4
  %260 = and i32 %259, %258
  store i32 %260, i32* %7, align 4
  %261 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %262 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %264, align 8
  %266 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %267 = bitcast %struct.e1000_hw* %266 to %struct.e1000_hw.0*
  %268 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %269 = load i32, i32* %7, align 4
  %270 = call i64 %265(%struct.e1000_hw.0* %267, i32 %268, i32 %269)
  store i64 %270, i64* %5, align 8
  %271 = load i64, i64* %5, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %256
  %274 = load i64, i64* %5, align 8
  store i64 %274, i64* %2, align 8
  br label %310

275:                                              ; preds = %256
  br label %276

276:                                              ; preds = %275, %214
  %277 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %278 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 1
  %281 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %280, align 8
  %282 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %283 = bitcast %struct.e1000_hw* %282 to %struct.e1000_hw.1*
  %284 = load i32, i32* @GG82563_PHY_INBAND_CTRL, align 4
  %285 = call i64 %281(%struct.e1000_hw.1* %283, i32 %284, i32* %7)
  store i64 %285, i64* %5, align 8
  %286 = load i64, i64* %5, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %276
  %289 = load i64, i64* %5, align 8
  store i64 %289, i64* %2, align 8
  br label %310

290:                                              ; preds = %276
  %291 = load i32, i32* @GG82563_ICR_DIS_PADDING, align 4
  %292 = load i32, i32* %7, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* %7, align 4
  %294 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %295 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %297, align 8
  %299 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %300 = bitcast %struct.e1000_hw* %299 to %struct.e1000_hw.0*
  %301 = load i32, i32* @GG82563_PHY_INBAND_CTRL, align 4
  %302 = load i32, i32* %7, align 4
  %303 = call i64 %298(%struct.e1000_hw.0* %300, i32 %301, i32 %302)
  store i64 %303, i64* %5, align 8
  %304 = load i64, i64* %5, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %290
  %307 = load i64, i64* %5, align 8
  store i64 %307, i64* %2, align 8
  br label %310

308:                                              ; preds = %290
  %309 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %309, i64* %2, align 8
  br label %310

310:                                              ; preds = %308, %306, %288, %273, %254, %240, %212, %187, %168, %154, %142, %133, %119, %106, %57, %43, %22
  %311 = load i64, i64* %2, align 8
  ret i64 %311
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
