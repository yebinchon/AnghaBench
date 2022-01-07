; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_mseq_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_mseq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.seq_softc* }
%struct.seq_softc = type { i32, i32, i32, i32, i32 }
%struct.uio = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mseq_read: unit %d, resid %zd.\0A\00", align 1
@FREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"mseq_read: unit %d is not for reading.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"midiread: uiomove cc=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"mseq_read: ret %d, resid %zd.\0A\00", align 1
@SEQ_RSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mseq_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.seq_softc*, align 8
  %11 = alloca [32 x i32], align 16
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cdev*, %struct.cdev** %5, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load %struct.seq_softc*, %struct.seq_softc** %13, align 8
  store %struct.seq_softc* %14, %struct.seq_softc** %10, align 8
  %15 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %16 = icmp eq %struct.seq_softc* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %4, align 4
  br label %128

19:                                               ; preds = %3
  %20 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %21 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.uio*, %struct.uio** %6, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = call i32 @SEQ_DEBUG(i32 7, i32 %26)
  %28 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %29 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %28, i32 0, i32 2
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %32 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FREAD, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %19
  %38 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %39 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = call i32 @SEQ_DEBUG(i32 2, i32 %41)
  %43 = load i32, i32* @EIO, align 4
  store i32 %43, i32* %8, align 4
  br label %117

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %115, %44
  %46 = load %struct.uio*, %struct.uio** %6, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %116

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %81, %50
  %52 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %53 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @MIDIQ_EMPTY(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %51
  %58 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %60 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @O_NONBLOCK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %117

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @O_NONBLOCK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %117

72:                                               ; preds = %66
  %73 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %74 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %73, i32 0, i32 4
  %75 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %76 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %75, i32 0, i32 2
  %77 = call i32 @cv_wait_sig(i32* %74, i32* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %117

81:                                               ; preds = %72
  br label %51

82:                                               ; preds = %51
  %83 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %84 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @MIDIQ_LEN(i32 %85)
  %87 = load %struct.uio*, %struct.uio** %6, align 8
  %88 = getelementptr inbounds %struct.uio, %struct.uio* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @MIN(i32 %86, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @MIN(i32 %91, i32 32)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = call i32 @SEQ_DEBUG(i32 8, i32 %94)
  %96 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %97 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @MIDIQ_DEQ(i32 %98, i32* %99, i32 %100)
  %102 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %103 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %102, i32 0, i32 2
  %104 = call i32 @mtx_unlock(i32* %103)
  %105 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.uio*, %struct.uio** %6, align 8
  %108 = call i32 @uiomove(i32* %105, i32 %106, %struct.uio* %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %110 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %109, i32 0, i32 2
  %111 = call i32 @mtx_lock(i32* %110)
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %82
  br label %117

115:                                              ; preds = %82
  br label %45

116:                                              ; preds = %45
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %114, %80, %71, %65, %37
  %118 = load %struct.seq_softc*, %struct.seq_softc** %10, align 8
  %119 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %118, i32 0, i32 2
  %120 = call i32 @mtx_unlock(i32* %119)
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.uio*, %struct.uio** %6, align 8
  %123 = getelementptr inbounds %struct.uio, %struct.uio* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %124)
  %126 = call i32 @SEQ_DEBUG(i32 6, i32 %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %117, %17
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @MIDIQ_EMPTY(i32) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MIDIQ_LEN(i32) #1

declare dso_local i32 @MIDIQ_DEQ(i32, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
