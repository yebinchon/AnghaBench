; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_res_masks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_res_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@BHND_PMU_CAP_RC = common dso_local global i32 0, align 4
@RES4325B0_CBUCK_LPOM = common dso_local global i32 0, align 4
@CHIPC_CST4325_PMUTOP_2B = common dso_local global i32 0, align 4
@RES4325B0_CLDO_PU = common dso_local global i32 0, align 4
@CHIPC_CST4325_SPROM_OTP_SEL = common dso_local global i32 0, align 4
@CHIPC_CST_OTP_PWRDN = common dso_local global i32 0, align 4
@RES4325_OTP_PU = common dso_local global i32 0, align 4
@BHND_BFL_BUCKBOOST = common dso_local global i32 0, align 4
@RES4325_BUCK_BOOST_BURST = common dso_local global i32 0, align 4
@RES4322_RF_LDO = common dso_local global i32 0, align 4
@RES4322_XTAL_PU = common dso_local global i32 0, align 4
@RES4322_ALP_AVAIL = common dso_local global i32 0, align 4
@BHND_ATTACH_NATIVE = common dso_local global i32 0, align 4
@RES4322_SI_PLL_ON = common dso_local global i32 0, align 4
@RES4322_HT_SI_AVAIL = common dso_local global i32 0, align 4
@RES4322_PHY_PLL_ON = common dso_local global i32 0, align 4
@RES4322_OTP_PU = common dso_local global i32 0, align 4
@RES4322_HT_PHY_AVAIL = common dso_local global i32 0, align 4
@RES4328_BB_SWITCHER_PWM = common dso_local global i32 0, align 4
@RES4328_EXT_SWITCHER_PWM = common dso_local global i32 0, align 4
@RES4328_XTAL_EN = common dso_local global i32 0, align 4
@RES4329_CBUCK_LPOM = common dso_local global i32 0, align 4
@RES4329_LNLDO1_PU = common dso_local global i32 0, align 4
@RES4329_CLDO_PU = common dso_local global i32 0, align 4
@CHIPC_CST4329_SPROM_OTP_SEL = common dso_local global i32 0, align 4
@RES4329_OTP_PU = common dso_local global i32 0, align 4
@RES4319_CBUCK_LPOM = common dso_local global i32 0, align 4
@RES4319_CLDO_PU = common dso_local global i32 0, align 4
@RES4336_CBUCK_LPOM = common dso_local global i32 0, align 4
@RES4336_CLDO_PU = common dso_local global i32 0, align 4
@RES4336_LDO3P3_PU = common dso_local global i32 0, align 4
@RES4336_OTP_PU = common dso_local global i32 0, align 4
@RES4336_DIS_INT_RESET_PD = common dso_local global i32 0, align 4
@RES4330_CBUCK_LPOM = common dso_local global i32 0, align 4
@RES4330_CLDO_PU = common dso_local global i32 0, align 4
@RES4330_DIS_INT_RESET_PD = common dso_local global i32 0, align 4
@RES4330_LDO3P3_PU = common dso_local global i32 0, align 4
@RES4330_OTP_PU = common dso_local global i32 0, align 4
@RES4313_BB_PU_RSRC = common dso_local global i32 0, align 4
@RES4313_XTAL_PU_RSRC = common dso_local global i32 0, align 4
@RES4313_ALP_AVAIL_RSRC = common dso_local global i32 0, align 4
@RES4313_BB_PLL_PWRSW_RSRC = common dso_local global i32 0, align 4
@BHND_NVAR_RMIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"NVRAM error reading %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Applying rmin=%#x to min_mask\0A\00", align 1
@BHND_NVAR_RMAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Applying rmax=%#x to max_mask\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pmu_softc*, i32*, i32*)* @bhnd_pmu_res_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pmu_res_masks(%struct.bhnd_pmu_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_pmu_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %16 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BHND_PMU_CAP_RC, align 4
  %19 = call i8* @BHND_PMU_GET_BITS(i32 %17, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %22 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %226 [
    i32 139, label %25
    i32 154, label %84
    i32 151, label %85
    i32 150, label %85
    i32 145, label %85
    i32 133, label %85
    i32 149, label %125
    i32 156, label %125
    i32 155, label %125
    i32 148, label %125
    i32 147, label %125
    i32 131, label %125
    i32 146, label %125
    i32 132, label %125
    i32 143, label %125
    i32 142, label %125
    i32 140, label %125
    i32 144, label %125
    i32 141, label %125
    i32 135, label %125
    i32 130, label %125
    i32 128, label %125
    i32 138, label %126
    i32 129, label %135
    i32 137, label %136
    i32 152, label %175
    i32 134, label %184
    i32 136, label %199
    i32 153, label %214
  ]

25:                                               ; preds = %3
  %26 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %27 = call i32 @bhnd_pmu_res_depfltr_ncb(%struct.bhnd_pmu_softc* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @RES4325B0_CBUCK_LPOM, align 4
  %31 = call i32 @PMURES_BIT(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %36 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BHND_CHIPC_READ_CHIPST(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @CHIPC_CST4325_PMUTOP_2B, align 4
  %41 = call i8* @BHND_PMU_GET_BITS(i32 %39, i32 %40)
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32, i32* @RES4325B0_CLDO_PU, align 4
  %45 = call i32 @PMURES_BIT(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %43, %34
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @CHIPC_CST4325_SPROM_OTP_SEL, align 4
  %51 = call i8* @BHND_PMU_GET_BITS(i32 %49, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @CHIPC_CST_OTP_PWRDN, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i32, i32* @RES4325_OTP_PU, align 4
  %58 = call i32 @PMURES_BIT(i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %48
  %62 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %63 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BHND_BFL_BUCKBOOST, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %71 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %79 [
    i32 157, label %74
    i32 158, label %74
  ]

74:                                               ; preds = %69, %69
  %75 = load i32, i32* @RES4325_BUCK_BOOST_BURST, align 4
  %76 = call i32 @PMURES_BIT(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %69, %74
  br label %80

80:                                               ; preds = %79, %61
  %81 = load i32, i32* %13, align 4
  %82 = shl i32 -1, %81
  %83 = xor i32 %82, -1
  store i32 %83, i32* %8, align 4
  br label %227

84:                                               ; preds = %3
  store i32 3259, i32* %9, align 4
  br label %227

85:                                               ; preds = %3, %3, %3, %3
  %86 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %87 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %227

92:                                               ; preds = %85
  %93 = load i32, i32* @RES4322_RF_LDO, align 4
  %94 = call i32 @PMURES_BIT(i32 %93)
  %95 = load i32, i32* @RES4322_XTAL_PU, align 4
  %96 = call i32 @PMURES_BIT(i32 %95)
  %97 = or i32 %94, %96
  %98 = load i32, i32* @RES4322_ALP_AVAIL, align 4
  %99 = call i32 @PMURES_BIT(i32 %98)
  %100 = or i32 %97, %99
  store i32 %100, i32* %9, align 4
  %101 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %102 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @bhnd_get_attach_type(i32 %103)
  %105 = load i32, i32* @BHND_ATTACH_NATIVE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %92
  %108 = load i32, i32* @RES4322_SI_PLL_ON, align 4
  %109 = call i32 @PMURES_BIT(i32 %108)
  %110 = load i32, i32* @RES4322_HT_SI_AVAIL, align 4
  %111 = call i32 @PMURES_BIT(i32 %110)
  %112 = or i32 %109, %111
  %113 = load i32, i32* @RES4322_PHY_PLL_ON, align 4
  %114 = call i32 @PMURES_BIT(i32 %113)
  %115 = or i32 %112, %114
  %116 = load i32, i32* @RES4322_OTP_PU, align 4
  %117 = call i32 @PMURES_BIT(i32 %116)
  %118 = or i32 %115, %117
  %119 = load i32, i32* @RES4322_HT_PHY_AVAIL, align 4
  %120 = call i32 @PMURES_BIT(i32 %119)
  %121 = or i32 %118, %120
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  store i32 511, i32* %8, align 4
  br label %124

124:                                              ; preds = %107, %92
  br label %227

125:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %227

126:                                              ; preds = %3
  %127 = load i32, i32* @RES4328_BB_SWITCHER_PWM, align 4
  %128 = call i32 @PMURES_BIT(i32 %127)
  %129 = load i32, i32* @RES4328_EXT_SWITCHER_PWM, align 4
  %130 = call i32 @PMURES_BIT(i32 %129)
  %131 = or i32 %128, %130
  %132 = load i32, i32* @RES4328_XTAL_EN, align 4
  %133 = call i32 @PMURES_BIT(i32 %132)
  %134 = or i32 %131, %133
  store i32 %134, i32* %9, align 4
  store i32 268435455, i32* %8, align 4
  br label %227

135:                                              ; preds = %3
  store i32 268435455, i32* %8, align 4
  br label %227

136:                                              ; preds = %3
  %137 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %138 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sge i32 %140, 2
  br i1 %141, label %142, label %151

142:                                              ; preds = %136
  %143 = load i32, i32* @RES4329_CBUCK_LPOM, align 4
  %144 = call i32 @PMURES_BIT(i32 %143)
  %145 = load i32, i32* @RES4329_LNLDO1_PU, align 4
  %146 = call i32 @PMURES_BIT(i32 %145)
  %147 = or i32 %144, %146
  %148 = load i32, i32* @RES4329_CLDO_PU, align 4
  %149 = call i32 @PMURES_BIT(i32 %148)
  %150 = or i32 %147, %149
  store i32 %150, i32* %9, align 4
  br label %157

151:                                              ; preds = %136
  %152 = load i32, i32* @RES4329_CBUCK_LPOM, align 4
  %153 = call i32 @PMURES_BIT(i32 %152)
  %154 = load i32, i32* @RES4329_CLDO_PU, align 4
  %155 = call i32 @PMURES_BIT(i32 %154)
  %156 = or i32 %153, %155
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %151, %142
  %158 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %159 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @BHND_CHIPC_READ_CHIPST(i32 %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @CHIPC_CST4329_SPROM_OTP_SEL, align 4
  %164 = call i8* @BHND_PMU_GET_BITS(i32 %162, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @CHIPC_CST_OTP_PWRDN, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %157
  %170 = load i32, i32* @RES4329_OTP_PU, align 4
  %171 = call i32 @PMURES_BIT(i32 %170)
  %172 = load i32, i32* %9, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %169, %157
  store i32 4191806, i32* %8, align 4
  br label %227

175:                                              ; preds = %3
  %176 = load i32, i32* @RES4319_CBUCK_LPOM, align 4
  %177 = call i32 @PMURES_BIT(i32 %176)
  %178 = load i32, i32* @RES4319_CLDO_PU, align 4
  %179 = call i32 @PMURES_BIT(i32 %178)
  %180 = or i32 %177, %179
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %13, align 4
  %182 = shl i32 -1, %181
  %183 = xor i32 %182, -1
  store i32 %183, i32* %8, align 4
  br label %227

184:                                              ; preds = %3
  %185 = load i32, i32* @RES4336_CBUCK_LPOM, align 4
  %186 = call i32 @PMURES_BIT(i32 %185)
  %187 = load i32, i32* @RES4336_CLDO_PU, align 4
  %188 = call i32 @PMURES_BIT(i32 %187)
  %189 = or i32 %186, %188
  %190 = load i32, i32* @RES4336_LDO3P3_PU, align 4
  %191 = call i32 @PMURES_BIT(i32 %190)
  %192 = or i32 %189, %191
  %193 = load i32, i32* @RES4336_OTP_PU, align 4
  %194 = call i32 @PMURES_BIT(i32 %193)
  %195 = or i32 %192, %194
  %196 = load i32, i32* @RES4336_DIS_INT_RESET_PD, align 4
  %197 = call i32 @PMURES_BIT(i32 %196)
  %198 = or i32 %195, %197
  store i32 %198, i32* %9, align 4
  store i32 33554431, i32* %8, align 4
  br label %227

199:                                              ; preds = %3
  %200 = load i32, i32* @RES4330_CBUCK_LPOM, align 4
  %201 = call i32 @PMURES_BIT(i32 %200)
  %202 = load i32, i32* @RES4330_CLDO_PU, align 4
  %203 = call i32 @PMURES_BIT(i32 %202)
  %204 = or i32 %201, %203
  %205 = load i32, i32* @RES4330_DIS_INT_RESET_PD, align 4
  %206 = call i32 @PMURES_BIT(i32 %205)
  %207 = or i32 %204, %206
  %208 = load i32, i32* @RES4330_LDO3P3_PU, align 4
  %209 = call i32 @PMURES_BIT(i32 %208)
  %210 = or i32 %207, %209
  %211 = load i32, i32* @RES4330_OTP_PU, align 4
  %212 = call i32 @PMURES_BIT(i32 %211)
  %213 = or i32 %210, %212
  store i32 %213, i32* %9, align 4
  store i32 268435455, i32* %8, align 4
  br label %227

214:                                              ; preds = %3
  %215 = load i32, i32* @RES4313_BB_PU_RSRC, align 4
  %216 = call i32 @PMURES_BIT(i32 %215)
  %217 = load i32, i32* @RES4313_XTAL_PU_RSRC, align 4
  %218 = call i32 @PMURES_BIT(i32 %217)
  %219 = or i32 %216, %218
  %220 = load i32, i32* @RES4313_ALP_AVAIL_RSRC, align 4
  %221 = call i32 @PMURES_BIT(i32 %220)
  %222 = or i32 %219, %221
  %223 = load i32, i32* @RES4313_BB_PLL_PWRSW_RSRC, align 4
  %224 = call i32 @PMURES_BIT(i32 %223)
  %225 = or i32 %222, %224
  store i32 %225, i32* %9, align 4
  store i32 65535, i32* %8, align 4
  br label %227

226:                                              ; preds = %3
  br label %227

227:                                              ; preds = %226, %214, %199, %184, %175, %174, %135, %126, %125, %124, %91, %84, %80
  %228 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %229 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @BHND_NVAR_RMIN, align 4
  %232 = call i32 @bhnd_nvram_getvar_uint32(i32 %230, i32 %231, i32* %12)
  store i32 %232, i32* %14, align 4
  %233 = load i32, i32* %14, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %227
  %236 = load i32, i32* %14, align 4
  %237 = load i32, i32* @ENOENT, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %241 = load i32, i32* @BHND_NVAR_RMIN, align 4
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %240, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %241, i32 %242)
  %244 = load i32, i32* %14, align 4
  store i32 %244, i32* %4, align 4
  br label %294

245:                                              ; preds = %235, %227
  %246 = load i32, i32* %14, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %245
  %249 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @PMU_DEBUG(%struct.bhnd_pmu_softc* %249, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %12, align 4
  store i32 %252, i32* %9, align 4
  br label %253

253:                                              ; preds = %248, %245
  br label %254

254:                                              ; preds = %253
  %255 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %256 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @BHND_NVAR_RMAX, align 4
  %259 = call i32 @bhnd_nvram_getvar_uint32(i32 %257, i32 %258, i32* %12)
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* %14, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %254
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* @ENOENT, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %268 = load i32, i32* @BHND_NVAR_RMAX, align 4
  %269 = load i32, i32* %14, align 4
  %270 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %267, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %268, i32 %269)
  %271 = load i32, i32* %14, align 4
  store i32 %271, i32* %4, align 4
  br label %294

272:                                              ; preds = %262, %254
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %272
  %276 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %277 = load i32, i32* %12, align 4
  %278 = call i32 @PMU_DEBUG(%struct.bhnd_pmu_softc* %276, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* %12, align 4
  store i32 %279, i32* %9, align 4
  br label %280

280:                                              ; preds = %275, %272
  br label %281

281:                                              ; preds = %280
  %282 = load i32*, i32** %6, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load i32, i32* %9, align 4
  %286 = load i32*, i32** %6, align 8
  store i32 %285, i32* %286, align 4
  br label %287

287:                                              ; preds = %284, %281
  %288 = load i32*, i32** %7, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load i32, i32* %8, align 4
  %292 = load i32*, i32** %7, align 8
  store i32 %291, i32* %292, align 4
  br label %293

293:                                              ; preds = %290, %287
  store i32 0, i32* %4, align 4
  br label %294

294:                                              ; preds = %293, %266, %239
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local i8* @BHND_PMU_GET_BITS(i32, i32) #1

declare dso_local i32 @bhnd_pmu_res_depfltr_ncb(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @PMURES_BIT(i32) #1

declare dso_local i32 @BHND_CHIPC_READ_CHIPST(i32) #1

declare dso_local i32 @bhnd_get_attach_type(i32) #1

declare dso_local i32 @bhnd_nvram_getvar_uint32(i32, i32, i32*) #1

declare dso_local i32 @PMU_LOG(%struct.bhnd_pmu_softc*, i8*, i32, i32) #1

declare dso_local i32 @PMU_DEBUG(%struct.bhnd_pmu_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
