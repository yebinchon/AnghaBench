; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_timer_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_timer_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i64, i64, i32, i32, i32, i32, i32, %struct.timeval }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"Timer wait when timer isn't running\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"seq_timer error negative time %lds.%06lds\0A\00", align 1
@hz = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"seq_timer didn't timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_softc*, i32, i32)* @timer_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_wait(%struct.seq_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.seq_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.seq_softc* %0, %struct.seq_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %11

11:                                               ; preds = %29, %3
  %12 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %13 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @SEQ_DEBUG(i32 2, i32 %17)
  %19 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %20 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %19, i32 0, i32 6
  %21 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %22 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %21, i32 0, i32 5
  %23 = call i32 @cv_wait(i32* %20, i32* %22)
  %24 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %25 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %103

29:                                               ; preds = %16
  br label %11

30:                                               ; preds = %11
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 60
  %34 = mul i64 %33, 1000000
  %35 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %36 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %39 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %34, %42
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = udiv i64 %44, 1000000
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i64, i64* %10, align 8
  %48 = urem i64 %47, 1000000
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %30
  %53 = call i32 @getmicrotime(%struct.timeval* %7)
  %54 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %55 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %54, i32 0, i32 7
  %56 = call i32 @timevalsub(%struct.timeval* %7, %struct.timeval* %55)
  %57 = call i32 @timevalsub(%struct.timeval* %8, %struct.timeval* %7)
  br label %58

58:                                               ; preds = %52, %30
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %70)
  %72 = call i32 @SEQ_DEBUG(i32 3, i32 %71)
  br label %103

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = mul i64 %75, 1000000
  store i64 %76, i64* %10, align 8
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* @hz, align 8
  %82 = load i64, i64* %10, align 8
  %83 = mul i64 %82, %81
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = udiv i64 %84, 1000000
  store i64 %85, i64* %10, align 8
  %86 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %87 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %86, i32 0, i32 4
  store i32 1, i32* %87, align 8
  %88 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %89 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %88, i32 0, i32 6
  %90 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %91 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %90, i32 0, i32 5
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, 1
  %94 = call i32 @cv_timedwait(i32* %89, i32* %91, i64 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.seq_softc*, %struct.seq_softc** %4, align 8
  %96 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %95, i32 0, i32 4
  store i32 0, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @EWOULDBLOCK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %73
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %102 = call i32 @SEQ_DEBUG(i32 3, i32 %101)
  br label %103

103:                                              ; preds = %28, %66, %100, %73
  ret void
}

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @cv_timedwait(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
