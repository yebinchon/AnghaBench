; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_sysex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_sysex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"seq_sysex: unit %d device %d\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_softc*, i32, i32*)* @seq_sysex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_sysex(%struct.seq_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_softc* %0, %struct.seq_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.seq_softc*, %struct.seq_softc** %5, align 8
  %11 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %10, i32 0, i32 1
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  %14 = load %struct.seq_softc*, %struct.seq_softc** %5, align 8
  %15 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = call i32 @SEQ_DEBUG(i32 5, i32 %20)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %38, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 255
  br label %33

33:                                               ; preds = %25, %22
  %34 = phi i1 [ false, %22 ], [ %32, %25 ]
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %22

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load %struct.seq_softc*, %struct.seq_softc** %5, align 8
  %46 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %45, i32 0, i32 1
  %47 = call i32 @mtx_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @SYNTH_SENDSYSEX(i32 %48, i32* %50, i32 %51)
  %53 = load i64, i64* @EAGAIN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load %struct.seq_softc*, %struct.seq_softc** %5, align 8
  %57 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %56, i32 0, i32 1
  %58 = call i32 @mtx_lock(i32* %57)
  store i32 1, i32* %4, align 4
  br label %64

59:                                               ; preds = %44
  %60 = load %struct.seq_softc*, %struct.seq_softc** %5, align 8
  %61 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %60, i32 0, i32 1
  %62 = call i32 @mtx_lock(i32* %61)
  br label %63

63:                                               ; preds = %59, %41
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @SYNTH_SENDSYSEX(i32, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
