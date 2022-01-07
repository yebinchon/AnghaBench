; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi = type { i32, i64, i32, i64, i32, i64, i32, i32 }

@M_TXEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"midi_out: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"midi_out: used %d\0A\00", align 1
@SIGIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midi_out(%struct.snd_midi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_midi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_midi* %0, %struct.snd_midi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %10 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @M_TXEN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %113

16:                                               ; preds = %3
  %17 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.snd_midi* %17)
  %19 = call i32 @MIDI_DEBUG(i32 2, i32 %18)
  %20 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %21 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %20, i32 0, i32 2
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %25 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @MIDIQ_LEN(i32 %26)
  %28 = call i32 @MIN(i32 %23, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = call i32 @MIDI_DEBUG(i32 3, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %16
  %35 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %36 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @MIDIQ_DEQ(i32 %37, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %16
  %42 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %43 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @MIDIQ_EMPTY(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load i32, i32* @M_TXEN, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %51 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %55 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %56 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %59 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @MPU_CALLBACKP(%struct.snd_midi* %54, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %47, %41
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %62
  %66 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %67 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @MIDIQ_AVAIL(i32 %68)
  %70 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %71 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %108

74:                                               ; preds = %65
  %75 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %76 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %81 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %80, i32 0, i32 5
  %82 = call i32 @wakeup(i64* %81)
  %83 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %84 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %83, i32 0, i32 5
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %87 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %86, i32 0, i32 4
  %88 = call i32 @selwakeup(i32* %87)
  %89 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %90 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %85
  %94 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %95 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @PROC_LOCK(i64 %96)
  %98 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %99 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @SIGIO, align 4
  %102 = call i32 @kern_psignal(i64 %100, i32 %101)
  %103 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %104 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @PROC_UNLOCK(i64 %105)
  br label %107

107:                                              ; preds = %93, %85
  br label %108

108:                                              ; preds = %107, %65, %62
  %109 = load %struct.snd_midi*, %struct.snd_midi** %5, align 8
  %110 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %109, i32 0, i32 2
  %111 = call i32 @mtx_unlock(i32* %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %15
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @MIDI_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MIDIQ_LEN(i32) #1

declare dso_local i32 @MIDIQ_DEQ(i32, i32*, i32) #1

declare dso_local i64 @MIDIQ_EMPTY(i32) #1

declare dso_local i32 @MPU_CALLBACKP(%struct.snd_midi*, i32, i32) #1

declare dso_local i64 @MIDIQ_AVAIL(i32) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @selwakeup(i32*) #1

declare dso_local i32 @PROC_LOCK(i64) #1

declare dso_local i32 @kern_psignal(i64, i32) #1

declare dso_local i32 @PROC_UNLOCK(i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
