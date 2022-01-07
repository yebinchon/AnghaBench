; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_rom.c_r92e_parse_rom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_rom.c_r92e_parse_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, %struct.TYPE_5__, i32, %struct.r92e_softc* }
%struct.TYPE_5__ = type { i32 }
%struct.r92e_softc = type { i32, i8***, i8***, i8***, i8***, i64**, i64**, i64 }
%struct.r92e_rom = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_2g }
%struct.r92e_tx_pwr_diff_2g = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.r92e_tx_pwr_2g = type { i32*, i32* }

@R92E_ROM_CRYSTALCAP_DEF = common dso_local global i64 0, align 8
@R92E_GROUP_2G = common dso_local global i32 0, align 4
@R92E_DEF_TX_PWR_2G = common dso_local global i64 0, align 8
@LOW_PART = common dso_local global i32 0, align 4
@HIGH_PART = common dso_local global i32 0, align 4
@R92E_DEF_TX_PWR_HT20_DIFF = common dso_local global i64 0, align 8
@R92E_DEF_TX_PWR_DIFF = common dso_local global i64 0, align 8
@R92C_ROM_RF1_REGULATORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92e_parse_rom(%struct.rtwn_softc* %0, i64* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.r92e_softc*, align 8
  %6 = alloca %struct.r92e_rom*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.r92e_tx_pwr_2g*, align 8
  %12 = alloca %struct.r92e_tx_pwr_diff_2g*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i64* %1, i64** %4, align 8
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %13, i32 0, i32 3
  %15 = load %struct.r92e_softc*, %struct.r92e_softc** %14, align 8
  store %struct.r92e_softc* %15, %struct.r92e_softc** %5, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = bitcast i64* %16 to %struct.r92e_rom*
  store %struct.r92e_rom* %17, %struct.r92e_rom** %6, align 8
  %18 = load %struct.r92e_rom*, %struct.r92e_rom** %6, align 8
  %19 = getelementptr inbounds %struct.r92e_rom, %struct.r92e_rom* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %22 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.r92e_rom*, %struct.r92e_rom** %6, align 8
  %24 = getelementptr inbounds %struct.r92e_rom, %struct.r92e_rom* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @R92E_ROM_CRYSTALCAP_DEF, align 8
  %27 = call i64 @RTWN_GET_ROM_VAR(i32 %25, i64 %26)
  %28 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %29 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %28, i32 0, i32 7
  store i64 %27, i64* %29, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %393, %2
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %33 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %396

36:                                               ; preds = %30
  %37 = load %struct.r92e_rom*, %struct.r92e_rom** %6, align 8
  %38 = getelementptr inbounds %struct.r92e_rom, %struct.r92e_rom* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store %struct.r92e_tx_pwr_2g* %43, %struct.r92e_tx_pwr_2g** %11, align 8
  %44 = load %struct.r92e_rom*, %struct.r92e_rom** %6, align 8
  %45 = getelementptr inbounds %struct.r92e_rom, %struct.r92e_rom* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct.r92e_tx_pwr_diff_2g* %50, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %95, %36
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @R92E_GROUP_2G, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %51
  %57 = load %struct.r92e_tx_pwr_2g*, %struct.r92e_tx_pwr_2g** %11, align 8
  %58 = getelementptr inbounds %struct.r92e_tx_pwr_2g, %struct.r92e_tx_pwr_2g* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* @R92E_DEF_TX_PWR_2G, align 8
  %65 = call i64 @RTWN_GET_ROM_VAR(i32 %63, i64 %64)
  %66 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %67 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %66, i32 0, i32 5
  %68 = load i64**, i64*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %65, i64* %75, align 8
  %76 = load %struct.r92e_tx_pwr_2g*, %struct.r92e_tx_pwr_2g** %11, align 8
  %77 = getelementptr inbounds %struct.r92e_tx_pwr_2g, %struct.r92e_tx_pwr_2g* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* @R92E_DEF_TX_PWR_2G, align 8
  %84 = call i64 @RTWN_GET_ROM_VAR(i32 %82, i64 %83)
  %85 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %86 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %85, i32 0, i32 6
  %87 = load i64**, i64*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64*, i64** %87, i64 %89
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 %84, i64* %94, align 8
  br label %95

95:                                               ; preds = %56
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %51

98:                                               ; preds = %51
  %99 = load %struct.r92e_tx_pwr_2g*, %struct.r92e_tx_pwr_2g** %11, align 8
  %100 = getelementptr inbounds %struct.r92e_tx_pwr_2g, %struct.r92e_tx_pwr_2g* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* @R92E_DEF_TX_PWR_2G, align 8
  %107 = call i64 @RTWN_GET_ROM_VAR(i32 %105, i64 %106)
  %108 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %109 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %108, i32 0, i32 5
  %110 = load i64**, i64*** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64*, i64** %110, i64 %112
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %107, i64* %117, align 8
  %118 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %119 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %118, i32 0, i32 4
  %120 = load i8***, i8**** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8**, i8*** %120, i64 %122
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  store i8* null, i8** %125, align 8
  %126 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %127 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @LOW_PART, align 4
  %130 = call i32 @MS(i32 %128, i32 %129)
  %131 = call i8* @RTWN_SIGN4TO8(i32 %130)
  %132 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %133 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %132, i32 0, i32 3
  %134 = load i8***, i8**** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8**, i8*** %134, i64 %136
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 0
  store i8* %131, i8** %139, align 8
  %140 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %141 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @HIGH_PART, align 4
  %144 = call i32 @MS(i32 %142, i32 %143)
  %145 = call i8* @RTWN_SIGN4TO8(i32 %144)
  %146 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %147 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %146, i32 0, i32 2
  %148 = load i8***, i8**** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8**, i8*** %148, i64 %150
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  store i8* %145, i8** %153, align 8
  %154 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %155 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %154, i32 0, i32 1
  %156 = load i8***, i8**** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8**, i8*** %156, i64 %158
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  store i8* null, i8** %161, align 8
  %162 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %163 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i64, i64* @R92E_DEF_TX_PWR_HT20_DIFF, align 8
  %166 = call i64 @RTWN_GET_ROM_VAR(i32 %164, i64 %165)
  store i64 %166, i64* %7, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @R92E_DEF_TX_PWR_HT20_DIFF, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %199

170:                                              ; preds = %98
  %171 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %172 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @LOW_PART, align 4
  %175 = call i32 @MS(i32 %173, i32 %174)
  %176 = call i8* @RTWN_SIGN4TO8(i32 %175)
  %177 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %178 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %177, i32 0, i32 3
  %179 = load i8***, i8**** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8**, i8*** %179, i64 %181
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 0
  store i8* %176, i8** %184, align 8
  %185 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %186 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @HIGH_PART, align 4
  %189 = call i32 @MS(i32 %187, i32 %188)
  %190 = call i8* @RTWN_SIGN4TO8(i32 %189)
  %191 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %192 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %191, i32 0, i32 2
  %193 = load i8***, i8**** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8**, i8*** %193, i64 %195
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  store i8* %190, i8** %198, align 8
  br label %218

199:                                              ; preds = %98
  %200 = load i64, i64* %7, align 8
  %201 = inttoptr i64 %200 to i8*
  %202 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %203 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %202, i32 0, i32 2
  %204 = load i8***, i8**** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8**, i8*** %204, i64 %206
  %208 = load i8**, i8*** %207, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 0
  store i8* %201, i8** %209, align 8
  %210 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %211 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %210, i32 0, i32 3
  %212 = load i8***, i8**** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8**, i8*** %212, i64 %214
  %216 = load i8**, i8*** %215, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 0
  store i8* %201, i8** %217, align 8
  br label %218

218:                                              ; preds = %199, %170
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %387, %218
  %220 = load i32, i32* %10, align 4
  %221 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %222 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %221, i32 0, i32 0
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = call i32 @nitems(%struct.TYPE_6__* %223)
  %225 = icmp slt i32 %220, %224
  br i1 %225, label %226, label %392

226:                                              ; preds = %219
  %227 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %228 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %227, i32 0, i32 0
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i64, i64* @R92E_DEF_TX_PWR_DIFF, align 8
  %236 = call i64 @RTWN_GET_ROM_VAR(i32 %234, i64 %235)
  store i64 %236, i64* %7, align 8
  %237 = load i64, i64* %7, align 8
  %238 = load i64, i64* @R92E_DEF_TX_PWR_DIFF, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %283

240:                                              ; preds = %226
  %241 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %242 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %241, i32 0, i32 0
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @LOW_PART, align 4
  %250 = call i32 @MS(i32 %248, i32 %249)
  %251 = call i8* @RTWN_SIGN4TO8(i32 %250)
  %252 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %253 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %252, i32 0, i32 4
  %254 = load i8***, i8**** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8**, i8*** %254, i64 %256
  %258 = load i8**, i8*** %257, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260
  store i8* %251, i8** %261, align 8
  %262 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %263 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %262, i32 0, i32 0
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @HIGH_PART, align 4
  %271 = call i32 @MS(i32 %269, i32 %270)
  %272 = call i8* @RTWN_SIGN4TO8(i32 %271)
  %273 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %274 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %273, i32 0, i32 3
  %275 = load i8***, i8**** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8**, i8*** %275, i64 %277
  %279 = load i8**, i8*** %278, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %279, i64 %281
  store i8* %272, i8** %282, align 8
  br label %306

283:                                              ; preds = %226
  %284 = load i64, i64* %7, align 8
  %285 = inttoptr i64 %284 to i8*
  %286 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %287 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %286, i32 0, i32 3
  %288 = load i8***, i8**** %287, align 8
  %289 = load i32, i32* %8, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8**, i8*** %288, i64 %290
  %292 = load i8**, i8*** %291, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8*, i8** %292, i64 %294
  store i8* %285, i8** %295, align 8
  %296 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %297 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %296, i32 0, i32 4
  %298 = load i8***, i8**** %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8**, i8*** %298, i64 %300
  %302 = load i8**, i8*** %301, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %302, i64 %304
  store i8* %285, i8** %305, align 8
  br label %306

306:                                              ; preds = %283, %240
  %307 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %308 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %307, i32 0, i32 0
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = load i32, i32* %10, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i64, i64* @R92E_DEF_TX_PWR_DIFF, align 8
  %316 = call i64 @RTWN_GET_ROM_VAR(i32 %314, i64 %315)
  store i64 %316, i64* %7, align 8
  %317 = load i64, i64* %7, align 8
  %318 = load i64, i64* @R92E_DEF_TX_PWR_DIFF, align 8
  %319 = icmp ne i64 %317, %318
  br i1 %319, label %320, label %363

320:                                              ; preds = %306
  %321 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %322 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %321, i32 0, i32 0
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %322, align 8
  %324 = load i32, i32* %10, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @LOW_PART, align 4
  %330 = call i32 @MS(i32 %328, i32 %329)
  %331 = call i8* @RTWN_SIGN4TO8(i32 %330)
  %332 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %333 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %332, i32 0, i32 2
  %334 = load i8***, i8**** %333, align 8
  %335 = load i32, i32* %8, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8**, i8*** %334, i64 %336
  %338 = load i8**, i8*** %337, align 8
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %338, i64 %340
  store i8* %331, i8** %341, align 8
  %342 = load %struct.r92e_tx_pwr_diff_2g*, %struct.r92e_tx_pwr_diff_2g** %12, align 8
  %343 = getelementptr inbounds %struct.r92e_tx_pwr_diff_2g, %struct.r92e_tx_pwr_diff_2g* %342, i32 0, i32 0
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %343, align 8
  %345 = load i32, i32* %10, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @HIGH_PART, align 4
  %351 = call i32 @MS(i32 %349, i32 %350)
  %352 = call i8* @RTWN_SIGN4TO8(i32 %351)
  %353 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %354 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %353, i32 0, i32 1
  %355 = load i8***, i8**** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8**, i8*** %355, i64 %357
  %359 = load i8**, i8*** %358, align 8
  %360 = load i32, i32* %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8*, i8** %359, i64 %361
  store i8* %352, i8** %362, align 8
  br label %386

363:                                              ; preds = %306
  %364 = load i64, i64* %7, align 8
  %365 = inttoptr i64 %364 to i8*
  %366 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %367 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %366, i32 0, i32 1
  %368 = load i8***, i8**** %367, align 8
  %369 = load i32, i32* %8, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8**, i8*** %368, i64 %370
  %372 = load i8**, i8*** %371, align 8
  %373 = load i32, i32* %9, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*, i8** %372, i64 %374
  store i8* %365, i8** %375, align 8
  %376 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %377 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %376, i32 0, i32 2
  %378 = load i8***, i8**** %377, align 8
  %379 = load i32, i32* %8, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8**, i8*** %378, i64 %380
  %382 = load i8**, i8*** %381, align 8
  %383 = load i32, i32* %9, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8*, i8** %382, i64 %384
  store i8* %365, i8** %385, align 8
  br label %386

386:                                              ; preds = %363, %320
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %9, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %9, align 4
  %390 = load i32, i32* %10, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %10, align 4
  br label %219

392:                                              ; preds = %219
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %8, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %8, align 4
  br label %30

396:                                              ; preds = %30
  %397 = load %struct.r92e_rom*, %struct.r92e_rom** %6, align 8
  %398 = getelementptr inbounds %struct.r92e_rom, %struct.r92e_rom* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @R92C_ROM_RF1_REGULATORY, align 4
  %401 = call i32 @MS(i32 %399, i32 %400)
  %402 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  %403 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %402, i32 0, i32 0
  store i32 %401, i32* %403, align 8
  %404 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %405 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.r92e_rom*, %struct.r92e_rom** %6, align 8
  %409 = getelementptr inbounds %struct.r92e_rom, %struct.r92e_rom* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @IEEE80211_ADDR_COPY(i32 %407, i32 %410)
  ret void
}

declare dso_local i64 @RTWN_GET_ROM_VAR(i32, i64) #1

declare dso_local i8* @RTWN_SIGN4TO8(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_6__*) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
