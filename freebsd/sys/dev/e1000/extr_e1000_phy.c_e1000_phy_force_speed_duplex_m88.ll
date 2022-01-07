; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_force_speed_duplex_m88.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_force_speed_duplex_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [33 x i8] c"e1000_phy_force_speed_duplex_m88\00", align 1
@e1000_phy_i210 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"M88E1000 PSCR: %X\0A\00", align 1
@PHY_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Waiting for forced speed/duplex link on M88 phy.\0A\00", align 1
@PHY_FORCE_LIMIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Link taking longer than expected.\0A\00", align 1
@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i32 0, align 4
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_force_speed_duplex_m88(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_phy_info* %10, %struct.e1000_phy_info** %4, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_phy_i210, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %1
  %18 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.1*
  %24 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %25 = call i64 %21(%struct.e1000_hw.1* %23, i32 %24, i32* %6)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %2, align 8
  br label %272

30:                                               ; preds = %17
  %31 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %37, align 8
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = bitcast %struct.e1000_hw* %39 to %struct.e1000_hw.0*
  %41 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 %38(%struct.e1000_hw.0* %40, i32 %41, i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i64, i64* %5, align 8
  store i64 %47, i64* %2, align 8
  br label %272

48:                                               ; preds = %30
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %1
  %52 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %53 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.1*
  %58 = load i32, i32* @PHY_CONTROL, align 4
  %59 = call i64 %55(%struct.e1000_hw.1* %57, i32 %58, i32* %6)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i64, i64* %5, align 8
  store i64 %63, i64* %2, align 8
  br label %272

64:                                               ; preds = %51
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = call i32 @e1000_phy_force_speed_duplex_setup(%struct.e1000_hw* %65, i32* %6)
  %67 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %68 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %69, align 8
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = bitcast %struct.e1000_hw* %71 to %struct.e1000_hw.0*
  %73 = load i32, i32* @PHY_CONTROL, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i64 %70(%struct.e1000_hw.0* %72, i32 %73, i32 %74)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = load i64, i64* %5, align 8
  store i64 %79, i64* %2, align 8
  br label %272

80:                                               ; preds = %64
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %84, align 8
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %87 = bitcast %struct.e1000_hw* %86 to %struct.e1000_hw.2*
  %88 = call i64 %85(%struct.e1000_hw.2* %87)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i64, i64* %5, align 8
  store i64 %92, i64* %2, align 8
  br label %272

93:                                               ; preds = %80
  %94 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %95 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %164

98:                                               ; preds = %93
  %99 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %101 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %102 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %100, i32 %101, i32 100000, i32* %7)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i64, i64* %5, align 8
  store i64 %106, i64* %2, align 8
  br label %272

107:                                              ; preds = %98
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %155, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %8, align 4
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %118 [
    i32 132, label %116
    i32 130, label %116
    i32 131, label %116
    i32 128, label %116
    i32 129, label %116
    i32 133, label %116
  ]

116:                                              ; preds = %110, %110, %110, %110, %110, %110
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %8, align 4
  br label %128

118:                                              ; preds = %110
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @e1000_phy_m88, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %125, %118
  br label %128

128:                                              ; preds = %127, %116
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %154

133:                                              ; preds = %128
  %134 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %135 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %136, align 8
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %139 = bitcast %struct.e1000_hw* %138 to %struct.e1000_hw.0*
  %140 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %141 = call i64 %137(%struct.e1000_hw.0* %139, i32 %140, i32 29)
  store i64 %141, i64* %5, align 8
  %142 = load i64, i64* %5, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %133
  %145 = load i64, i64* %5, align 8
  store i64 %145, i64* %2, align 8
  br label %272

146:                                              ; preds = %133
  %147 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %148 = call i64 @e1000_phy_reset_dsp_generic(%struct.e1000_hw* %147)
  store i64 %148, i64* %5, align 8
  %149 = load i64, i64* %5, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i64, i64* %5, align 8
  store i64 %152, i64* %2, align 8
  br label %272

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %131
  br label %155

155:                                              ; preds = %154, %107
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %157 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %158 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %156, i32 %157, i32 100000, i32* %7)
  store i64 %158, i64* %5, align 8
  %159 = load i64, i64* %5, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i64, i64* %5, align 8
  store i64 %162, i64* %2, align 8
  br label %272

163:                                              ; preds = %155
  br label %164

164:                                              ; preds = %163, %93
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %166 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @e1000_phy_m88, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %172, i64* %2, align 8
  br label %272

173:                                              ; preds = %164
  %174 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %175 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 132
  br i1 %178, label %191, label %179

179:                                              ; preds = %173
  %180 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %181 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 130
  br i1 %184, label %191, label %185

185:                                              ; preds = %179
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %187 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 131
  br i1 %190, label %191, label %193

191:                                              ; preds = %185, %179, %173
  %192 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %192, i64* %2, align 8
  br label %272

193:                                              ; preds = %185
  %194 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %195 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 133
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %200, i64* %2, align 8
  br label %272

201:                                              ; preds = %193
  %202 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %203 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %205, 128
  br i1 %206, label %213, label %207

207:                                              ; preds = %201
  %208 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %209 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %211, 129
  br i1 %212, label %213, label %215

213:                                              ; preds = %207, %201
  %214 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %214, i64* %2, align 8
  br label %272

215:                                              ; preds = %207
  %216 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %217 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  %219 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %218, align 8
  %220 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %221 = bitcast %struct.e1000_hw* %220 to %struct.e1000_hw.1*
  %222 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %223 = call i64 %219(%struct.e1000_hw.1* %221, i32 %222, i32* %6)
  store i64 %223, i64* %5, align 8
  %224 = load i64, i64* %5, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %215
  %227 = load i64, i64* %5, align 8
  store i64 %227, i64* %2, align 8
  br label %272

228:                                              ; preds = %215
  %229 = load i32, i32* @M88E1000_EPSCR_TX_CLK_25, align 4
  %230 = load i32, i32* %6, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %6, align 4
  %232 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %233 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %234, align 8
  %236 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %237 = bitcast %struct.e1000_hw* %236 to %struct.e1000_hw.0*
  %238 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %239 = load i32, i32* %6, align 4
  %240 = call i64 %235(%struct.e1000_hw.0* %237, i32 %238, i32 %239)
  store i64 %240, i64* %5, align 8
  %241 = load i64, i64* %5, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %228
  %244 = load i64, i64* %5, align 8
  store i64 %244, i64* %2, align 8
  br label %272

245:                                              ; preds = %228
  %246 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %247 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %248, align 8
  %250 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %251 = bitcast %struct.e1000_hw* %250 to %struct.e1000_hw.1*
  %252 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %253 = call i64 %249(%struct.e1000_hw.1* %251, i32 %252, i32* %6)
  store i64 %253, i64* %5, align 8
  %254 = load i64, i64* %5, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %245
  %257 = load i64, i64* %5, align 8
  store i64 %257, i64* %2, align 8
  br label %272

258:                                              ; preds = %245
  %259 = load i32, i32* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 4
  %260 = load i32, i32* %6, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %6, align 4
  %262 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %263 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 0
  %265 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %264, align 8
  %266 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %267 = bitcast %struct.e1000_hw* %266 to %struct.e1000_hw.0*
  %268 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %269 = load i32, i32* %6, align 4
  %270 = call i64 %265(%struct.e1000_hw.0* %267, i32 %268, i32 %269)
  store i64 %270, i64* %5, align 8
  %271 = load i64, i64* %5, align 8
  store i64 %271, i64* %2, align 8
  br label %272

272:                                              ; preds = %258, %256, %243, %226, %213, %199, %191, %171, %161, %151, %144, %105, %91, %78, %62, %46, %28
  %273 = load i64, i64* %2, align 8
  ret i64 %273
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @e1000_phy_force_speed_duplex_setup(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_phy_reset_dsp_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
