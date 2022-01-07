; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_get_macaddr_813x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_get_macaddr_813x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ALC_OPT_CFG = common dso_local global i32 0, align 4
@ALC_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_OTP_SEL = common dso_local global i32 0, align 4
@ALC_TWSI_DEBUG = common dso_local global i32 0, align 4
@TWSI_DEBUG_DEV_EXIST = common dso_local global i32 0, align 4
@OPT_CFG_CLK_ENB = common dso_local global i32 0, align 4
@ALC_MII_DBG_ADDR = common dso_local global i32 0, align 4
@ALC_MII_DBG_DATA = common dso_local global i32 0, align 4
@ALC_LTSSM_ID_CFG = common dso_local global i32 0, align 4
@LTSSM_ID_WRO_ENB = common dso_local global i32 0, align 4
@ALC_WOL_CFG = common dso_local global i32 0, align 4
@ALC_TWSI_CFG = common dso_local global i32 0, align 4
@TWSI_CFG_SW_LD_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"reloading EEPROM timeout!\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"EEPROM not found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_get_macaddr_813x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_get_macaddr_813x(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %8 = load i32, i32* @ALC_OPT_CFG, align 4
  %9 = call i32 @CSR_READ_4(%struct.alc_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %11 = load i32, i32* @ALC_MASTER_CFG, align 4
  %12 = call i32 @CSR_READ_4(%struct.alc_softc* %10, i32 %11)
  %13 = load i32, i32* @MASTER_OTP_SEL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %152

16:                                               ; preds = %1
  %17 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %18 = load i32, i32* @ALC_TWSI_DEBUG, align 4
  %19 = call i32 @CSR_READ_4(%struct.alc_softc* %17, i32 %18)
  %20 = load i32, i32* @TWSI_DEBUG_DEV_EXIST, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %152

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %27 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %103 [
    i32 133, label %31
    i32 132, label %31
    i32 131, label %49
    i32 130, label %49
    i32 129, label %49
    i32 128, label %49
  ]

31:                                               ; preds = %23, %23
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @OPT_CFG_CLK_ENB, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i32, i32* @OPT_CFG_CLK_ENB, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %41 = load i32, i32* @ALC_OPT_CFG, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @CSR_WRITE_4(%struct.alc_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %45 = load i32, i32* @ALC_OPT_CFG, align 4
  %46 = call i32 @CSR_READ_4(%struct.alc_softc* %44, i32 %45)
  %47 = call i32 @DELAY(i32 1000)
  br label %48

48:                                               ; preds = %36, %31
  br label %103

49:                                               ; preds = %23, %23, %23, %23
  %50 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %51 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %54 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %57 = call i32 @alc_miibus_writereg(i32 %52, i32 %55, i32 %56, i32 0)
  %58 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %59 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %62 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %65 = call i32 @alc_miibus_readreg(i32 %60, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %67 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %70 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, 65407
  %75 = call i32 @alc_miibus_writereg(i32 %68, i32 %71, i32 %72, i32 %74)
  %76 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %77 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %80 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %83 = call i32 @alc_miibus_writereg(i32 %78, i32 %81, i32 %82, i32 59)
  %84 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %85 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %88 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %91 = call i32 @alc_miibus_readreg(i32 %86, i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %93 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %96 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %99, 8
  %101 = call i32 @alc_miibus_writereg(i32 %94, i32 %97, i32 %98, i32 %100)
  %102 = call i32 @DELAY(i32 20)
  br label %103

103:                                              ; preds = %23, %49, %48
  %104 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %105 = load i32, i32* @ALC_LTSSM_ID_CFG, align 4
  %106 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %107 = load i32, i32* @ALC_LTSSM_ID_CFG, align 4
  %108 = call i32 @CSR_READ_4(%struct.alc_softc* %106, i32 %107)
  %109 = load i32, i32* @LTSSM_ID_WRO_ENB, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = call i32 @CSR_WRITE_4(%struct.alc_softc* %104, i32 %105, i32 %111)
  %113 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %114 = load i32, i32* @ALC_WOL_CFG, align 4
  %115 = call i32 @CSR_WRITE_4(%struct.alc_softc* %113, i32 %114, i32 0)
  %116 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %117 = load i32, i32* @ALC_WOL_CFG, align 4
  %118 = call i32 @CSR_READ_4(%struct.alc_softc* %116, i32 %117)
  %119 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %120 = load i32, i32* @ALC_TWSI_CFG, align 4
  %121 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %122 = load i32, i32* @ALC_TWSI_CFG, align 4
  %123 = call i32 @CSR_READ_4(%struct.alc_softc* %121, i32 %122)
  %124 = load i32, i32* @TWSI_CFG_SW_LD_START, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @CSR_WRITE_4(%struct.alc_softc* %119, i32 %120, i32 %125)
  store i32 100, i32* %6, align 4
  br label %127

127:                                              ; preds = %140, %103
  %128 = load i32, i32* %6, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = call i32 @DELAY(i32 1000)
  %132 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %133 = load i32, i32* @ALC_TWSI_CFG, align 4
  %134 = call i32 @CSR_READ_4(%struct.alc_softc* %132, i32 %133)
  %135 = load i32, i32* @TWSI_CFG_SW_LD_START, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %143

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %6, align 4
  br label %127

143:                                              ; preds = %138, %127
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %148 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %151

151:                                              ; preds = %146, %143
  br label %161

152:                                              ; preds = %16, %1
  %153 = load i64, i64* @bootverbose, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %157 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @device_printf(i32 %158, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %160

160:                                              ; preds = %155, %152
  br label %161

161:                                              ; preds = %160, %151
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %244

164:                                              ; preds = %161
  %165 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %166 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %165, i32 0, i32 2
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %243 [
    i32 133, label %170
    i32 132, label %170
    i32 131, label %189
    i32 130, label %189
    i32 129, label %189
    i32 128, label %189
  ]

170:                                              ; preds = %164, %164
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @OPT_CFG_CLK_ENB, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %170
  %176 = load i32, i32* @OPT_CFG_CLK_ENB, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %3, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %3, align 4
  %180 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %181 = load i32, i32* @ALC_OPT_CFG, align 4
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @CSR_WRITE_4(%struct.alc_softc* %180, i32 %181, i32 %182)
  %184 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %185 = load i32, i32* @ALC_OPT_CFG, align 4
  %186 = call i32 @CSR_READ_4(%struct.alc_softc* %184, i32 %185)
  %187 = call i32 @DELAY(i32 1000)
  br label %188

188:                                              ; preds = %175, %170
  br label %243

189:                                              ; preds = %164, %164, %164, %164
  %190 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %191 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %194 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %197 = call i32 @alc_miibus_writereg(i32 %192, i32 %195, i32 %196, i32 0)
  %198 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %199 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %202 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %205 = call i32 @alc_miibus_readreg(i32 %200, i32 %203, i32 %204)
  store i32 %205, i32* %4, align 4
  %206 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %207 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %210 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %213 = load i32, i32* %4, align 4
  %214 = or i32 %213, 128
  %215 = call i32 @alc_miibus_writereg(i32 %208, i32 %211, i32 %212, i32 %214)
  %216 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %217 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %220 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %223 = call i32 @alc_miibus_writereg(i32 %218, i32 %221, i32 %222, i32 59)
  %224 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %225 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %228 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %231 = call i32 @alc_miibus_readreg(i32 %226, i32 %229, i32 %230)
  store i32 %231, i32* %4, align 4
  %232 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %233 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %236 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %239 = load i32, i32* %4, align 4
  %240 = and i32 %239, 65527
  %241 = call i32 @alc_miibus_writereg(i32 %234, i32 %237, i32 %238, i32 %240)
  %242 = call i32 @DELAY(i32 20)
  br label %243

243:                                              ; preds = %164, %189, %188
  br label %244

244:                                              ; preds = %243, %161
  %245 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %246 = call i32 @alc_get_macaddr_par(%struct.alc_softc* %245)
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @alc_miibus_writereg(i32, i32, i32, i32) #1

declare dso_local i32 @alc_miibus_readreg(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @alc_get_macaddr_par(%struct.alc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
