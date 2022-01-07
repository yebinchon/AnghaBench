; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midistat_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midistat_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"midistat_close\0A\00", align 1
@midistat_lock = common dso_local global i32 0, align 4
@midistat_isopen = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@midistat_sbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @midistat_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midistat_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @MIDI_DEBUG(i32 1, i32 %10)
  %12 = call i32 @sx_xlock(i32* @midistat_lock)
  %13 = load i64, i64* @midistat_isopen, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = call i32 @sx_xunlock(i32* @midistat_lock)
  %17 = load i32, i32* @EBADF, align 4
  store i32 %17, i32* %5, align 4
  br label %21

18:                                               ; preds = %4
  %19 = call i32 @sbuf_delete(i32* @midistat_sbuf)
  store i64 0, i64* @midistat_isopen, align 8
  %20 = call i32 @sx_xunlock(i32* @midistat_lock)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @MIDI_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @sbuf_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
