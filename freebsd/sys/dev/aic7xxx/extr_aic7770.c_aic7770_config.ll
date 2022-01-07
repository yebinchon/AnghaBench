; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7770.c_aic7770_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7770.c_aic7770_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aic7770_identity = type { i32 (%struct.ahc_softc.0*)*, i32 }
%struct.ahc_softc.0 = type opaque

@FALSE = common dso_local global i32 0, align 4
@aic7770_chip_init = common dso_local global i32 0, align 4
@aic7770_suspend = common dso_local global i32 0, align 4
@aic7770_resume = common dso_local global i32 0, align 4
@INTDEF = common dso_local global i32 0, align 4
@VECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"aic7770_config: invalid irq setting %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EDGE_TRIG = common dso_local global i32 0, align 4
@AHC_EDGE_INTERRUPT = common dso_local global i32 0, align 4
@HA_274_BIOSCTRL = common dso_local global i32 0, align 4
@SCSICONF = common dso_local global i32 0, align 4
@CHANNEL_B_PRIMARY = common dso_local global i32 0, align 4
@BIOSMODE = common dso_local global i32 0, align 4
@BIOSDISABLED = common dso_local global i32 0, align 4
@AHC_USEDEFAULTS = common dso_local global i32 0, align 4
@AHC_WIDE = common dso_local global i32 0, align 4
@HWSCSIID = common dso_local global i32 0, align 4
@TERM_ENB = common dso_local global i32 0, align 4
@AHC_TERM_ENB_A = common dso_local global i32 0, align 4
@HSCSIID = common dso_local global i32 0, align 4
@AHC_TERM_ENB_B = common dso_local global i32 0, align 4
@HA_274_BIOSGLOBAL = common dso_local global i32 0, align 4
@HA_274_EXTENDED_TRANS = common dso_local global i32 0, align 4
@AHC_EXTENDED_TRANS_A = common dso_local global i32 0, align 4
@AHC_EXTENDED_TRANS_B = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@AUTOFLUSHDIS = common dso_local global i32 0, align 4
@HOSTCONF = common dso_local global i32 0, align 4
@BUSSPD = common dso_local global i32 0, align 4
@DFTHRSH = common dso_local global i32 0, align 4
@BUSTIME = common dso_local global i32 0, align 4
@BOFF = common dso_local global i32 0, align 4
@BCTL = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aic7770_config(%struct.ahc_softc* %0, %struct.aic7770_identity* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca %struct.aic7770_identity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store %struct.aic7770_identity* %1, %struct.aic7770_identity** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.aic7770_identity*, %struct.aic7770_identity** %6, align 8
  %17 = getelementptr inbounds %struct.aic7770_identity, %struct.aic7770_identity* %16, i32 0, i32 0
  %18 = load i32 (%struct.ahc_softc.0*)*, i32 (%struct.ahc_softc.0*)** %17, align 8
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %20 = bitcast %struct.ahc_softc* %19 to %struct.ahc_softc.0*
  %21 = call i32 %18(%struct.ahc_softc.0* %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %282

26:                                               ; preds = %3
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @aic7770_map_registers(%struct.ahc_softc* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %282

34:                                               ; preds = %26
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @ahc_intr_enable(%struct.ahc_softc* %35, i32 %36)
  %38 = load %struct.aic7770_identity*, %struct.aic7770_identity** %6, align 8
  %39 = getelementptr inbounds %struct.aic7770_identity, %struct.aic7770_identity* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %44 = call i32 @ahc_softc_init(%struct.ahc_softc* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %282

49:                                               ; preds = %34
  %50 = load i32, i32* @aic7770_chip_init, align 4
  %51 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %52 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @aic7770_suspend, align 4
  %54 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %55 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @aic7770_resume, align 4
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %58 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i32 @ahc_reset(%struct.ahc_softc* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %282

66:                                               ; preds = %49
  %67 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %68 = load i32, i32* @INTDEF, align 4
  %69 = call i32 @ahc_inb(%struct.ahc_softc* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @VECTOR, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  switch i32 %73, label %75 [
    i32 9, label %74
    i32 10, label %74
    i32 11, label %74
    i32 12, label %74
    i32 14, label %74
    i32 15, label %74
  ]

74:                                               ; preds = %66, %66, %66, %66, %66, %66
  br label %79

75:                                               ; preds = %66
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %4, align 4
  br label %282

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @EDGE_TRIG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @AHC_EDGE_INTERRUPT, align 4
  %86 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %87 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %92 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 129
  switch i32 %94, label %204 [
    i32 129, label %95
    i32 128, label %201
  ]

95:                                               ; preds = %90
  %96 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %97 = load i32, i32* @HA_274_BIOSCTRL, align 4
  %98 = call i32 @ahc_inb(%struct.ahc_softc* %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %100 = load i32, i32* @SCSICONF, align 4
  %101 = call i32 @ahc_inb(%struct.ahc_softc* %99, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %103 = load i32, i32* @SCSICONF, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 @ahc_inb(%struct.ahc_softc* %102, i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @CHANNEL_B_PRIMARY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %95
  %111 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %112 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, 1
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %110, %95
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @BIOSMODE, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @BIOSDISABLED, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* @AHC_USEDEFAULTS, align 4
  %123 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %124 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %185

127:                                              ; preds = %115
  %128 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %129 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @AHC_WIDE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %127
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* @HWSCSIID, align 4
  %137 = and i32 %135, %136
  %138 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %139 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @TERM_ENB, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %134
  %145 = load i32, i32* @AHC_TERM_ENB_A, align 4
  %146 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %147 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %134
  br label %184

151:                                              ; preds = %127
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @HSCSIID, align 4
  %154 = and i32 %152, %153
  %155 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %156 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @HSCSIID, align 4
  %159 = and i32 %157, %158
  %160 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %161 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @TERM_ENB, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %151
  %167 = load i32, i32* @AHC_TERM_ENB_A, align 4
  %168 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %169 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %166, %151
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* @TERM_ENB, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* @AHC_TERM_ENB_B, align 4
  %179 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %180 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %172
  br label %184

184:                                              ; preds = %183, %150
  br label %185

185:                                              ; preds = %184, %121
  %186 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %187 = load i32, i32* @HA_274_BIOSGLOBAL, align 4
  %188 = call i32 @ahc_inb(%struct.ahc_softc* %186, i32 %187)
  %189 = load i32, i32* @HA_274_EXTENDED_TRANS, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %185
  %193 = load i32, i32* @AHC_EXTENDED_TRANS_A, align 4
  %194 = load i32, i32* @AHC_EXTENDED_TRANS_B, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %197 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %192, %185
  br label %205

201:                                              ; preds = %90
  %202 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %203 = call i32 @aha2840_load_seeprom(%struct.ahc_softc* %202)
  store i32 %203, i32* %9, align 4
  br label %205

204:                                              ; preds = %90
  br label %205

205:                                              ; preds = %204, %201, %200
  %206 = load i32, i32* %9, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %210 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %209, i32 0, i32 6
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* @M_DEVBUF, align 4
  %213 = call i32 @free(i32* %211, i32 %212)
  %214 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %215 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %214, i32 0, i32 6
  store i32* null, i32** %215, align 8
  br label %216

216:                                              ; preds = %208, %205
  %217 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %218 = load i32, i32* @SBLKCTL, align 4
  %219 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %220 = load i32, i32* @SBLKCTL, align 4
  %221 = call i32 @ahc_inb(%struct.ahc_softc* %219, i32 %220)
  %222 = load i32, i32* @AUTOFLUSHDIS, align 4
  %223 = xor i32 %222, -1
  %224 = and i32 %221, %223
  %225 = call i32 @ahc_outb(%struct.ahc_softc* %217, i32 %218, i32 %224)
  %226 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %227 = load i32, i32* @HOSTCONF, align 4
  %228 = call i32 @ahc_inb(%struct.ahc_softc* %226, i32 %227)
  store i32 %228, i32* %10, align 4
  %229 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %230 = load i32, i32* @BUSSPD, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @DFTHRSH, align 4
  %233 = and i32 %231, %232
  %234 = call i32 @ahc_outb(%struct.ahc_softc* %229, i32 %230, i32 %233)
  %235 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %236 = load i32, i32* @BUSTIME, align 4
  %237 = load i32, i32* %10, align 4
  %238 = shl i32 %237, 2
  %239 = load i32, i32* @BOFF, align 4
  %240 = and i32 %238, %239
  %241 = call i32 @ahc_outb(%struct.ahc_softc* %235, i32 %236, i32 %240)
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* @DFTHRSH, align 4
  %244 = and i32 %242, %243
  %245 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %246 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 0
  store i32 %244, i32* %248, align 4
  %249 = load i32, i32* %10, align 4
  %250 = shl i32 %249, 2
  %251 = load i32, i32* @BOFF, align 4
  %252 = and i32 %250, %251
  %253 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %254 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 1
  store i32 %252, i32* %256, align 4
  %257 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %258 = call i32 @ahc_init(%struct.ahc_softc* %257)
  store i32 %258, i32* %8, align 4
  %259 = load i32, i32* %8, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %216
  %262 = load i32, i32* %8, align 4
  store i32 %262, i32* %4, align 4
  br label %282

263:                                              ; preds = %216
  %264 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %265 = load i32, i32* %11, align 4
  %266 = call i32 @aic7770_map_int(%struct.ahc_softc* %264, i32 %265)
  store i32 %266, i32* %8, align 4
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %263
  %270 = load i32, i32* %8, align 4
  store i32 %270, i32* %4, align 4
  br label %282

271:                                              ; preds = %263
  %272 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %273 = call i32 @ahc_lock(%struct.ahc_softc* %272)
  %274 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %275 = call i32 @ahc_softc_insert(%struct.ahc_softc* %274)
  %276 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %277 = load i32, i32* @BCTL, align 4
  %278 = load i32, i32* @ENABLE, align 4
  %279 = call i32 @ahc_outb(%struct.ahc_softc* %276, i32 %277, i32 %278)
  %280 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %281 = call i32 @ahc_unlock(%struct.ahc_softc* %280)
  store i32 0, i32* %4, align 4
  br label %282

282:                                              ; preds = %271, %269, %261, %75, %64, %47, %32, %24
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local i32 @aic7770_map_registers(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_intr_enable(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_softc_init(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_reset(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @aha2840_load_seeprom(%struct.ahc_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_init(%struct.ahc_softc*) #1

declare dso_local i32 @aic7770_map_int(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_lock(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_softc_insert(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
