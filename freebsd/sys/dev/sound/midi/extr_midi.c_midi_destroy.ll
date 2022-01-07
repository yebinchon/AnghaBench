; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi = type { %struct.snd_midi*, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@midistat_lock = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"midi_destroy\0A\00", align 1
@midi_devs = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@M_MIDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_midi*, i32)* @midi_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midi_destroy(%struct.snd_midi* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_midi*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_midi* %0, %struct.snd_midi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @SA_XLOCKED, align 4
  %6 = call i32 @sx_assert(i32* @midistat_lock, i32 %5)
  %7 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %8 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %7, i32 0, i32 1
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @MIDI_DEBUG(i32 3, i32 %11)
  %13 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %14 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %13, i32 0, i32 6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %18 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %17, i32 0, i32 1
  %19 = call i32 @mtx_unlock(i32* %18)
  %20 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %21 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %20, i32 0, i32 6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @destroy_dev(%struct.TYPE_2__* %22)
  %24 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %25 = load i32, i32* @link, align 4
  %26 = call i32 @TAILQ_REMOVE(i32* @midi_devs, %struct.snd_midi* %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %31 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %32 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @MPU_UNINIT(%struct.snd_midi* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %37 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.snd_midi* @MIDIQ_BUF(i32 %38)
  %40 = load i32, i32* @M_MIDI, align 4
  %41 = call i32 @free(%struct.snd_midi* %39, i32 %40)
  %42 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %43 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.snd_midi* @MIDIQ_BUF(i32 %44)
  %46 = load i32, i32* @M_MIDI, align 4
  %47 = call i32 @free(%struct.snd_midi* %45, i32 %46)
  %48 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %49 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %48, i32 0, i32 2
  %50 = call i32 @mtx_destroy(i32* %49)
  %51 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %52 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %51, i32 0, i32 1
  %53 = call i32 @mtx_destroy(i32* %52)
  %54 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %55 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %54, i32 0, i32 0
  %56 = load %struct.snd_midi*, %struct.snd_midi** %55, align 8
  %57 = load i32, i32* @M_MIDI, align 4
  %58 = call i32 @free(%struct.snd_midi* %56, i32 %57)
  %59 = load %struct.snd_midi*, %struct.snd_midi** %3, align 8
  %60 = load i32, i32* @M_MIDI, align 4
  %61 = call i32 @free(%struct.snd_midi* %59, i32 %60)
  ret i32 0
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @MIDI_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @destroy_dev(%struct.TYPE_2__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.snd_midi*, i32) #1

declare dso_local i32 @MPU_UNINIT(%struct.snd_midi*, i32) #1

declare dso_local i32 @free(%struct.snd_midi*, i32) #1

declare dso_local %struct.snd_midi* @MIDIQ_BUF(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
