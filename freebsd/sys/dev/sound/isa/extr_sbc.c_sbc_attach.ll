; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbc_softc = type { i32, i8*, i8*, i8*, i32*, %struct.TYPE_2__*, %struct.resource**, i32*, %struct.resource**, i32 }
%struct.TYPE_2__ = type { %struct.sbc_softc* }
%struct.resource = type { i32 }
%struct.sndcard_func = type { i32 }

@DV_F_DUAL_DMA = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@DV_F_DRQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"alloc_resource\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sb_reset_dsp\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"sb_identify_board\00", align 1
@BD_F_DUP_MIDI = common dso_local global i32 0, align 4
@BD_F_MIX_CT1335 = common dso_local global i32 0, align 4
@BD_F_ESS = common dso_local global i32 0, align 4
@BD_F_MIX_CT1345 = common dso_local global i32 0, align 4
@BD_F_SB16 = common dso_local global i32 0, align 4
@BD_F_MIX_CT1745 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"bad irq (5/7/9/10 valid)\00", align 1
@IRQ_NR = common dso_local global i32 0, align 4
@DMA_NR = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"setting card to irq %d, drq %d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c", %d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BD_F_SB16X = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"setup_intr\00", align 1
@IRQ_MAX = common dso_local global i32 0, align 4
@sbc_intr = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SCF_PCM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@SCF_MIDI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"midi\00", align 1
@SCF_SYNTH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sbc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sbc_softc*, align 8
  %6 = alloca %struct.sndcard_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.resource*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @isa_get_logicalid(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_flags(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @DV_F_DUAL_DMA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SYS_RES_DRQ, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @DV_F_DRQ_MASK, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @bus_set_resource(i32 %28, i32 %29, i32 1, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %27, %22, %1
  %35 = load i32, i32* %3, align 4
  %36 = call %struct.sbc_softc* @device_get_softc(i32 %35)
  store %struct.sbc_softc* %36, %struct.sbc_softc** %5, align 8
  %37 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %38 = call i32 @bzero(%struct.sbc_softc* %37, i32 80)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %41 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %43 = call i32 @sbc_lockinit(%struct.sbc_softc* %42)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %44 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %45 = call i64 @alloc_resource(%struct.sbc_softc* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %377

48:                                               ; preds = %34
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %49 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %50 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @sb_reset_dsp(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %377

57:                                               ; preds = %48
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %58 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %59 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %58, i32 0, i32 7
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sb_identify_board(i32 %62)
  %64 = and i32 %63, 4095
  %65 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %66 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %68 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %377

72:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 18874368
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %77 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %78, 1024
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %82 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %81, i32 0, i32 0
  store i32 1177, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %75, %72
  %84 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %85 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 3840
  %88 = ashr i32 %87, 8
  switch i32 %88, label %257 [
    i32 1, label %89
    i32 2, label %90
    i32 5, label %103
    i32 3, label %109
    i32 4, label %115
  ]

89:                                               ; preds = %83
  br label %257

90:                                               ; preds = %83
  %91 = load i32, i32* @BD_F_DUP_MIDI, align 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %95 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 512
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i32, i32* @BD_F_MIX_CT1335, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %98, %90
  br label %257

103:                                              ; preds = %83
  %104 = load i32, i32* @BD_F_ESS, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %108 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %107, i32 0, i32 0
  store i32 769, i32* %108, align 8
  br label %109

109:                                              ; preds = %83, %103
  %110 = load i32, i32* @BD_F_DUP_MIDI, align 4
  %111 = load i32, i32* @BD_F_MIX_CT1345, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %257

115:                                              ; preds = %83
  %116 = load i32, i32* @BD_F_SB16, align 4
  %117 = load i32, i32* @BD_F_MIX_CT1745, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  %121 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %122 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %121, i32 0, i32 8
  %123 = load %struct.resource**, %struct.resource*** %122, align 8
  %124 = getelementptr inbounds %struct.resource*, %struct.resource** %123, i64 0
  %125 = load %struct.resource*, %struct.resource** %124, align 8
  %126 = icmp ne %struct.resource* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %115
  %128 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %129 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %128, i32 0, i32 8
  %130 = load %struct.resource**, %struct.resource*** %129, align 8
  %131 = getelementptr inbounds %struct.resource*, %struct.resource** %130, i64 0
  %132 = load %struct.resource*, %struct.resource** %131, align 8
  %133 = call i32 @rman_get_start(%struct.resource* %132)
  store i32 %133, i32* %11, align 4
  br label %135

134:                                              ; preds = %115
  store i32 -1, i32* %11, align 4
  br label %135

135:                                              ; preds = %134, %127
  %136 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %137 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %136, i32 0, i32 8
  %138 = load %struct.resource**, %struct.resource*** %137, align 8
  %139 = getelementptr inbounds %struct.resource*, %struct.resource** %138, i64 1
  %140 = load %struct.resource*, %struct.resource** %139, align 8
  %141 = icmp ne %struct.resource* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %144 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %143, i32 0, i32 8
  %145 = load %struct.resource**, %struct.resource*** %144, align 8
  %146 = getelementptr inbounds %struct.resource*, %struct.resource** %145, i64 1
  %147 = load %struct.resource*, %struct.resource** %146, align 8
  %148 = call i32 @rman_get_start(%struct.resource* %147)
  store i32 %148, i32* %10, align 4
  br label %151

149:                                              ; preds = %135
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %149, %142
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %190, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %190

158:                                              ; preds = %154
  %159 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %160 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %159, i32 0, i32 8
  %161 = load %struct.resource**, %struct.resource*** %160, align 8
  %162 = getelementptr inbounds %struct.resource*, %struct.resource** %161, i64 0
  %163 = load %struct.resource*, %struct.resource** %162, align 8
  store %struct.resource* %163, %struct.resource** %15, align 8
  %164 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %165 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %164, i32 0, i32 8
  %166 = load %struct.resource**, %struct.resource*** %165, align 8
  %167 = getelementptr inbounds %struct.resource*, %struct.resource** %166, i64 1
  %168 = load %struct.resource*, %struct.resource** %167, align 8
  %169 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %170 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %169, i32 0, i32 8
  %171 = load %struct.resource**, %struct.resource*** %170, align 8
  %172 = getelementptr inbounds %struct.resource*, %struct.resource** %171, i64 0
  store %struct.resource* %168, %struct.resource** %172, align 8
  %173 = load %struct.resource*, %struct.resource** %15, align 8
  %174 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %175 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %174, i32 0, i32 8
  %176 = load %struct.resource**, %struct.resource*** %175, align 8
  %177 = getelementptr inbounds %struct.resource*, %struct.resource** %176, i64 1
  store %struct.resource* %173, %struct.resource** %177, align 8
  %178 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %179 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %178, i32 0, i32 8
  %180 = load %struct.resource**, %struct.resource*** %179, align 8
  %181 = getelementptr inbounds %struct.resource*, %struct.resource** %180, i64 0
  %182 = load %struct.resource*, %struct.resource** %181, align 8
  %183 = call i32 @rman_get_start(%struct.resource* %182)
  store i32 %183, i32* %11, align 4
  %184 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %185 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %184, i32 0, i32 8
  %186 = load %struct.resource**, %struct.resource*** %185, align 8
  %187 = getelementptr inbounds %struct.resource*, %struct.resource** %186, i64 1
  %188 = load %struct.resource*, %struct.resource** %187, align 8
  %189 = call i32 @rman_get_start(%struct.resource* %188)
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %158, %154, %151
  store i32 -1, i32* %12, align 4
  %191 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %192 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %191, i32 0, i32 6
  %193 = load %struct.resource**, %struct.resource*** %192, align 8
  %194 = getelementptr inbounds %struct.resource*, %struct.resource** %193, i64 0
  %195 = load %struct.resource*, %struct.resource** %194, align 8
  %196 = call i32 @rman_get_start(%struct.resource* %195)
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp eq i32 %197, 5
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  store i32 2, i32* %12, align 4
  br label %215

200:                                              ; preds = %190
  %201 = load i32, i32* %13, align 4
  %202 = icmp eq i32 %201, 7
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 4, i32* %12, align 4
  br label %214

204:                                              ; preds = %200
  %205 = load i32, i32* %13, align 4
  %206 = icmp eq i32 %205, 9
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 1, i32* %12, align 4
  br label %213

208:                                              ; preds = %204
  %209 = load i32, i32* %13, align 4
  %210 = icmp eq i32 %209, 10
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 8, i32* %12, align 4
  br label %212

212:                                              ; preds = %211, %208
  br label %213

213:                                              ; preds = %212, %207
  br label %214

214:                                              ; preds = %213, %203
  br label %215

215:                                              ; preds = %214, %199
  %216 = load i32, i32* %12, align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %377

219:                                              ; preds = %215
  %220 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %221 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %220, i32 0, i32 7
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @IRQ_NR, align 4
  %226 = load i32, i32* %12, align 4
  %227 = call i32 @sb_setmixer(i32 %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %219
  %229 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %230 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %229, i32 0, i32 7
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @DMA_NR, align 4
  %235 = load i32, i32* %10, align 4
  %236 = shl i32 1, %235
  %237 = load i32, i32* %11, align 4
  %238 = shl i32 1, %237
  %239 = or i32 %236, %238
  %240 = call i32 @sb_setmixer(i32 %233, i32 %234, i32 %239)
  %241 = load i32, i32* @bootverbose, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %256

243:                                              ; preds = %228
  %244 = load i32, i32* %3, align 4
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %11, align 4
  %247 = call i32 (i32, i8*, ...) @device_printf(i32 %244, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %245, i32 %246)
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load i32, i32* %10, align 4
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %251, %243
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %256

256:                                              ; preds = %254, %228
  br label %257

257:                                              ; preds = %83, %256, %109, %102, %89
  %258 = load i32, i32* %7, align 4
  switch i32 %258, label %263 [
    i32 1124109326, label %259
    i32 18874368, label %259
    i32 16777216, label %259
  ]

259:                                              ; preds = %257, %257, %257
  %260 = load i32, i32* @BD_F_SB16X, align 4
  %261 = load i32, i32* %9, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %9, align 4
  br label %263

263:                                              ; preds = %257, %259
  %264 = load i32, i32* %9, align 4
  %265 = shl i32 %264, 16
  %266 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %267 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %14, align 4
  br label %270

270:                                              ; preds = %308, %263
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* @IRQ_MAX, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %311

274:                                              ; preds = %270
  %275 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %276 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %277 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %276, i32 0, i32 5
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = load i32, i32* %14, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  store %struct.sbc_softc* %275, %struct.sbc_softc** %282, align 8
  %283 = load i32, i32* %3, align 4
  %284 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %285 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %284, i32 0, i32 6
  %286 = load %struct.resource**, %struct.resource*** %285, align 8
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.resource*, %struct.resource** %286, i64 %288
  %290 = load %struct.resource*, %struct.resource** %289, align 8
  %291 = load i32, i32* @sbc_intr, align 4
  %292 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %293 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %292, i32 0, i32 5
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = load i32, i32* %14, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i64 %296
  %298 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %299 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %298, i32 0, i32 4
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = call i64 @snd_setup_intr(i32 %283, %struct.resource* %290, i32 0, i32 %291, %struct.TYPE_2__* %297, i32* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %274
  br label %377

307:                                              ; preds = %274
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %14, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %14, align 4
  br label %270

311:                                              ; preds = %270
  %312 = load i32, i32* @M_DEVBUF, align 4
  %313 = load i32, i32* @M_NOWAIT, align 4
  %314 = load i32, i32* @M_ZERO, align 4
  %315 = or i32 %313, %314
  %316 = call %struct.sndcard_func* @malloc(i32 4, i32 %312, i32 %315)
  store %struct.sndcard_func* %316, %struct.sndcard_func** %6, align 8
  %317 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %318 = icmp eq %struct.sndcard_func* %317, null
  br i1 %318, label %319, label %320

319:                                              ; preds = %311
  br label %377

320:                                              ; preds = %311
  %321 = load i32, i32* @SCF_PCM, align 4
  %322 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %323 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %322, i32 0, i32 0
  store i32 %321, i32* %323, align 4
  %324 = load i32, i32* %3, align 4
  %325 = call i8* @device_add_child(i32 %324, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 -1)
  %326 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %327 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %326, i32 0, i32 3
  store i8* %325, i8** %327, align 8
  %328 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %329 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %328, i32 0, i32 3
  %330 = load i8*, i8** %329, align 8
  %331 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %332 = call i32 @device_set_ivars(i8* %330, %struct.sndcard_func* %331)
  %333 = load i32, i32* @M_DEVBUF, align 4
  %334 = load i32, i32* @M_NOWAIT, align 4
  %335 = load i32, i32* @M_ZERO, align 4
  %336 = or i32 %334, %335
  %337 = call %struct.sndcard_func* @malloc(i32 4, i32 %333, i32 %336)
  store %struct.sndcard_func* %337, %struct.sndcard_func** %6, align 8
  %338 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %339 = icmp eq %struct.sndcard_func* %338, null
  br i1 %339, label %340, label %341

340:                                              ; preds = %320
  br label %377

341:                                              ; preds = %320
  %342 = load i32, i32* @SCF_MIDI, align 4
  %343 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %344 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 4
  %345 = load i32, i32* %3, align 4
  %346 = call i8* @device_add_child(i32 %345, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  %347 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %348 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %347, i32 0, i32 2
  store i8* %346, i8** %348, align 8
  %349 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %350 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %349, i32 0, i32 2
  %351 = load i8*, i8** %350, align 8
  %352 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %353 = call i32 @device_set_ivars(i8* %351, %struct.sndcard_func* %352)
  %354 = load i32, i32* @M_DEVBUF, align 4
  %355 = load i32, i32* @M_NOWAIT, align 4
  %356 = load i32, i32* @M_ZERO, align 4
  %357 = or i32 %355, %356
  %358 = call %struct.sndcard_func* @malloc(i32 4, i32 %354, i32 %357)
  store %struct.sndcard_func* %358, %struct.sndcard_func** %6, align 8
  %359 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %360 = icmp eq %struct.sndcard_func* %359, null
  br i1 %360, label %361, label %362

361:                                              ; preds = %341
  br label %377

362:                                              ; preds = %341
  %363 = load i32, i32* @SCF_SYNTH, align 4
  %364 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %365 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %364, i32 0, i32 0
  store i32 %363, i32* %365, align 4
  %366 = load i32, i32* %3, align 4
  %367 = call i8* @device_add_child(i32 %366, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  %368 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %369 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %368, i32 0, i32 1
  store i8* %367, i8** %369, align 8
  %370 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %371 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %370, i32 0, i32 1
  %372 = load i8*, i8** %371, align 8
  %373 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %374 = call i32 @device_set_ivars(i8* %372, %struct.sndcard_func* %373)
  %375 = load i32, i32* %3, align 4
  %376 = call i32 @bus_generic_attach(i32 %375)
  store i32 0, i32* %2, align 4
  br label %388

377:                                              ; preds = %361, %340, %319, %306, %218, %71, %56, %47
  %378 = load i8*, i8** %4, align 8
  %379 = icmp ne i8* %378, null
  br i1 %379, label %380, label %384

380:                                              ; preds = %377
  %381 = load i32, i32* %3, align 4
  %382 = load i8*, i8** %4, align 8
  %383 = call i32 (i32, i8*, ...) @device_printf(i32 %381, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %382)
  br label %384

384:                                              ; preds = %380, %377
  %385 = load %struct.sbc_softc*, %struct.sbc_softc** %5, align 8
  %386 = call i32 @release_resource(%struct.sbc_softc* %385)
  %387 = load i32, i32* @ENXIO, align 4
  store i32 %387, i32* %2, align 4
  br label %388

388:                                              ; preds = %384, %362
  %389 = load i32, i32* %2, align 4
  ret i32 %389
}

declare dso_local i32 @isa_get_logicalid(i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local %struct.sbc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.sbc_softc*, i32) #1

declare dso_local i32 @sbc_lockinit(%struct.sbc_softc*) #1

declare dso_local i64 @alloc_resource(%struct.sbc_softc*) #1

declare dso_local i64 @sb_reset_dsp(i32) #1

declare dso_local i32 @sb_identify_board(i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @sb_setmixer(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @snd_setup_intr(i32, %struct.resource*, i32, i32, %struct.TYPE_2__*, i32*) #1

declare dso_local %struct.sndcard_func* @malloc(i32, i32, i32) #1

declare dso_local i8* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i8*, %struct.sndcard_func*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @release_resource(%struct.sbc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
