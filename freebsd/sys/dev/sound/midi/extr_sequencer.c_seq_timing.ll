; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_timing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"seq_timing: unit %d, cmd %d, param %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Timer set tempo %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Timer set timerbase %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"seq_timing event type %d not handled.\0A\00", align 1
@SEQ_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_softc*, i32*)* @seq_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_timing(%struct.seq_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.seq_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.seq_softc* %0, %struct.seq_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 5
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 8
  %14 = add nsw i32 %9, %13
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 6
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 16
  %19 = add nsw i32 %14, %18
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 7
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 24
  %24 = add nsw i32 %19, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %26 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %31)
  %33 = call i32 @SEQ_DEBUG(i32 5, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %103 [
    i32 128, label %37
    i32 129, label %41
    i32 133, label %45
    i32 132, label %51
    i32 135, label %57
    i32 131, label %63
    i32 130, label %81
    i32 134, label %99
  ]

37:                                               ; preds = %2
  %38 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @timer_wait(%struct.seq_softc* %38, i32 %39, i32 0)
  br label %109

41:                                               ; preds = %2
  %42 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @timer_wait(%struct.seq_softc* %42, i32 %43, i32 1)
  br label %109

45:                                               ; preds = %2
  %46 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %47 = call i32 @timer_start(%struct.seq_softc* %46)
  %48 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %49 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %48, i32 0, i32 4
  %50 = call i32 @cv_broadcast(i32* %49)
  br label %109

51:                                               ; preds = %2
  %52 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %53 = call i32 @timer_stop(%struct.seq_softc* %52)
  %54 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %55 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %54, i32 0, i32 4
  %56 = call i32 @cv_broadcast(i32* %55)
  br label %109

57:                                               ; preds = %2
  %58 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %59 = call i32 @timer_continue(%struct.seq_softc* %58)
  %60 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %61 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %60, i32 0, i32 4
  %62 = call i32 @cv_broadcast(i32* %61)
  br label %109

63:                                               ; preds = %2
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 8, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %5, align 4
  %69 = icmp sgt i32 %68, 360
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 360, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = call i32 @SEQ_DEBUG(i32 4, i32 %73)
  %75 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %78 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @timer_setvals(%struct.seq_softc* %75, i32 %76, i32 %79)
  br label %109

81:                                               ; preds = %2
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i32, i32* %5, align 4
  %87 = icmp sgt i32 %86, 1000
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 1000, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load i32, i32* %5, align 4
  %91 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = call i32 @SEQ_DEBUG(i32 4, i32 %91)
  %93 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %94 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %95 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @timer_setvals(%struct.seq_softc* %93, i32 %96, i32 %97)
  br label %109

99:                                               ; preds = %2
  %100 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @seq_copytoinput(%struct.seq_softc* %100, i32* %101, i32 8)
  br label %109

103:                                              ; preds = %2
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = call i32 @SEQ_DEBUG(i32 2, i32 %107)
  store i32 1, i32* %6, align 4
  br label %109

109:                                              ; preds = %103, %99, %89, %71, %57, %51, %45, %41, %37
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @timer_wait(%struct.seq_softc*, i32, i32) #1

declare dso_local i32 @timer_start(%struct.seq_softc*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @timer_stop(%struct.seq_softc*) #1

declare dso_local i32 @timer_continue(%struct.seq_softc*) #1

declare dso_local i32 @timer_setvals(%struct.seq_softc*, i32, i32) #1

declare dso_local i32 @seq_copytoinput(%struct.seq_softc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
