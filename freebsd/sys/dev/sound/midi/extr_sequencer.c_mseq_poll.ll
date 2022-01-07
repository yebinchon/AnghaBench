; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_mseq_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_mseq_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.seq_softc* }
%struct.seq_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"seq_poll: unit %d.\0A\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mseq_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.seq_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  %10 = load %struct.cdev*, %struct.cdev** %4, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.seq_softc*, %struct.seq_softc** %11, align 8
  store %struct.seq_softc* %12, %struct.seq_softc** %9, align 8
  %13 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %14 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @SEQ_DEBUG(i32 3, i32 %16)
  %18 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %19 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @SEQ_DEBUG(i32 1, i32 %21)
  %23 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %24 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %23, i32 0, i32 3
  %25 = call i32 @mtx_lock(i32* %24)
  store i32 0, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @POLLOUT, align 4
  %28 = load i32, i32* @POLLWRNORM, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %3
  %33 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %34 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %36 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %35, i32 0, i32 9
  %37 = call i32 @cv_broadcast(i32* %36)
  %38 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %39 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %38, i32 0, i32 8
  %40 = call i32 @cv_broadcast(i32* %39)
  %41 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %42 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %45 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MIDIQ_AVAIL(i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load %struct.thread*, %struct.thread** %6, align 8
  %52 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %53 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %52, i32 0, i32 6
  %54 = call i32 @selrecord(%struct.thread* %51, i32* %53)
  br label %63

55:                                               ; preds = %32
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @POLLOUT, align 4
  %58 = load i32, i32* @POLLWRNORM, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %55, %50
  br label %64

64:                                               ; preds = %63, %3
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @POLLIN, align 4
  %67 = load i32, i32* @POLLRDNORM, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %64
  store i32 1, i32* %8, align 4
  %72 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %73 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MIDIQ_LEN(i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.thread*, %struct.thread** %6, align 8
  %80 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %81 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %80, i32 0, i32 4
  %82 = call i32 @selrecord(%struct.thread* %79, i32* %81)
  br label %91

83:                                               ; preds = %71
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @POLLIN, align 4
  %86 = load i32, i32* @POLLRDNORM, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %83, %78
  br label %92

92:                                               ; preds = %91, %64
  %93 = load %struct.seq_softc*, %struct.seq_softc** %9, align 8
  %94 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %93, i32 0, i32 3
  %95 = call i32 @mtx_unlock(i32* %94)
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @MIDIQ_AVAIL(i32) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @MIDIQ_LEN(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
