; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midisynth_writeraw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midisynth_writeraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.synth_midi = type { %struct.snd_midi* }

@.str = private unnamed_addr constant [20 x i8] c"midisynth_writeraw\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_TX = common dso_local global i32 0, align 4
@midi_dumpraw = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"midi dump: \00", align 1
@M_TXEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"midisynth_writeraw msleep\0A\00", align 1
@PCATCH = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"midi TX\00", align 1
@EINTR = common dso_local global i32 0, align 4
@MIDI_WSIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"midi_synth: resid %zu len %jd avail %jd\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midisynth_writeraw(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_midi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.synth_midi*
  %14 = getelementptr inbounds %struct.synth_midi, %struct.synth_midi* %13, i32 0, i32 0
  %15 = load %struct.snd_midi*, %struct.snd_midi** %14, align 8
  store %struct.snd_midi* %15, %struct.snd_midi** %8, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @MIDI_DEBUG(i32 4, i32 %16)
  store i32 0, i32* %9, align 4
  %18 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %19 = icmp eq %struct.snd_midi* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %4, align 4
  br label %199

22:                                               ; preds = %3
  %23 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %24 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %23, i32 0, i32 2
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %27 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %26, i32 0, i32 3
  %28 = call i32 @mtx_lock(i32* %27)
  %29 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %30 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @M_TX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  br label %190

36:                                               ; preds = %22
  %37 = load i64, i64* @midi_dumpraw, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %183, %41
  %43 = load i64, i64* %7, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %184

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %111, %45
  %47 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %48 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MIDIQ_AVAIL(i32 %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %112

52:                                               ; preds = %46
  %53 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %54 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @M_TXEN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @M_TXEN, align 4
  %61 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %62 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %66 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %67 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %70 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MPU_CALLBACK(%struct.snd_midi* %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %59, %52
  %74 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %75 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %74, i32 0, i32 2
  %76 = call i32 @mtx_unlock(i32* %75)
  %77 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %78 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %80 = call i32 @MIDI_DEBUG(i32 3, i32 %79)
  %81 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %82 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %81, i32 0, i32 1
  %83 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %84 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %83, i32 0, i32 3
  %85 = load i32, i32* @PCATCH, align 4
  %86 = load i32, i32* @PDROP, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @msleep(i32* %82, i32* %84, i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @EINTR, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  br label %197

93:                                               ; preds = %73
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %197

97:                                               ; preds = %93
  %98 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %99 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %98, i32 0, i32 2
  %100 = call i32 @mtx_lock(i32* %99)
  %101 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %102 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %101, i32 0, i32 3
  %103 = call i32 @mtx_lock(i32* %102)
  %104 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %105 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %107 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %97
  br label %190

111:                                              ; preds = %97
  br label %46

112:                                              ; preds = %46
  %113 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %114 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @MIDIQ_AVAIL(i32 %115)
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @MIN(i32 %116, i64 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i64, i64* @MIDI_WSIZE, align 8
  %121 = call i32 @MIN(i32 %119, i64 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %124 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @MIDIQ_LEN(i32 %125)
  %127 = trunc i64 %126 to i32
  %128 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %129 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @MIDIQ_AVAIL(i32 %130)
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %122, i32 %127, i32 %131)
  %133 = call i32 @MIDI_DEBUG(i32 5, i32 %132)
  %134 = load i64, i64* @midi_dumpraw, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %112
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %148, %136
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %137

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %112
  %153 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %154 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @MIDIQ_ENQ(i32 %155, i32* %156, i32 %157)
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %7, align 8
  %162 = sub i64 %161, %160
  store i64 %162, i64* %7, align 8
  %163 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %164 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @M_TXEN, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %183, label %169

169:                                              ; preds = %152
  %170 = load i32, i32* @M_TXEN, align 4
  %171 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %172 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %176 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %177 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %180 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @MPU_CALLBACK(%struct.snd_midi* %175, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %169, %152
  br label %42

184:                                              ; preds = %42
  %185 = load i64, i64* @midi_dumpraw, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %184
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %189, %110, %35
  %191 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %192 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %191, i32 0, i32 3
  %193 = call i32 @mtx_unlock(i32* %192)
  %194 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %195 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %194, i32 0, i32 2
  %196 = call i32 @mtx_unlock(i32* %195)
  br label %197

197:                                              ; preds = %190, %96, %92
  %198 = load i32, i32* %9, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %197, %20
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @MIDI_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @MIDIQ_AVAIL(i32) #1

declare dso_local i32 @MPU_CALLBACK(%struct.snd_midi*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i64 @MIDIQ_LEN(i32) #1

declare dso_local i32 @MIDIQ_ENQ(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
