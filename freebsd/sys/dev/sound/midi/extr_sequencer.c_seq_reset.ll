; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"seq_reset: unit %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_softc*)* @seq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_reset(%struct.seq_softc* %0) #0 {
  %2 = alloca %struct.seq_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.seq_softc* %0, %struct.seq_softc** %2, align 8
  %6 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %7 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %6, i32 0, i32 2
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %11 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @SEQ_DEBUG(i32 5, i32 %13)
  %15 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %16 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %15, i32 0, i32 9
  store i64 0, i64* %16, align 8
  %17 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %18 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %17, i32 0, i32 8
  %19 = call i32 @cv_broadcast(i32* %18)
  %20 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %21 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %20, i32 0, i32 7
  %22 = call i32 @cv_broadcast(i32* %21)
  %23 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %24 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %23, i32 0, i32 6
  %25 = call i32 @cv_broadcast(i32* %24)
  %26 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %27 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MIDIQ_CLEAR(i32 %28)
  %30 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %31 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MIDIQ_CLEAR(i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %73, %1
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %37 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %34
  %41 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %42 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %49 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %48, i32 0, i32 2
  %50 = call i32 @mtx_unlock(i32* %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @SYNTH_RESET(i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %66, %40
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 16
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @SYNTH_CONTROLLER(i32 %57, i32 %58, i32 123, i32 0)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @SYNTH_CONTROLLER(i32 %60, i32 %61, i32 121, i32 0)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @SYNTH_BENDER(i32 %63, i32 %64, i32 8192)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %71 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %70, i32 0, i32 2
  %72 = call i32 @mtx_lock(i32* %71)
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %34

76:                                               ; preds = %34
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @MIDIQ_CLEAR(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @SYNTH_RESET(i32) #1

declare dso_local i32 @SYNTH_CONTROLLER(i32, i32, i32, i32) #1

declare dso_local i32 @SYNTH_BENDER(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
