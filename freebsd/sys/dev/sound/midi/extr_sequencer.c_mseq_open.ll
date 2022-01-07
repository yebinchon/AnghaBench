; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_mseq_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_mseq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.seq_softc* }
%struct.seq_softc = type { i32, i32, i32, i32, i64, i32, i32, i32**, i32, i32, i32*, i32, i32 }
%struct.thread = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"seq_open: scp %p unit %d, flags 0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"seq_open: unit %d is busy.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SND_DEV_MUSIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"seq_open: no midi devices\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"seq_open: opened, mode %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"music\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sequencer\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Sequencer %d %p opened maxunits %d midi_number %d:\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"  midi %d %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mseq_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.seq_softc*, align 8
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.cdev*, %struct.cdev** %6, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load %struct.seq_softc*, %struct.seq_softc** %13, align 8
  store %struct.seq_softc* %14, %struct.seq_softc** %10, align 8
  %15 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %16 = icmp eq %struct.seq_softc* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %5, align 4
  br label %214

19:                                               ; preds = %4
  %20 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %21 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %22 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.seq_softc* %20, i32 %23, i32 %24)
  %26 = call i32 @SEQ_DEBUG(i32 3, i32 %25)
  %27 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %28 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %27, i32 0, i32 8
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %31 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %36 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %35, i32 0, i32 8
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %39 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = call i32 @SEQ_DEBUG(i32 2, i32 %41)
  %43 = load i32, i32* @EBUSY, align 4
  store i32 %43, i32* %5, align 4
  br label %214

44:                                               ; preds = %19
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %47 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.cdev*, %struct.cdev** %6, align 8
  %49 = call i64 @MIDIDEV(%struct.cdev* %48)
  %50 = load i64, i64* @SND_DEV_MUSIC, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %54 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %56 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %58 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %61 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %60, i32 0, i32 11
  %62 = call i32 @midimapper_open(i32 %59, i32* %61)
  %63 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %64 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %66 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %44
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 @SEQ_DEBUG(i32 2, i32 %70)
  br label %72

72:                                               ; preds = %69, %44
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %150, %72
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %76 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %153

79:                                               ; preds = %73
  %80 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %81 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %80, i32 0, i32 12
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %84 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32* @midimapper_fetch_synth(i32 %82, i32 %85, i32 %86)
  %88 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %89 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %88, i32 0, i32 7
  %90 = load i32**, i32*** %89, align 8
  %91 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %92 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32*, i32** %90, i64 %93
  store i32* %87, i32** %94, align 8
  %95 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %96 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %95, i32 0, i32 7
  %97 = load i32**, i32*** %96, align 8
  %98 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %99 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32*, i32** %97, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %149

104:                                              ; preds = %79
  %105 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %106 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %105, i32 0, i32 7
  %107 = load i32**, i32*** %106, align 8
  %108 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %109 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32*, i32** %107, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %114 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %115 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @SYNTH_OPEN(i32* %112, %struct.seq_softc* %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %104
  %120 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %121 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %120, i32 0, i32 7
  %122 = load i32**, i32*** %121, align 8
  %123 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %124 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32*, i32** %122, i64 %125
  store i32* null, i32** %126, align 8
  br label %148

127:                                              ; preds = %104
  %128 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %129 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %128, i32 0, i32 7
  %130 = load i32**, i32*** %129, align 8
  %131 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %132 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32*, i32** %130, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @SYNTH_QUERY(i32* %135)
  %137 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %138 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %137, i32 0, i32 10
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %141 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %136, i32* %143, align 4
  %144 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %145 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %127, %119
  br label %149

149:                                              ; preds = %148, %79
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %73

153:                                              ; preds = %73
  %154 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %155 = call i32 @timer_setvals(%struct.seq_softc* %154, i32 60, i32 100)
  %156 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %157 = call i32 @timer_start(%struct.seq_softc* %156)
  %158 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %159 = call i32 @timer_stop(%struct.seq_softc* %158)
  %160 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %161 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @MIDIQ_SIZE(i32 %162)
  %164 = sdiv i32 %163, 2
  %165 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %166 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 4
  %167 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %168 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %167, i32 0, i32 1
  store i32 1, i32* %168, align 4
  %169 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %170 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %169, i32 0, i32 8
  %171 = call i32 @mtx_unlock(i32* %170)
  %172 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %173 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %177)
  %179 = call i32 @SEQ_DEBUG(i32 2, i32 %178)
  %180 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %181 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %184 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %185 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %188 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %182, %struct.seq_softc* %183, i32 %186, i64 %189)
  %191 = call i32 @SEQ_DEBUG(i32 2, i32 %190)
  store i32 0, i32* %11, align 4
  br label %192

192:                                              ; preds = %210, %153
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %196 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp ult i64 %194, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %192
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %202 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %201, i32 0, i32 7
  %203 = load i32**, i32*** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %200, i32* %207)
  %209 = call i32 @SEQ_DEBUG(i32 3, i32 %208)
  br label %210

210:                                              ; preds = %199
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %11, align 4
  br label %192

213:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %213, %34, %17
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @MIDIDEV(%struct.cdev*) #1

declare dso_local i32 @midimapper_open(i32, i32*) #1

declare dso_local i32* @midimapper_fetch_synth(i32, i32, i32) #1

declare dso_local i64 @SYNTH_OPEN(i32*, %struct.seq_softc*, i32) #1

declare dso_local i32 @SYNTH_QUERY(i32*) #1

declare dso_local i32 @timer_setvals(%struct.seq_softc*, i32, i32) #1

declare dso_local i32 @timer_start(%struct.seq_softc*) #1

declare dso_local i32 @timer_stop(%struct.seq_softc*) #1

declare dso_local i32 @MIDIQ_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
