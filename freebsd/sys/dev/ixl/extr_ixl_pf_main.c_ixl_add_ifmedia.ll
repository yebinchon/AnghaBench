; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_add_ifmedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_add_ifmedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32 }

@I40E_CAP_PHY_TYPE_100BASE_TX = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_1000BASE_T = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_1000BASE_SX = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_1000BASE_LX = common dso_local global i32 0, align 4
@IFM_1000_LX = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_XAUI = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_XFI = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_10GBASE_SFPP_CU = common dso_local global i32 0, align 4
@IFM_10G_TWINAX = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_10GBASE_SR = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_10GBASE_LR = common dso_local global i32 0, align 4
@IFM_10G_LR = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_10GBASE_T = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_40GBASE_CR4 = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_40GBASE_CR4_CU = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_40GBASE_AOC = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_XLAUI = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_40GBASE_KR4 = common dso_local global i32 0, align 4
@IFM_40G_CR4 = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_40GBASE_SR4 = common dso_local global i32 0, align 4
@IFM_40G_SR4 = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_40GBASE_LR4 = common dso_local global i32 0, align 4
@IFM_40G_LR4 = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_1000BASE_KX = common dso_local global i32 0, align 4
@IFM_1000_KX = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_10GBASE_CR1_CU = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_10GBASE_CR1 = common dso_local global i32 0, align 4
@IFM_10G_CR1 = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_10GBASE_AOC = common dso_local global i32 0, align 4
@IFM_10G_AOC = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_SFI = common dso_local global i32 0, align 4
@IFM_10G_SFI = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_10GBASE_KX4 = common dso_local global i32 0, align 4
@IFM_10G_KX4 = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_10GBASE_KR = common dso_local global i32 0, align 4
@IFM_10G_KR = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_20GBASE_KR2 = common dso_local global i32 0, align 4
@IFM_20G_KR2 = common dso_local global i32 0, align 4
@IFM_40G_KR4 = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_XLPPI = common dso_local global i32 0, align 4
@IFM_40G_XLPPI = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_25GBASE_KR = common dso_local global i32 0, align 4
@IFM_25G_KR = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_25GBASE_CR = common dso_local global i32 0, align 4
@IFM_25G_CR = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_25GBASE_SR = common dso_local global i32 0, align 4
@IFM_25G_SR = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_25GBASE_LR = common dso_local global i32 0, align 4
@IFM_25G_LR = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_25GBASE_AOC = common dso_local global i32 0, align 4
@IFM_25G_AOC = common dso_local global i32 0, align 4
@I40E_CAP_PHY_TYPE_25GBASE_ACC = common dso_local global i32 0, align 4
@IFM_25G_ACC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_add_ifmedia(%struct.ixl_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.ixl_vsi*, align 8
  %4 = alloca i32, align 4
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @I40E_CAP_PHY_TYPE_100BASE_TX, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %11 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFM_ETHER, align 4
  %14 = load i32, i32* @IFM_100_TX, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ifmedia_add(i32 %12, i32 %15, i32 0, i32* null)
  br label %17

17:                                               ; preds = %9, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @I40E_CAP_PHY_TYPE_1000BASE_T, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %24 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFM_ETHER, align 4
  %27 = load i32, i32* @IFM_1000_T, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @ifmedia_add(i32 %25, i32 %28, i32 0, i32* null)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @I40E_CAP_PHY_TYPE_1000BASE_SX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %37 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFM_ETHER, align 4
  %40 = load i32, i32* @IFM_1000_SX, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ifmedia_add(i32 %38, i32 %41, i32 0, i32* null)
  br label %43

43:                                               ; preds = %35, %30
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @I40E_CAP_PHY_TYPE_1000BASE_LX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %50 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFM_ETHER, align 4
  %53 = load i32, i32* @IFM_1000_LX, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @ifmedia_add(i32 %51, i32 %54, i32 0, i32* null)
  br label %56

56:                                               ; preds = %48, %43
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @I40E_CAP_PHY_TYPE_XAUI, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @I40E_CAP_PHY_TYPE_XFI, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @I40E_CAP_PHY_TYPE_10GBASE_SFPP_CU, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66, %61, %56
  %72 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %73 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IFM_ETHER, align 4
  %76 = load i32, i32* @IFM_10G_TWINAX, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @ifmedia_add(i32 %74, i32 %77, i32 0, i32* null)
  br label %79

79:                                               ; preds = %71, %66
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @I40E_CAP_PHY_TYPE_10GBASE_SR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %86 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IFM_ETHER, align 4
  %89 = load i32, i32* @IFM_10G_SR, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @ifmedia_add(i32 %87, i32 %90, i32 0, i32* null)
  br label %92

92:                                               ; preds = %84, %79
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @I40E_CAP_PHY_TYPE_10GBASE_LR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %99 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IFM_ETHER, align 4
  %102 = load i32, i32* @IFM_10G_LR, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @ifmedia_add(i32 %100, i32 %103, i32 0, i32* null)
  br label %105

105:                                              ; preds = %97, %92
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @I40E_CAP_PHY_TYPE_10GBASE_T, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %112 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IFM_ETHER, align 4
  %115 = load i32, i32* @IFM_10G_T, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @ifmedia_add(i32 %113, i32 %116, i32 0, i32* null)
  br label %118

118:                                              ; preds = %110, %105
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @I40E_CAP_PHY_TYPE_40GBASE_CR4, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %143, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @I40E_CAP_PHY_TYPE_40GBASE_CR4_CU, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @I40E_CAP_PHY_TYPE_40GBASE_AOC, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @I40E_CAP_PHY_TYPE_XLAUI, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @I40E_CAP_PHY_TYPE_40GBASE_KR4, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138, %133, %128, %123, %118
  %144 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %145 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @IFM_ETHER, align 4
  %148 = load i32, i32* @IFM_40G_CR4, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @ifmedia_add(i32 %146, i32 %149, i32 0, i32* null)
  br label %151

151:                                              ; preds = %143, %138
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @I40E_CAP_PHY_TYPE_40GBASE_SR4, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %158 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IFM_ETHER, align 4
  %161 = load i32, i32* @IFM_40G_SR4, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @ifmedia_add(i32 %159, i32 %162, i32 0, i32* null)
  br label %164

164:                                              ; preds = %156, %151
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @I40E_CAP_PHY_TYPE_40GBASE_LR4, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %171 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IFM_ETHER, align 4
  %174 = load i32, i32* @IFM_40G_LR4, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @ifmedia_add(i32 %172, i32 %175, i32 0, i32* null)
  br label %177

177:                                              ; preds = %169, %164
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @I40E_CAP_PHY_TYPE_1000BASE_KX, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %184 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @IFM_ETHER, align 4
  %187 = load i32, i32* @IFM_1000_KX, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @ifmedia_add(i32 %185, i32 %188, i32 0, i32* null)
  br label %190

190:                                              ; preds = %182, %177
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @I40E_CAP_PHY_TYPE_10GBASE_CR1_CU, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @I40E_CAP_PHY_TYPE_10GBASE_CR1, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %195, %190
  %201 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %202 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @IFM_ETHER, align 4
  %205 = load i32, i32* @IFM_10G_CR1, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @ifmedia_add(i32 %203, i32 %206, i32 0, i32* null)
  br label %208

208:                                              ; preds = %200, %195
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @I40E_CAP_PHY_TYPE_10GBASE_AOC, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %215 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @IFM_ETHER, align 4
  %218 = load i32, i32* @IFM_10G_AOC, align 4
  %219 = or i32 %217, %218
  %220 = call i32 @ifmedia_add(i32 %216, i32 %219, i32 0, i32* null)
  br label %221

221:                                              ; preds = %213, %208
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* @I40E_CAP_PHY_TYPE_SFI, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %221
  %227 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %228 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @IFM_ETHER, align 4
  %231 = load i32, i32* @IFM_10G_SFI, align 4
  %232 = or i32 %230, %231
  %233 = call i32 @ifmedia_add(i32 %229, i32 %232, i32 0, i32* null)
  br label %234

234:                                              ; preds = %226, %221
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @I40E_CAP_PHY_TYPE_10GBASE_KX4, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %234
  %240 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %241 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @IFM_ETHER, align 4
  %244 = load i32, i32* @IFM_10G_KX4, align 4
  %245 = or i32 %243, %244
  %246 = call i32 @ifmedia_add(i32 %242, i32 %245, i32 0, i32* null)
  br label %247

247:                                              ; preds = %239, %234
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* @I40E_CAP_PHY_TYPE_10GBASE_KR, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %247
  %253 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %254 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @IFM_ETHER, align 4
  %257 = load i32, i32* @IFM_10G_KR, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @ifmedia_add(i32 %255, i32 %258, i32 0, i32* null)
  br label %260

260:                                              ; preds = %252, %247
  %261 = load i32, i32* %4, align 4
  %262 = load i32, i32* @I40E_CAP_PHY_TYPE_20GBASE_KR2, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %260
  %266 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %267 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @IFM_ETHER, align 4
  %270 = load i32, i32* @IFM_20G_KR2, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @ifmedia_add(i32 %268, i32 %271, i32 0, i32* null)
  br label %273

273:                                              ; preds = %265, %260
  %274 = load i32, i32* %4, align 4
  %275 = load i32, i32* @I40E_CAP_PHY_TYPE_40GBASE_KR4, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %273
  %279 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %280 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @IFM_ETHER, align 4
  %283 = load i32, i32* @IFM_40G_KR4, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @ifmedia_add(i32 %281, i32 %284, i32 0, i32* null)
  br label %286

286:                                              ; preds = %278, %273
  %287 = load i32, i32* %4, align 4
  %288 = load i32, i32* @I40E_CAP_PHY_TYPE_XLPPI, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %286
  %292 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %293 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @IFM_ETHER, align 4
  %296 = load i32, i32* @IFM_40G_XLPPI, align 4
  %297 = or i32 %295, %296
  %298 = call i32 @ifmedia_add(i32 %294, i32 %297, i32 0, i32* null)
  br label %299

299:                                              ; preds = %291, %286
  %300 = load i32, i32* %4, align 4
  %301 = load i32, i32* @I40E_CAP_PHY_TYPE_25GBASE_KR, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %299
  %305 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %306 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @IFM_ETHER, align 4
  %309 = load i32, i32* @IFM_25G_KR, align 4
  %310 = or i32 %308, %309
  %311 = call i32 @ifmedia_add(i32 %307, i32 %310, i32 0, i32* null)
  br label %312

312:                                              ; preds = %304, %299
  %313 = load i32, i32* %4, align 4
  %314 = load i32, i32* @I40E_CAP_PHY_TYPE_25GBASE_CR, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %312
  %318 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %319 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @IFM_ETHER, align 4
  %322 = load i32, i32* @IFM_25G_CR, align 4
  %323 = or i32 %321, %322
  %324 = call i32 @ifmedia_add(i32 %320, i32 %323, i32 0, i32* null)
  br label %325

325:                                              ; preds = %317, %312
  %326 = load i32, i32* %4, align 4
  %327 = load i32, i32* @I40E_CAP_PHY_TYPE_25GBASE_SR, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %338

330:                                              ; preds = %325
  %331 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %332 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @IFM_ETHER, align 4
  %335 = load i32, i32* @IFM_25G_SR, align 4
  %336 = or i32 %334, %335
  %337 = call i32 @ifmedia_add(i32 %333, i32 %336, i32 0, i32* null)
  br label %338

338:                                              ; preds = %330, %325
  %339 = load i32, i32* %4, align 4
  %340 = load i32, i32* @I40E_CAP_PHY_TYPE_25GBASE_LR, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %338
  %344 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %345 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @IFM_ETHER, align 4
  %348 = load i32, i32* @IFM_25G_LR, align 4
  %349 = or i32 %347, %348
  %350 = call i32 @ifmedia_add(i32 %346, i32 %349, i32 0, i32* null)
  br label %351

351:                                              ; preds = %343, %338
  %352 = load i32, i32* %4, align 4
  %353 = load i32, i32* @I40E_CAP_PHY_TYPE_25GBASE_AOC, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %351
  %357 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %358 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @IFM_ETHER, align 4
  %361 = load i32, i32* @IFM_25G_AOC, align 4
  %362 = or i32 %360, %361
  %363 = call i32 @ifmedia_add(i32 %359, i32 %362, i32 0, i32* null)
  br label %364

364:                                              ; preds = %356, %351
  %365 = load i32, i32* %4, align 4
  %366 = load i32, i32* @I40E_CAP_PHY_TYPE_25GBASE_ACC, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %364
  %370 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %371 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @IFM_ETHER, align 4
  %374 = load i32, i32* @IFM_25G_ACC, align 4
  %375 = or i32 %373, %374
  %376 = call i32 @ifmedia_add(i32 %372, i32 %375, i32 0, i32* null)
  br label %377

377:                                              ; preds = %369, %364
  ret void
}

declare dso_local i32 @ifmedia_add(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
