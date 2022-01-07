; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_mseq_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_mseq_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.seq_softc* }
%struct.seq_softc = type { i32, i64, i32, i32, i32, i32, i64* }
%struct.thread = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"seq_close: unit %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"seq_close: closed ret = %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mseq_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.seq_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.seq_softc*, %struct.seq_softc** %14, align 8
  store %struct.seq_softc* %15, %struct.seq_softc** %11, align 8
  %16 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %17 = icmp eq %struct.seq_softc* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %5, align 4
  br label %88

20:                                               ; preds = %4
  %21 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %22 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @SEQ_DEBUG(i32 2, i32 %24)
  %26 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %27 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %26, i32 0, i32 3
  %28 = call i32 @mtx_lock(i32* %27)
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %31 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %80

35:                                               ; preds = %20
  %36 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %37 = call i32 @seq_reset(%struct.seq_softc* %36)
  %38 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %39 = call i32 @seq_sync(%struct.seq_softc* %38)
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %65, %35
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %43 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %48 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %47, i32 0, i32 6
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %57 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %56, i32 0, i32 6
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @SYNTH_CLOSE(i64 %62)
  br label %64

64:                                               ; preds = %55, %46
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %40

68:                                               ; preds = %40
  %69 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %70 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %73 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @midimapper_close(i32 %71, i32 %74)
  %76 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %77 = call i32 @timer_stop(%struct.seq_softc* %76)
  %78 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %79 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %68, %34
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = call i32 @SEQ_DEBUG(i32 3, i32 %82)
  %84 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  %85 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %84, i32 0, i32 3
  %86 = call i32 @mtx_unlock(i32* %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %80, %18
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @seq_reset(%struct.seq_softc*) #1

declare dso_local i32 @seq_sync(%struct.seq_softc*) #1

declare dso_local i32 @SYNTH_CLOSE(i64) #1

declare dso_local i32 @midimapper_close(i32, i32) #1

declare dso_local i32 @timer_stop(%struct.seq_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
