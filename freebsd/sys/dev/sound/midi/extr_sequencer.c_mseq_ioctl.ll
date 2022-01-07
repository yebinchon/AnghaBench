; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_mseq_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_mseq_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.seq_softc* }
%struct.seq_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.synth_info = type { i32, float*, i32, i32, i32 }
%struct.midi_info = type { i32, float*, i32, i32, i32 }

@EV_SZ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"seq_ioctl: unit %d, cmd %s.\0A\00", align 1
@cmdtab_seqioctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"seq_ioctl: gettime %d.\0A\00", align 1
@TMR_TEMPO = common dso_local global i32 0, align 4
@TMR_TIMERBASE = common dso_local global i32 0, align 4
@TMR_START = common dso_local global i32 0, align 4
@TMR_STOP = common dso_local global i32 0, align 4
@TMR_CONTINUE = common dso_local global i32 0, align 4
@EV_TIMING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"seq_ioctl: SNDCTL_TMR_SELECT not supported\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"seq_ioctl: ctrlrate %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"seq_ioctl: synths %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"seq_ioctl: midis %d.\0A\00", align 1
@SYNTH_TYPE_MIDI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"seq_ioctl: water %d.\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"seq_ioctl: pretime %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"seq_ioctl: unsupported IOCTL %ld.\0A\00", align 1
@LOOKUP_OPEN = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@SND_DEV_MIDIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mseq_ioctl(%struct.cdev* %0, i32 %1, i32* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.seq_softc*, align 8
  %16 = alloca %struct.synth_info*, align 8
  %17 = alloca %struct.midi_info*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %23 = load %struct.cdev*, %struct.cdev** %7, align 8
  %24 = getelementptr inbounds %struct.cdev, %struct.cdev* %23, i32 0, i32 0
  %25 = load %struct.seq_softc*, %struct.seq_softc** %24, align 8
  store %struct.seq_softc* %25, %struct.seq_softc** %15, align 8
  %26 = load i32, i32* @EV_SZ, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %18, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %19, align 8
  %30 = load i32, i32* @EV_SZ, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %33 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %34 = icmp eq %struct.seq_softc* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %469

37:                                               ; preds = %5
  %38 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %39 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @cmdtab_seqioctl, align 4
  %43 = call i8* @midi_cmdname(i32 %41, i32 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %43)
  %45 = call i32 (i32, ...) @SEQ_DEBUG(i32 6, i32 %44)
  store i32 0, i32* %13, align 4
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %462 [
    i32 147, label %47
    i32 134, label %61
    i32 132, label %61
    i32 129, label %62
    i32 128, label %84
    i32 131, label %106
    i32 130, label %109
    i32 135, label %112
    i32 133, label %136
    i32 140, label %140
    i32 143, label %154
    i32 142, label %154
    i32 139, label %163
    i32 150, label %170
    i32 145, label %191
    i32 146, label %206
    i32 144, label %229
    i32 137, label %268
    i32 154, label %341
    i32 138, label %410
    i32 153, label %434
    i32 155, label %461
    i32 151, label %461
    i32 152, label %461
  ]

47:                                               ; preds = %37
  %48 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %49 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %48, i32 0, i32 5
  %50 = call i32 @mtx_lock(i32* %49)
  %51 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %52 = call i32 @timer_now(%struct.seq_softc* %51)
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %55 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %54, i32 0, i32 5
  %56 = call i32 @mtx_unlock(i32* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = call i32 (i32, ...) @SEQ_DEBUG(i32 6, i32 %59)
  store i32 0, i32* %13, align 4
  br label %467

61:                                               ; preds = %37, %37
  store i32 0, i32* %13, align 4
  br label %467

62:                                               ; preds = %37
  %63 = load i32, i32* @TMR_TEMPO, align 4
  %64 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 %67, i32* %68, align 16
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds i32, i32* %29, i64 5
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = getelementptr inbounds i32, i32* %29, i64 6
  store i32 %77, i32* %78, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 24
  %82 = and i32 %81, 255
  %83 = getelementptr inbounds i32, i32* %29, i64 7
  store i32 %82, i32* %83, align 4
  br label %115

84:                                               ; preds = %37
  %85 = load i32, i32* @TMR_TIMERBASE, align 4
  %86 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 %89, i32* %90, align 16
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 255
  %95 = getelementptr inbounds i32, i32* %29, i64 5
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = getelementptr inbounds i32, i32* %29, i64 6
  store i32 %99, i32* %100, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 24
  %104 = and i32 %103, 255
  %105 = getelementptr inbounds i32, i32* %29, i64 7
  store i32 %104, i32* %105, align 4
  br label %115

106:                                              ; preds = %37
  %107 = load i32, i32* @TMR_START, align 4
  %108 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %107, i32* %108, align 4
  br label %115

109:                                              ; preds = %37
  %110 = load i32, i32* @TMR_STOP, align 4
  %111 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %110, i32* %111, align 4
  br label %115

112:                                              ; preds = %37
  %113 = load i32, i32* @TMR_CONTINUE, align 4
  %114 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %109, %106, %84, %62
  %116 = load i32, i32* @EV_TIMING, align 4
  %117 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %116, i32* %117, align 16
  %118 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %119 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %118, i32 0, i32 5
  %120 = call i32 @mtx_lock(i32* %119)
  %121 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %122 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %13, align 4
  %127 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %128 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %127, i32 0, i32 5
  %129 = call i32 @mtx_unlock(i32* %128)
  br label %467

130:                                              ; preds = %115
  %131 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %132 = call i32 @seq_processevent(%struct.seq_softc* %131, i32* %29)
  %133 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %134 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %133, i32 0, i32 5
  %135 = call i32 @mtx_unlock(i32* %134)
  br label %467

136:                                              ; preds = %37
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %138 = call i32 (i32, ...) @SEQ_DEBUG(i32 2, i32 %137)
  %139 = load i32, i32* @EINVAL, align 4
  store i32 %139, i32* %13, align 4
  br label %467

140:                                              ; preds = %37
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @O_RDONLY, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 0, i32* %13, align 4
  br label %467

145:                                              ; preds = %140
  %146 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %147 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %146, i32 0, i32 5
  %148 = call i32 @mtx_lock(i32* %147)
  %149 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %150 = call i32 @seq_sync(%struct.seq_softc* %149)
  store i32 %150, i32* %13, align 4
  %151 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %152 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %151, i32 0, i32 5
  %153 = call i32 @mtx_unlock(i32* %152)
  br label %467

154:                                              ; preds = %37, %37
  %155 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %156 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %155, i32 0, i32 5
  %157 = call i32 @mtx_lock(i32* %156)
  %158 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %159 = call i32 @seq_reset(%struct.seq_softc* %158)
  %160 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %161 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %160, i32 0, i32 5
  %162 = call i32 @mtx_unlock(i32* %161)
  store i32 0, i32* %13, align 4
  br label %467

163:                                              ; preds = %37
  %164 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %165 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %164, i32 0, i32 5
  %166 = call i32 @mtx_lock(i32* %165)
  %167 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %168 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %167, i32 0, i32 5
  %169 = call i32 @mtx_unlock(i32* %168)
  br label %467

170:                                              ; preds = %37
  %171 = load i32*, i32** %9, align 8
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @EINVAL, align 4
  store i32 %175, i32* %13, align 4
  br label %467

176:                                              ; preds = %170
  %177 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %178 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %177, i32 0, i32 5
  %179 = call i32 @mtx_lock(i32* %178)
  %180 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %181 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %9, align 8
  store i32 %182, i32* %183, align 4
  %184 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %185 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %184, i32 0, i32 5
  %186 = call i32 @mtx_unlock(i32* %185)
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = call i32 (i32, ...) @SEQ_DEBUG(i32 3, i32 %189)
  store i32 0, i32* %13, align 4
  br label %467

191:                                              ; preds = %37
  %192 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %193 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %192, i32 0, i32 5
  %194 = call i32 @mtx_lock(i32* %193)
  %195 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %196 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** %9, align 8
  store i32 %197, i32* %198, align 4
  %199 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %200 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %199, i32 0, i32 5
  %201 = call i32 @mtx_unlock(i32* %200)
  %202 = load i32*, i32** %9, align 8
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %203)
  %205 = call i32 (i32, ...) @SEQ_DEBUG(i32 3, i32 %204)
  store i32 0, i32* %13, align 4
  br label %467

206:                                              ; preds = %37
  %207 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %208 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %207, i32 0, i32 5
  %209 = call i32 @mtx_lock(i32* %208)
  %210 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %211 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i32*, i32** %9, align 8
  store i32 0, i32* %215, align 4
  br label %221

216:                                              ; preds = %206
  %217 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %218 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32*, i32** %9, align 8
  store i32 %219, i32* %220, align 4
  br label %221

221:                                              ; preds = %216, %214
  %222 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %223 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %222, i32 0, i32 5
  %224 = call i32 @mtx_unlock(i32* %223)
  %225 = load i32*, i32** %9, align 8
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %226)
  %228 = call i32 (i32, ...) @SEQ_DEBUG(i32 3, i32 %227)
  store i32 0, i32* %13, align 4
  br label %467

229:                                              ; preds = %37
  store i32 0, i32* %13, align 4
  br label %230

230:                                              ; preds = %241, %229
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* @EV_SZ, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %230
  %235 = load i32*, i32** %9, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %29, i64 %239
  store i32 %237, i32* %240, align 4
  br label %241

241:                                              ; preds = %234
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %13, align 4
  br label %230

244:                                              ; preds = %230
  %245 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %246 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %245, i32 0, i32 5
  %247 = call i32 @mtx_lock(i32* %246)
  %248 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %249 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %248, i32 0, i32 8
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %244
  %253 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %254 = call i32 @seq_processevent(%struct.seq_softc* %253, i32* %29)
  store i32 %254, i32* %13, align 4
  br label %264

255:                                              ; preds = %244
  %256 = call i32 @seq_convertold(i32* %29, i32* %32)
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %260 = call i32 @seq_processevent(%struct.seq_softc* %259, i32* %32)
  store i32 %260, i32* %13, align 4
  br label %263

261:                                              ; preds = %255
  %262 = load i32, i32* @EINVAL, align 4
  store i32 %262, i32* %13, align 4
  br label %263

263:                                              ; preds = %261, %258
  br label %264

264:                                              ; preds = %263, %252
  %265 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %266 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %265, i32 0, i32 5
  %267 = call i32 @mtx_unlock(i32* %266)
  br label %467

268:                                              ; preds = %37
  %269 = load i32*, i32** %9, align 8
  %270 = bitcast i32* %269 to %struct.synth_info*
  store %struct.synth_info* %270, %struct.synth_info** %16, align 8
  %271 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %272 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  store i32 %273, i32* %12, align 4
  %274 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %275 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %274, i32 0, i32 5
  %276 = call i32 @mtx_lock(i32* %275)
  %277 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %278 = load i32, i32* %12, align 4
  %279 = call i32 @seq_fetch_mid(%struct.seq_softc* %277, i32 %278, i32* %21)
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %335

281:                                              ; preds = %268
  %282 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %283 = call i32 @bzero(%struct.synth_info* %282, i32 32)
  %284 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %285 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %284, i32 0, i32 1
  %286 = load float*, float** %285, align 8
  %287 = getelementptr inbounds float, float* %286, i64 0
  store float 1.020000e+02, float* %287, align 4
  %288 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %289 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %288, i32 0, i32 1
  %290 = load float*, float** %289, align 8
  %291 = getelementptr inbounds float, float* %290, i64 1
  store float 9.700000e+01, float* %291, align 4
  %292 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %293 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %292, i32 0, i32 1
  %294 = load float*, float** %293, align 8
  %295 = getelementptr inbounds float, float* %294, i64 2
  store float 1.070000e+02, float* %295, align 4
  %296 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %297 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %296, i32 0, i32 1
  %298 = load float*, float** %297, align 8
  %299 = getelementptr inbounds float, float* %298, i64 3
  store float 1.010000e+02, float* %299, align 4
  %300 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %301 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %300, i32 0, i32 1
  %302 = load float*, float** %301, align 8
  %303 = getelementptr inbounds float, float* %302, i64 4
  store float 1.150000e+02, float* %303, align 4
  %304 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %305 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %304, i32 0, i32 1
  %306 = load float*, float** %305, align 8
  %307 = getelementptr inbounds float, float* %306, i64 5
  store float 1.210000e+02, float* %307, align 4
  %308 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %309 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %308, i32 0, i32 1
  %310 = load float*, float** %309, align 8
  %311 = getelementptr inbounds float, float* %310, i64 6
  store float 1.100000e+02, float* %311, align 4
  %312 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %313 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %312, i32 0, i32 1
  %314 = load float*, float** %313, align 8
  %315 = getelementptr inbounds float, float* %314, i64 7
  store float 1.160000e+02, float* %315, align 4
  %316 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %317 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %316, i32 0, i32 1
  %318 = load float*, float** %317, align 8
  %319 = getelementptr inbounds float, float* %318, i64 8
  store float 1.040000e+02, float* %319, align 4
  %320 = load i32, i32* %12, align 4
  %321 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %322 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %321, i32 0, i32 0
  store i32 %320, i32* %322, align 8
  %323 = load i32, i32* @SYNTH_TYPE_MIDI, align 4
  %324 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %325 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 8
  %326 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %327 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %326, i32 0, i32 7
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %12, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.synth_info*, %struct.synth_info** %16, align 8
  %334 = getelementptr inbounds %struct.synth_info, %struct.synth_info* %333, i32 0, i32 3
  store i32 %332, i32* %334, align 4
  store i32 0, i32* %13, align 4
  br label %337

335:                                              ; preds = %268
  %336 = load i32, i32* @EINVAL, align 4
  store i32 %336, i32* %13, align 4
  br label %337

337:                                              ; preds = %335, %281
  %338 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %339 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %338, i32 0, i32 5
  %340 = call i32 @mtx_unlock(i32* %339)
  br label %467

341:                                              ; preds = %37
  %342 = load i32*, i32** %9, align 8
  %343 = bitcast i32* %342 to %struct.midi_info*
  store %struct.midi_info* %343, %struct.midi_info** %17, align 8
  %344 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %345 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  store i32 %346, i32* %12, align 4
  %347 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %348 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %347, i32 0, i32 5
  %349 = call i32 @mtx_lock(i32* %348)
  %350 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %351 = load i32, i32* %12, align 4
  %352 = call i32 @seq_fetch_mid(%struct.seq_softc* %350, i32 %351, i32* %21)
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %404

354:                                              ; preds = %341
  %355 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %356 = bitcast %struct.midi_info* %355 to %struct.synth_info*
  %357 = call i32 @bzero(%struct.synth_info* %356, i32 32)
  %358 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %359 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %358, i32 0, i32 1
  %360 = load float*, float** %359, align 8
  %361 = getelementptr inbounds float, float* %360, i64 0
  store float 1.020000e+02, float* %361, align 4
  %362 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %363 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %362, i32 0, i32 1
  %364 = load float*, float** %363, align 8
  %365 = getelementptr inbounds float, float* %364, i64 1
  store float 9.700000e+01, float* %365, align 4
  %366 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %367 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %366, i32 0, i32 1
  %368 = load float*, float** %367, align 8
  %369 = getelementptr inbounds float, float* %368, i64 2
  store float 1.070000e+02, float* %369, align 4
  %370 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %371 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %370, i32 0, i32 1
  %372 = load float*, float** %371, align 8
  %373 = getelementptr inbounds float, float* %372, i64 3
  store float 1.010000e+02, float* %373, align 4
  %374 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %375 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %374, i32 0, i32 1
  %376 = load float*, float** %375, align 8
  %377 = getelementptr inbounds float, float* %376, i64 4
  store float 1.090000e+02, float* %377, align 4
  %378 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %379 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %378, i32 0, i32 1
  %380 = load float*, float** %379, align 8
  %381 = getelementptr inbounds float, float* %380, i64 5
  store float 1.050000e+02, float* %381, align 4
  %382 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %383 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %382, i32 0, i32 1
  %384 = load float*, float** %383, align 8
  %385 = getelementptr inbounds float, float* %384, i64 6
  store float 1.000000e+02, float* %385, align 4
  %386 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %387 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %386, i32 0, i32 1
  %388 = load float*, float** %387, align 8
  %389 = getelementptr inbounds float, float* %388, i64 7
  store float 1.050000e+02, float* %389, align 4
  %390 = load i32, i32* %12, align 4
  %391 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %392 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %391, i32 0, i32 0
  store i32 %390, i32* %392, align 8
  %393 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %394 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %393, i32 0, i32 7
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %12, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %401 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %400, i32 0, i32 3
  store i32 %399, i32* %401, align 4
  %402 = load %struct.midi_info*, %struct.midi_info** %17, align 8
  %403 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %402, i32 0, i32 2
  store i32 1, i32* %403, align 8
  store i32 0, i32* %13, align 4
  br label %406

404:                                              ; preds = %341
  %405 = load i32, i32* @EINVAL, align 4
  store i32 %405, i32* %13, align 4
  br label %406

406:                                              ; preds = %404, %354
  %407 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %408 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %407, i32 0, i32 5
  %409 = call i32 @mtx_unlock(i32* %408)
  br label %467

410:                                              ; preds = %37
  %411 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %412 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %411, i32 0, i32 5
  %413 = call i32 @mtx_lock(i32* %412)
  %414 = load i32*, i32** %9, align 8
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %417 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %416, i32 0, i32 6
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @MIDIQ_SIZE(i32 %419)
  %421 = sub nsw i32 %420, 1
  %422 = call i32 @RANGE(i32 %415, i32 1, i32 %421)
  %423 = load i32*, i32** %9, align 8
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %426 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %425, i32 0, i32 3
  store i32 %424, i32* %426, align 4
  %427 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %428 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %427, i32 0, i32 5
  %429 = call i32 @mtx_unlock(i32* %428)
  %430 = load i32*, i32** %9, align 8
  %431 = load i32, i32* %430, align 4
  %432 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %431)
  %433 = call i32 (i32, ...) @SEQ_DEBUG(i32 3, i32 %432)
  store i32 0, i32* %13, align 4
  br label %467

434:                                              ; preds = %37
  %435 = load i32*, i32** %9, align 8
  %436 = load i32, i32* %435, align 4
  store i32 %436, i32* %14, align 4
  %437 = load i32, i32* %14, align 4
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %434
  store i32 0, i32* %14, align 4
  br label %440

440:                                              ; preds = %439, %434
  %441 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %442 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %441, i32 0, i32 5
  %443 = call i32 @mtx_lock(i32* %442)
  %444 = load i32, i32* @hz, align 4
  %445 = load i32, i32* %14, align 4
  %446 = mul nsw i32 %444, %445
  %447 = sdiv i32 %446, 10
  %448 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %449 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %448, i32 0, i32 4
  store i32 %447, i32* %449, align 8
  %450 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %451 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 8
  %453 = load i32*, i32** %9, align 8
  store i32 %452, i32* %453, align 4
  %454 = load %struct.seq_softc*, %struct.seq_softc** %15, align 8
  %455 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %454, i32 0, i32 5
  %456 = call i32 @mtx_unlock(i32* %455)
  %457 = load i32*, i32** %9, align 8
  %458 = load i32, i32* %457, align 4
  %459 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %458)
  %460 = call i32 (i32, ...) @SEQ_DEBUG(i32 3, i32 %459)
  store i32 0, i32* %13, align 4
  br label %467

461:                                              ; preds = %37, %37, %37
  br label %462

462:                                              ; preds = %37, %461
  %463 = load i32, i32* %8, align 4
  %464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %463)
  %465 = call i32 (i32, ...) @SEQ_DEBUG(i32 2, i32 %464)
  %466 = load i32, i32* @EINVAL, align 4
  store i32 %466, i32* %13, align 4
  br label %467

467:                                              ; preds = %462, %440, %410, %406, %337, %264, %221, %191, %176, %174, %163, %154, %145, %144, %136, %130, %125, %61, %47
  %468 = load i32, i32* %13, align 4
  store i32 %468, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %469

469:                                              ; preds = %467, %35
  %470 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %470)
  %471 = load i32, i32* %6, align 4
  ret i32 %471
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SEQ_DEBUG(i32, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @midi_cmdname(i32, i32) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @timer_now(%struct.seq_softc*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @seq_processevent(%struct.seq_softc*, i32*) #2

declare dso_local i32 @seq_sync(%struct.seq_softc*) #2

declare dso_local i32 @seq_reset(%struct.seq_softc*) #2

declare dso_local i32 @seq_convertold(i32*, i32*) #2

declare dso_local i32 @seq_fetch_mid(%struct.seq_softc*, i32, i32*) #2

declare dso_local i32 @bzero(%struct.synth_info*, i32) #2

declare dso_local i32 @RANGE(i32, i32, i32) #2

declare dso_local i32 @MIDIQ_SIZE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
