; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_softc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ida_softc.0*)*, i32 (%struct.ida_softc.1*)* }
%struct.ida_softc.0 = type opaque
%struct.ida_softc.1 = type opaque
%struct.ida_qcb = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@QCB_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"ignoring completion %jx\0A\00", align 1
@CMD_REJECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ida_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ida_softc*, align 8
  %4 = alloca %struct.ida_qcb*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ida_softc*
  store %struct.ida_softc* %7, %struct.ida_softc** %3, align 8
  %8 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64 (%struct.ida_softc.0*)*, i64 (%struct.ida_softc.0*)** %13, align 8
  %15 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %16 = bitcast %struct.ida_softc* %15 to %struct.ida_softc.0*
  %17 = call i64 %14(%struct.ida_softc.0* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %20, i32 0, i32 0
  %22 = call i32 @mtx_unlock(i32* %21)
  br label %81

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %71, %46, %23
  %25 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32 (%struct.ida_softc.1*)*, i32 (%struct.ida_softc.1*)** %27, align 8
  %29 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %30 = bitcast %struct.ida_softc* %29 to %struct.ida_softc.1*
  %31 = call i32 %28(%struct.ida_softc.1* %30)
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %24
  %34 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, -4
  %37 = call %struct.ida_qcb* @idahwqcbptov(%struct.ida_softc* %34, i32 %36)
  store %struct.ida_qcb* %37, %struct.ida_qcb** %4, align 8
  %38 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %39 = icmp eq %struct.ida_qcb* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %42 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QCB_ACTIVE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40, %33
  %47 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %24

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 3
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %58 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load i64, i64* @CMD_REJECTED, align 8
  %66 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %67 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i64 %65, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %56, %52
  %72 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %73 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %74 = call i32 @ida_done(%struct.ida_softc* %72, %struct.ida_qcb* %73)
  br label %24

75:                                               ; preds = %24
  %76 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %77 = call i32 @ida_startio(%struct.ida_softc* %76)
  %78 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %78, i32 0, i32 0
  %80 = call i32 @mtx_unlock(i32* %79)
  br label %81

81:                                               ; preds = %75, %19
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.ida_qcb* @idahwqcbptov(%struct.ida_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ida_done(%struct.ida_softc*, %struct.ida_qcb*) #1

declare dso_local i32 @ida_startio(%struct.ida_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
