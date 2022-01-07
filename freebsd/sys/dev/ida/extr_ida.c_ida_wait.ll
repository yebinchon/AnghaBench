; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ida_softc.0*)* }
%struct.ida_softc.0 = type opaque
%struct.ida_qcb = type { i8* }

@dumping = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@IDA_INTERRUPTS = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"idacmd\00", align 1
@hz = common dso_local global i32 0, align 4
@QCB_TIMEDOUT = common dso_local global i8* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ida_softc*, %struct.ida_qcb*)* @ida_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ida_wait(%struct.ida_softc* %0, %struct.ida_qcb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ida_softc*, align 8
  %5 = alloca %struct.ida_qcb*, align 8
  %6 = alloca %struct.ida_qcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ida_softc* %0, %struct.ida_softc** %4, align 8
  store %struct.ida_qcb* %1, %struct.ida_qcb** %5, align 8
  store %struct.ida_qcb* null, %struct.ida_qcb** %6, align 8
  %9 = load i32, i32* @dumping, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.ida_softc*, %struct.ida_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %12, i32 0, i32 2
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @mtx_assert(i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.ida_softc*, %struct.ida_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IDA_INTERRUPTS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load %struct.ida_qcb*, %struct.ida_qcb** %5, align 8
  %25 = load %struct.ida_softc*, %struct.ida_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %25, i32 0, i32 2
  %27 = load i32, i32* @PRIBIO, align 4
  %28 = load i32, i32* @hz, align 4
  %29 = mul nsw i32 5, %28
  %30 = call i64 @mtx_sleep(%struct.ida_qcb* %24, i32* %26, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i8*, i8** @QCB_TIMEDOUT, align 8
  %34 = load %struct.ida_qcb*, %struct.ida_qcb** %5, align 8
  %35 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %73

38:                                               ; preds = %16
  br label %39

39:                                               ; preds = %68, %38
  store i32 500000, i32* %8, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load %struct.ida_softc*, %struct.ida_softc** %4, align 8
  %42 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ida_softc.0*)*, i32 (%struct.ida_softc.0*)** %43, align 8
  %45 = load %struct.ida_softc*, %struct.ida_softc** %4, align 8
  %46 = bitcast %struct.ida_softc* %45 to %struct.ida_softc.0*
  %47 = call i32 %44(%struct.ida_softc.0* %46)
  store i32 %47, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8*, i8** @QCB_TIMEDOUT, align 8
  %55 = load %struct.ida_qcb*, %struct.ida_qcb** %5, align 8
  %56 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %57, i32* %3, align 4
  br label %73

58:                                               ; preds = %49
  %59 = call i32 @DELAY(i32 10)
  br label %40

60:                                               ; preds = %40
  %61 = load %struct.ida_softc*, %struct.ida_softc** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, -4
  %64 = call %struct.ida_qcb* @idahwqcbptov(%struct.ida_softc* %61, i32 %63)
  store %struct.ida_qcb* %64, %struct.ida_qcb** %6, align 8
  %65 = load %struct.ida_qcb*, %struct.ida_qcb** %6, align 8
  %66 = load %struct.ida_qcb*, %struct.ida_qcb** %5, align 8
  %67 = icmp ne %struct.ida_qcb* %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %39

69:                                               ; preds = %60
  %70 = load %struct.ida_softc*, %struct.ida_softc** %4, align 8
  %71 = load %struct.ida_qcb*, %struct.ida_qcb** %5, align 8
  %72 = call i32 @ida_done(%struct.ida_softc* %70, %struct.ida_qcb* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %53, %37, %32
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @mtx_sleep(%struct.ida_qcb*, i32*, i32, i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local %struct.ida_qcb* @idahwqcbptov(%struct.ida_softc*, i32) #1

declare dso_local i32 @ida_done(%struct.ida_softc*, %struct.ida_qcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
