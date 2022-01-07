; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi = type { i32, i64, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@midistat_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midi_uninit(%struct.snd_midi* %0) #0 {
  %2 = alloca %struct.snd_midi*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_midi* %0, %struct.snd_midi** %2, align 8
  %4 = load i32, i32* @EBUSY, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @sx_xlock(i32* @midistat_lock)
  %6 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %7 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %6, i32 0, i32 0
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %10 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %1
  %14 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %15 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %20 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %54

24:                                               ; preds = %18, %13
  %25 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %26 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %31 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %30, i32 0, i32 2
  %32 = call i32 @wakeup(i64* %31)
  %33 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %34 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %37 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %42 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %41, i32 0, i32 1
  %43 = call i32 @wakeup(i64* %42)
  %44 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %45 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %49 = call i32 @midi_destroy(%struct.snd_midi* %48, i32 0)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %58

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.snd_midi*, %struct.snd_midi** %2, align 8
  %56 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %55, i32 0, i32 0
  %57 = call i32 @mtx_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %52
  %59 = call i32 @sx_xunlock(i32* @midistat_lock)
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @midi_destroy(%struct.snd_midi*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
