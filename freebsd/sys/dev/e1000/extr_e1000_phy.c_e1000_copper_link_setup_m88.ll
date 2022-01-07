; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_copper_link_setup_m88.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_copper_link_setup_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i32, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"e1000_copper_link_setup_m88\00", align 1
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@e1000_phy_bm = common dso_local global i64 0, align 8
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDI_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDIX_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_1000T = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@BME1000_E_PHY_ID_R2 = common dso_local global i64 0, align 8
@BME1000_PSCR_ENABLE_DOWNSHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error committing the PHY changes\0A\00", align 1
@e1000_phy_m88 = common dso_local global i64 0, align 8
@E1000_REVISION_4 = common dso_local global i64 0, align 8
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i32 0, align 4
@E1000_REVISION_2 = common dso_local global i64 0, align 8
@M88E1111_I_PHY_ID = common dso_local global i64 0, align 8
@M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK = common dso_local global i32 0, align 4
@M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X = common dso_local global i32 0, align 4
@M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@M88E1000_EPSCR_MASTER_DOWNSHIFT_1X = common dso_local global i32 0, align 4
@M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@I82578_EPSCR_DOWNSHIFT_ENABLE = common dso_local global i32 0, align 4
@I82578_EPSCR_DOWNSHIFT_COUNTER_MASK = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_copper_link_setup_m88(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %12, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = bitcast %struct.e1000_hw* %14 to %struct.e1000_hw.1*
  %16 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %17 = call i64 %13(%struct.e1000_hw.1* %15, i32 %16, i32* %6)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %2, align 8
  br label %306

22:                                               ; preds = %1
  %23 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @e1000_phy_bm, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %53 [
    i32 1, label %40
    i32 2, label %44
    i32 3, label %48
    i32 0, label %52
  ]

40:                                               ; preds = %32
  %41 = load i32, i32* @M88E1000_PSCR_MDI_MANUAL_MODE, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %57

44:                                               ; preds = %32
  %45 = load i32, i32* @M88E1000_PSCR_MDIX_MANUAL_MODE, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %32
  %49 = load i32, i32* @M88E1000_PSCR_AUTO_X_1000T, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %57

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %32, %52
  %54 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %48, %44, %40
  %58 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %63 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %57
  %71 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %72 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @e1000_phy_bm, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %118

76:                                               ; preds = %70
  %77 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %78 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BME1000_E_PHY_ID_R2, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %76
  %83 = load i32, i32* @BME1000_PSCR_ENABLE_DOWNSHIFT, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %89, align 8
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %92 = bitcast %struct.e1000_hw* %91 to %struct.e1000_hw.0*
  %93 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i64 %90(%struct.e1000_hw.0* %92, i32 %93, i32 %94)
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %82
  %99 = load i64, i64* %5, align 8
  store i64 %99, i64* %2, align 8
  br label %306

100:                                              ; preds = %82
  %101 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %102 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %103, align 8
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = bitcast %struct.e1000_hw* %105 to %struct.e1000_hw.2*
  %107 = call i64 %104(%struct.e1000_hw.2* %106)
  store i64 %107, i64* %5, align 8
  %108 = load i64, i64* %5, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i64, i64* %5, align 8
  store i64 %112, i64* %2, align 8
  br label %306

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %76
  %115 = load i32, i32* @BME1000_PSCR_ENABLE_DOWNSHIFT, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %70
  %119 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %120 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %121, align 8
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %124 = bitcast %struct.e1000_hw* %123 to %struct.e1000_hw.0*
  %125 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i64 %122(%struct.e1000_hw.0* %124, i32 %125, i32 %126)
  store i64 %127, i64* %5, align 8
  %128 = load i64, i64* %5, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = load i64, i64* %5, align 8
  store i64 %131, i64* %2, align 8
  br label %306

132:                                              ; preds = %118
  %133 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %134 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @e1000_phy_m88, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %213

138:                                              ; preds = %132
  %139 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %140 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @E1000_REVISION_4, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %213

144:                                              ; preds = %138
  %145 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %146 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @BME1000_E_PHY_ID_R2, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %213

150:                                              ; preds = %144
  %151 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %152 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %153, align 8
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %156 = bitcast %struct.e1000_hw* %155 to %struct.e1000_hw.1*
  %157 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %158 = call i64 %154(%struct.e1000_hw.1* %156, i32 %157, i32* %6)
  store i64 %158, i64* %5, align 8
  %159 = load i64, i64* %5, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %150
  %162 = load i64, i64* %5, align 8
  store i64 %162, i64* %2, align 8
  br label %306

163:                                              ; preds = %150
  %164 = load i32, i32* @M88E1000_EPSCR_TX_CLK_25, align 4
  %165 = load i32, i32* %6, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %6, align 4
  %167 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %168 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @E1000_REVISION_2, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %163
  %173 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %174 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @M88E1111_I_PHY_ID, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %172
  %179 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %6, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X, align 4
  %184 = load i32, i32* %6, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %6, align 4
  br label %198

186:                                              ; preds = %172, %163
  %187 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK, align 4
  %188 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK, align 4
  %189 = or i32 %187, %188
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %6, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_1X, align 4
  %194 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* %6, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %186, %178
  %199 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %200 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %201, align 8
  %203 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %204 = bitcast %struct.e1000_hw* %203 to %struct.e1000_hw.0*
  %205 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i64 %202(%struct.e1000_hw.0* %204, i32 %205, i32 %206)
  store i64 %207, i64* %5, align 8
  %208 = load i64, i64* %5, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %198
  %211 = load i64, i64* %5, align 8
  store i64 %211, i64* %2, align 8
  br label %306

212:                                              ; preds = %198
  br label %213

213:                                              ; preds = %212, %144, %138, %132
  %214 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %215 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @e1000_phy_bm, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %250

219:                                              ; preds = %213
  %220 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %221 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @BME1000_E_PHY_ID_R2, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %250

225:                                              ; preds = %219
  %226 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %227 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %228, align 8
  %230 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %231 = bitcast %struct.e1000_hw* %230 to %struct.e1000_hw.0*
  %232 = call i64 %229(%struct.e1000_hw.0* %231, i32 29, i32 3)
  store i64 %232, i64* %5, align 8
  %233 = load i64, i64* %5, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %225
  %236 = load i64, i64* %5, align 8
  store i64 %236, i64* %2, align 8
  br label %306

237:                                              ; preds = %225
  %238 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %239 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %240, align 8
  %242 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %243 = bitcast %struct.e1000_hw* %242 to %struct.e1000_hw.0*
  %244 = call i64 %241(%struct.e1000_hw.0* %243, i32 30, i32 0)
  store i64 %244, i64* %5, align 8
  %245 = load i64, i64* %5, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %237
  %248 = load i64, i64* %5, align 8
  store i64 %248, i64* %2, align 8
  br label %306

249:                                              ; preds = %237
  br label %250

250:                                              ; preds = %249, %219, %213
  %251 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %252 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 2
  %254 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %253, align 8
  %255 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %256 = bitcast %struct.e1000_hw* %255 to %struct.e1000_hw.2*
  %257 = call i64 %254(%struct.e1000_hw.2* %256)
  store i64 %257, i64* %5, align 8
  %258 = load i64, i64* %5, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %250
  %261 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %262 = load i64, i64* %5, align 8
  store i64 %262, i64* %2, align 8
  br label %306

263:                                              ; preds = %250
  %264 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %265 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @e1000_phy_82578, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %304

269:                                              ; preds = %263
  %270 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %271 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 1
  %273 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %272, align 8
  %274 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %275 = bitcast %struct.e1000_hw* %274 to %struct.e1000_hw.1*
  %276 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %277 = call i64 %273(%struct.e1000_hw.1* %275, i32 %276, i32* %6)
  store i64 %277, i64* %5, align 8
  %278 = load i64, i64* %5, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %269
  %281 = load i64, i64* %5, align 8
  store i64 %281, i64* %2, align 8
  br label %306

282:                                              ; preds = %269
  %283 = load i32, i32* @I82578_EPSCR_DOWNSHIFT_ENABLE, align 4
  %284 = load i32, i32* %6, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* @I82578_EPSCR_DOWNSHIFT_COUNTER_MASK, align 4
  %287 = xor i32 %286, -1
  %288 = load i32, i32* %6, align 4
  %289 = and i32 %288, %287
  store i32 %289, i32* %6, align 4
  %290 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %291 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 0
  %293 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %292, align 8
  %294 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %295 = bitcast %struct.e1000_hw* %294 to %struct.e1000_hw.0*
  %296 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %297 = load i32, i32* %6, align 4
  %298 = call i64 %293(%struct.e1000_hw.0* %295, i32 %296, i32 %297)
  store i64 %298, i64* %5, align 8
  %299 = load i64, i64* %5, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %282
  %302 = load i64, i64* %5, align 8
  store i64 %302, i64* %2, align 8
  br label %306

303:                                              ; preds = %282
  br label %304

304:                                              ; preds = %303, %263
  %305 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %305, i64* %2, align 8
  br label %306

306:                                              ; preds = %304, %301, %280, %260, %247, %235, %210, %161, %130, %110, %98, %20
  %307 = load i64, i64* %2, align 8
  ret i64 %307
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
