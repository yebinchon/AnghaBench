; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32 }
%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ixl_media_status: begin\00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@IFM_1000_LX = common dso_local global i32 0, align 4
@IFM_10G_TWINAX = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_10G_LR = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@IFM_10G_AOC = common dso_local global i32 0, align 4
@IFM_25G_KR = common dso_local global i32 0, align 4
@IFM_25G_CR = common dso_local global i32 0, align 4
@IFM_25G_SR = common dso_local global i32 0, align 4
@IFM_25G_LR = common dso_local global i32 0, align 4
@IFM_25G_AOC = common dso_local global i32 0, align 4
@IFM_25G_ACC = common dso_local global i32 0, align 4
@IFM_40G_CR4 = common dso_local global i32 0, align 4
@IFM_40G_SR4 = common dso_local global i32 0, align 4
@IFM_40G_LR4 = common dso_local global i32 0, align 4
@IFM_OTHER = common dso_local global i32 0, align 4
@IFM_1000_KX = common dso_local global i32 0, align 4
@IFM_1000_SGMII = common dso_local global i32 0, align 4
@IFM_10G_CR1 = common dso_local global i32 0, align 4
@IFM_10G_KX4 = common dso_local global i32 0, align 4
@IFM_10G_KR = common dso_local global i32 0, align 4
@IFM_10G_SFI = common dso_local global i32 0, align 4
@IFM_20G_KR2 = common dso_local global i32 0, align 4
@IFM_40G_KR4 = common dso_local global i32 0, align 4
@IFM_40G_XLPPI = common dso_local global i32 0, align 4
@IFM_UNKNOWN = common dso_local global i32 0, align 4
@I40E_AQ_LINK_PAUSE_TX = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@I40E_AQ_LINK_PAUSE_RX = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifmediareq*)* @ixl_if_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_if_media_status(i32 %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ixl_pf* @iflib_get_softc(i32 %7)
  store %struct.ixl_pf* %8, %struct.ixl_pf** %5, align 8
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %10 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %9, i32 0, i32 1
  store %struct.i40e_hw* %10, %struct.i40e_hw** %6, align 8
  %11 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @IFM_AVALID, align 4
  %13 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %14 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IFM_ETHER, align 4
  %16 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %17 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %19 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %255

23:                                               ; preds = %2
  %24 = load i32, i32* @IFM_ACTIVE, align 4
  %25 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %26 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @IFM_FDX, align 4
  %30 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %31 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %35 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %219 [
    i32 156, label %39
    i32 158, label %45
    i32 159, label %51
    i32 160, label %57
    i32 157, label %63
    i32 149, label %69
    i32 148, label %75
    i32 150, label %81
    i32 147, label %87
    i32 131, label %93
    i32 130, label %93
    i32 155, label %99
    i32 142, label %105
    i32 143, label %111
    i32 140, label %117
    i32 141, label %123
    i32 144, label %129
    i32 145, label %135
    i32 138, label %141
    i32 137, label %141
    i32 134, label %147
    i32 135, label %153
    i32 129, label %159
    i32 161, label %165
    i32 132, label %171
    i32 153, label %177
    i32 154, label %177
    i32 151, label %183
    i32 152, label %189
    i32 133, label %195
    i32 146, label %201
    i32 136, label %207
    i32 128, label %213
    i32 139, label %213
  ]

39:                                               ; preds = %23
  %40 = load i32, i32* @IFM_100_TX, align 4
  %41 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %42 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %225

45:                                               ; preds = %23
  %46 = load i32, i32* @IFM_1000_T, align 4
  %47 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %48 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %225

51:                                               ; preds = %23
  %52 = load i32, i32* @IFM_1000_SX, align 4
  %53 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %54 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %225

57:                                               ; preds = %23
  %58 = load i32, i32* @IFM_1000_LX, align 4
  %59 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %60 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %225

63:                                               ; preds = %23
  %64 = load i32, i32* @IFM_1000_T, align 4
  %65 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %66 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %225

69:                                               ; preds = %23
  %70 = load i32, i32* @IFM_10G_TWINAX, align 4
  %71 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %72 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %225

75:                                               ; preds = %23
  %76 = load i32, i32* @IFM_10G_SR, align 4
  %77 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %78 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %225

81:                                               ; preds = %23
  %82 = load i32, i32* @IFM_10G_LR, align 4
  %83 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %84 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %225

87:                                               ; preds = %23
  %88 = load i32, i32* @IFM_10G_T, align 4
  %89 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %90 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %225

93:                                               ; preds = %23, %23
  %94 = load i32, i32* @IFM_10G_TWINAX, align 4
  %95 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %96 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %225

99:                                               ; preds = %23
  %100 = load i32, i32* @IFM_10G_AOC, align 4
  %101 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %102 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %225

105:                                              ; preds = %23
  %106 = load i32, i32* @IFM_25G_KR, align 4
  %107 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %108 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %225

111:                                              ; preds = %23
  %112 = load i32, i32* @IFM_25G_CR, align 4
  %113 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %114 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %225

117:                                              ; preds = %23
  %118 = load i32, i32* @IFM_25G_SR, align 4
  %119 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %120 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %225

123:                                              ; preds = %23
  %124 = load i32, i32* @IFM_25G_LR, align 4
  %125 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %126 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %225

129:                                              ; preds = %23
  %130 = load i32, i32* @IFM_25G_AOC, align 4
  %131 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %132 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %225

135:                                              ; preds = %23
  %136 = load i32, i32* @IFM_25G_ACC, align 4
  %137 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %138 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %225

141:                                              ; preds = %23, %23
  %142 = load i32, i32* @IFM_40G_CR4, align 4
  %143 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %144 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %225

147:                                              ; preds = %23
  %148 = load i32, i32* @IFM_40G_SR4, align 4
  %149 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %150 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %225

153:                                              ; preds = %23
  %154 = load i32, i32* @IFM_40G_LR4, align 4
  %155 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %156 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %225

159:                                              ; preds = %23
  %160 = load i32, i32* @IFM_OTHER, align 4
  %161 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %162 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %225

165:                                              ; preds = %23
  %166 = load i32, i32* @IFM_1000_KX, align 4
  %167 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %168 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %225

171:                                              ; preds = %23
  %172 = load i32, i32* @IFM_1000_SGMII, align 4
  %173 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %174 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %225

177:                                              ; preds = %23, %23
  %178 = load i32, i32* @IFM_10G_CR1, align 4
  %179 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %180 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %225

183:                                              ; preds = %23
  %184 = load i32, i32* @IFM_10G_KX4, align 4
  %185 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %186 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %225

189:                                              ; preds = %23
  %190 = load i32, i32* @IFM_10G_KR, align 4
  %191 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %192 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %225

195:                                              ; preds = %23
  %196 = load i32, i32* @IFM_10G_SFI, align 4
  %197 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %198 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %225

201:                                              ; preds = %23
  %202 = load i32, i32* @IFM_20G_KR2, align 4
  %203 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %204 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %225

207:                                              ; preds = %23
  %208 = load i32, i32* @IFM_40G_KR4, align 4
  %209 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %210 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %225

213:                                              ; preds = %23, %23
  %214 = load i32, i32* @IFM_40G_XLPPI, align 4
  %215 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %216 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  br label %225

219:                                              ; preds = %23
  %220 = load i32, i32* @IFM_UNKNOWN, align 4
  %221 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %222 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %219, %213, %207, %201, %195, %189, %183, %177, %171, %165, %159, %153, %147, %141, %135, %129, %123, %117, %111, %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39
  %226 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %227 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @I40E_AQ_LINK_PAUSE_TX, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %225
  %235 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %236 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %237 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %234, %225
  %241 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %242 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @I40E_AQ_LINK_PAUSE_RX, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %240
  %250 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %251 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %252 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %22, %249, %240
  ret void
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
