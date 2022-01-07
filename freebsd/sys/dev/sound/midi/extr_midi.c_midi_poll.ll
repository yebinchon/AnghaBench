; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_midi* }
%struct.snd_midi = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.thread = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midi_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.snd_midi*, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.cdev*, %struct.cdev** %5, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.snd_midi*, %struct.snd_midi** %11, align 8
  store %struct.snd_midi* %12, %struct.snd_midi** %8, align 8
  %13 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %14 = icmp eq %struct.snd_midi* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

16:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %17 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %18 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %17, i32 0, i32 2
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %21 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %20, i32 0, i32 1
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @POLLIN, align 4
  %25 = load i32, i32* @POLLRDNORM, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %16
  %30 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %31 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MIDIQ_EMPTY(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @POLLIN, align 4
  %38 = load i32, i32* @POLLRDNORM, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %35, %29
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @POLLOUT, align 4
  %47 = load i32, i32* @POLLWRNORM, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %53 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @MIDIQ_AVAIL(i32 %54)
  %56 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %57 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @POLLOUT, align 4
  %63 = load i32, i32* @POLLWRNORM, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %60, %51
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @POLLIN, align 4
  %75 = load i32, i32* @POLLRDNORM, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.thread*, %struct.thread** %7, align 8
  %81 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %82 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %81, i32 0, i32 4
  %83 = call i32 @selrecord(%struct.thread* %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %72
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @POLLOUT, align 4
  %87 = load i32, i32* @POLLWRNORM, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.thread*, %struct.thread** %7, align 8
  %93 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %94 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %93, i32 0, i32 3
  %95 = call i32 @selrecord(%struct.thread* %92, i32* %94)
  br label %96

96:                                               ; preds = %91, %84
  br label %97

97:                                               ; preds = %96, %69
  %98 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %99 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %98, i32 0, i32 2
  %100 = call i32 @mtx_unlock(i32* %99)
  %101 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %102 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %101, i32 0, i32 1
  %103 = call i32 @mtx_unlock(i32* %102)
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %97, %15
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @MIDIQ_EMPTY(i32) #1

declare dso_local i64 @MIDIQ_AVAIL(i32) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
