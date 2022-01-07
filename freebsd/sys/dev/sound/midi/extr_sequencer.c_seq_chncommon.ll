; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_chncommon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_chncommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*, i32, i32)*, i32, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"seq_chncommon: unit %d, dev %d, cmd %s, chn %d, p1 %d, w14 %d.\0A\00", align 1
@cmdtab_seqccmn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"seq_chncommon pgmchn chn %d pg %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"seq_chncommon ctlch chn %d pg %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"seq_chncommon event type %d not handled.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@QUEUEFULL = common dso_local global i32 0, align 4
@i = common dso_local global i64 0, align 8
@key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_softc*, %struct.TYPE_14__*, i32*)* @seq_chncommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_chncommon(%struct.seq_softc* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca %struct.seq_softc*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.seq_softc* %0, %struct.seq_softc** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 6
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %25 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @cmdtab_seqccmn, align 4
  %32 = call i8* @midi_cmdname(i32 %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i8* %32, i32 %33, i32 %34, i32 %35)
  %37 = call i32 @SEQ_DEBUG(i32 5, i32 %36)
  %38 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %39 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %38, i32 0, i32 1
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %74 [
    i32 129, label %42
    i32 130, label %51
    i32 128, label %62
  ]

42:                                               ; preds = %3
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = call i32 @SEQ_DEBUG(i32 4, i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @SYNTH_SETINSTR(%struct.TYPE_14__* %47, i32 %48, i32 %49)
  br label %80

51:                                               ; preds = %3
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  %56 = call i32 @SEQ_DEBUG(i32 4, i32 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @SYNTH_CONTROLLER(%struct.TYPE_14__* %57, i32 %58, i32 %59, i32 %60)
  br label %80

62:                                               ; preds = %3
  %63 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %64 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %73

68:                                               ; preds = %62
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @SYNTH_BENDER(%struct.TYPE_14__* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %67
  br label %80

74:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = call i32 @SEQ_DEBUG(i32 2, i32 %78)
  br label %80

80:                                               ; preds = %74, %73, %51, %42
  %81 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %82 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %81, i32 0, i32 1
  %83 = call i32 @mtx_lock(i32* %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i8* @midi_cmdname(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @SYNTH_SETINSTR(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @SYNTH_CONTROLLER(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @SYNTH_BENDER(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
