; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_processevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_processevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i32 }

@EV_SEQ_LOCAL = common dso_local global i32 0, align 4
@EV_TIMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"seq_processevent not known %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"seq_processevent midi unit not found %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_softc*, i32*)* @seq_processevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_processevent(%struct.seq_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.seq_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.seq_softc* %0, %struct.seq_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EV_SEQ_LOCAL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @seq_local(%struct.seq_softc* %13, i32* %14)
  store i32 %15, i32* %5, align 4
  br label %99

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EV_TIMING, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @seq_timing(%struct.seq_softc* %23, i32* %24)
  store i32 %25, i32* %5, align 4
  br label %98

26:                                               ; preds = %16
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 130
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 131
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 129
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 128
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = call i32 @SEQ_DEBUG(i32 2, i32 %50)
  br label %97

52:                                               ; preds = %41, %36, %31, %26
  %53 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @seq_fetch_mid(%struct.seq_softc* %53, i32 %56, i32* %6)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = call i32 @SEQ_DEBUG(i32 2, i32 %63)
  br label %96

65:                                               ; preds = %52
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %95 [
    i32 130, label %69
    i32 131, label %74
    i32 129, label %79
    i32 128, label %84
  ]

69:                                               ; preds = %65
  %70 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @seq_chnvoice(%struct.seq_softc* %70, i32 %71, i32* %72)
  store i32 %73, i32* %5, align 4
  br label %95

74:                                               ; preds = %65
  %75 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @seq_chncommon(%struct.seq_softc* %75, i32 %76, i32* %77)
  store i32 %78, i32* %5, align 4
  br label %95

79:                                               ; preds = %65
  %80 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @seq_sysex(%struct.seq_softc* %80, i32 %81, i32* %82)
  store i32 %83, i32* %5, align 4
  br label %95

84:                                               ; preds = %65
  %85 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %86 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %85, i32 0, i32 0
  %87 = call i32 @mtx_unlock(i32* %86)
  %88 = load i32, i32* %6, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = call i32 @SYNTH_WRITERAW(i32 %88, i32* %90, i32 1)
  store i32 %91, i32* %5, align 4
  %92 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %93 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %92, i32 0, i32 0
  %94 = call i32 @mtx_lock(i32* %93)
  br label %95

95:                                               ; preds = %65, %84, %79, %74, %69
  br label %96

96:                                               ; preds = %95, %59
  br label %97

97:                                               ; preds = %96, %46
  br label %98

98:                                               ; preds = %97, %22
  br label %99

99:                                               ; preds = %98, %12
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @seq_local(%struct.seq_softc*, i32*) #1

declare dso_local i32 @seq_timing(%struct.seq_softc*, i32*) #1

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @seq_fetch_mid(%struct.seq_softc*, i32, i32*) #1

declare dso_local i32 @seq_chnvoice(%struct.seq_softc*, i32, i32*) #1

declare dso_local i32 @seq_chncommon(%struct.seq_softc*, i32, i32*) #1

declare dso_local i32 @seq_sysex(%struct.seq_softc*, i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @SYNTH_WRITERAW(i32, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
