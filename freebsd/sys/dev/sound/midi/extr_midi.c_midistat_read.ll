; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midistat_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midistat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"midistat_read\0A\00", align 1
@midistat_lock = common dso_local global i32 0, align 4
@midistat_isopen = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@midistat_sbuf = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @midistat_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midistat_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @MIDI_DEBUG(i32 4, i32 %10)
  %12 = call i32 @sx_xlock(i32* @midistat_lock)
  %13 = load i32, i32* @midistat_isopen, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = call i32 @sx_xunlock(i32* @midistat_lock)
  %17 = load i32, i32* @EBADF, align 4
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.uio*, %struct.uio** %6, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.uio*, %struct.uio** %6, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @sbuf_len(i32* @midistat_sbuf)
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %18
  %30 = call i32 @sx_xunlock(i32* @midistat_lock)
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  %33 = load %struct.uio*, %struct.uio** %6, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @sbuf_len(i32* @midistat_sbuf)
  %37 = load %struct.uio*, %struct.uio** %6, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = call i64 @lmin(i32 %35, i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = call i64 @sbuf_data(i32* @midistat_sbuf)
  %46 = load %struct.uio*, %struct.uio** %6, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.uio*, %struct.uio** %6, align 8
  %52 = call i32 @uiomove(i64 %49, i64 %50, %struct.uio* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %44, %32
  %54 = call i32 @sx_xunlock(i32* @midistat_lock)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %29, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @MIDI_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i64 @sbuf_len(i32*) #1

declare dso_local i64 @lmin(i32, i64) #1

declare dso_local i32 @uiomove(i64, i64, %struct.uio*) #1

declare dso_local i64 @sbuf_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
