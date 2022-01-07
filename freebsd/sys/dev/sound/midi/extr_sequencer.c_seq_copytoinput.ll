; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_copytoinput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_copytoinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"seq_copytoinput: queue full\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seq_copytoinput(%struct.seq_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_softc* %0, %struct.seq_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %8 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %7, i32 0, i32 3
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %12 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @MIDIQ_AVAIL(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @SEQ_DEBUG(i32 2, i32 %18)
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %22 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @MIDIQ_ENQ(i32 %23, i32* %24, i32 %25)
  %27 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %28 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %27, i32 0, i32 1
  %29 = call i32 @selwakeup(i32* %28)
  %30 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %31 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %30, i32 0, i32 0
  %32 = call i32 @cv_broadcast(i32* %31)
  br label %33

33:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @MIDIQ_AVAIL(i32) #1

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @MIDIQ_ENQ(i32, i32*, i32) #1

declare dso_local i32 @selwakeup(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
