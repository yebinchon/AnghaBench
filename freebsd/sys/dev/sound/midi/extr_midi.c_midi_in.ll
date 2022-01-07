; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi = type { i32, i32, i32, i64, i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"midi_in: m=%p size=%d\0A\00", align 1
@M_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"midi_in: len %jd avail %jd\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"midi_in: Discarding data qu\0A\00", align 1
@SIGIO = common dso_local global i32 0, align 4
@MIDI_ACK = common dso_local global i64 0, align 8
@MIDI_SYSEX_END = common dso_local global i64 0, align 8
@data = common dso_local global i64 0, align 8
@enq = common dso_local global i32 0, align 4
@i = common dso_local global i32 0, align 4
@sig = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midi_in(%struct.snd_midi* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_midi*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_midi* %0, %struct.snd_midi** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.snd_midi* %9, i32 %10)
  %12 = call i32 @MIDI_DEBUG(i32 5, i32 %11)
  %13 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %14 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @M_RX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %4, align 4
  br label %94

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %22 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %23 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %22, i32 0, i32 4
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %26 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @MIDIQ_LEN(i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %31 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MIDIQ_AVAIL(i32 %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %33)
  %35 = call i32 @MIDI_DEBUG(i32 6, i32 %34)
  %36 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %37 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @MIDIQ_AVAIL(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %21
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %45 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @MIDIQ_ENQ(i32 %46, i64* %47, i32 %48)
  br label %56

50:                                               ; preds = %21
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @MIDI_DEBUG(i32 4, i32 %51)
  %53 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %54 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %53, i32 0, i32 4
  %55 = call i32 @mtx_unlock(i32* %54)
  store i32 0, i32* %4, align 4
  br label %94

56:                                               ; preds = %42
  %57 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %58 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %63 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %62, i32 0, i32 7
  %64 = call i32 @wakeup(i64* %63)
  %65 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %66 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %65, i32 0, i32 7
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %69 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %68, i32 0, i32 6
  %70 = call i32 @selwakeup(i32* %69)
  %71 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %72 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %77 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @PROC_LOCK(i64 %78)
  %80 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %81 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @SIGIO, align 4
  %84 = call i32 @kern_psignal(i64 %82, i32 %83)
  %85 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %86 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @PROC_UNLOCK(i64 %87)
  br label %89

89:                                               ; preds = %75, %67
  %90 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %91 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %90, i32 0, i32 4
  %92 = call i32 @mtx_unlock(i32* %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %50, %19
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @MIDI_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @MIDIQ_LEN(i32) #1

declare dso_local i32 @MIDIQ_AVAIL(i32) #1

declare dso_local i32 @MIDIQ_ENQ(i32, i64*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @selwakeup(i32*) #1

declare dso_local i32 @PROC_LOCK(i64) #1

declare dso_local i32 @kern_psignal(i64, i32) #1

declare dso_local i32 @PROC_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
