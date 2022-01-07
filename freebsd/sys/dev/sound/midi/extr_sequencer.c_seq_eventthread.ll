; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_eventthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_eventthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@EV_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"seq_eventthread started\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"seq_eventthread finished\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @seq_eventthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_eventthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.seq_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.seq_softc*
  store %struct.seq_softc* %7, %struct.seq_softc** %3, align 8
  %8 = load i32, i32* @EV_SZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %13 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %12, i32 0, i32 3
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @SEQ_DEBUG(i32 2, i32 %15)
  br label %17

17:                                               ; preds = %90, %1
  %18 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %19 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %93

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %61, %22
  br label %24

24:                                               ; preds = %40, %23
  %25 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %26 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %31 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %30, i32 0, i32 9
  %32 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %33 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %32, i32 0, i32 3
  %34 = call i32 @cv_wait(i32* %31, i32* %33)
  %35 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %36 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %94

40:                                               ; preds = %29
  br label %24

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %68, %41
  %43 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %44 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @MIDIQ_EMPTY(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %50 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %49, i32 0, i32 8
  %51 = call i32 @cv_broadcast(i32* %50)
  %52 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %53 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %52, i32 0, i32 6
  %54 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %55 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %54, i32 0, i32 3
  %56 = call i32 @cv_wait(i32* %53, i32* %55)
  %57 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %58 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %23

62:                                               ; preds = %48
  %63 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %64 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %94

68:                                               ; preds = %62
  br label %42

69:                                               ; preds = %42
  %70 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %71 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @EV_SZ, align 4
  %74 = call i32 @MIDIQ_DEQ(i32 %72, i32* %11, i32 %73)
  %75 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %76 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @MIDIQ_AVAIL(i32 %77)
  %79 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %80 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %69
  %84 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %85 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %84, i32 0, i32 6
  %86 = call i32 @cv_broadcast(i32* %85)
  %87 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %88 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %87, i32 0, i32 5
  %89 = call i32 @selwakeup(i32* %88)
  br label %90

90:                                               ; preds = %83, %69
  %91 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %92 = call i32 @seq_processevent(%struct.seq_softc* %91, i32* %11)
  br label %17

93:                                               ; preds = %17
  br label %94

94:                                               ; preds = %93, %67, %39
  %95 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %96 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %95, i32 0, i32 4
  %97 = call i32 @cv_broadcast(i32* %96)
  %98 = load %struct.seq_softc*, %struct.seq_softc** %3, align 8
  %99 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %98, i32 0, i32 3
  %100 = call i32 @mtx_unlock(i32* %99)
  %101 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %102 = call i32 @SEQ_DEBUG(i32 2, i32 %101)
  %103 = call i32 @kproc_exit(i32 0)
  %104 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @SEQ_DEBUG(i32, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @cv_wait(i32*, i32*) #2

declare dso_local i64 @MIDIQ_EMPTY(i32) #2

declare dso_local i32 @cv_broadcast(i32*) #2

declare dso_local i32 @MIDIQ_DEQ(i32, i32*, i32) #2

declare dso_local i64 @MIDIQ_AVAIL(i32) #2

declare dso_local i32 @selwakeup(i32*) #2

declare dso_local i32 @seq_processevent(%struct.seq_softc*, i32*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @kproc_exit(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
