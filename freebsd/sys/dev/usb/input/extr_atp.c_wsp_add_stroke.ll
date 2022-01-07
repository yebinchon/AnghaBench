; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_wsp_add_stroke.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_wsp_add_stroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_softc = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@ATP_STROKE_TOUCH = common dso_local global i32 0, align 4
@ATP_DOUBLE_TAP_DRAG = common dso_local global i32 0, align 4
@ATP_LLEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[%d,%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atp_softc*, %struct.TYPE_5__*)* @wsp_add_stroke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wsp_add_stroke(%struct.atp_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.atp_softc*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.atp_softc* %0, %struct.atp_softc** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %7 = call %struct.TYPE_6__* @atp_alloc_stroke(%struct.atp_softc* %6)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %52

11:                                               ; preds = %2
  %12 = load i32, i32* @ATP_STROKE_TOUCH, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = call i32 @microtime(i32* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %33 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %11
  %37 = load i32, i32* @ATP_DOUBLE_TAP_DRAG, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.atp_softc*, %struct.atp_softc** %3, align 8
  %40 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %11
  %44 = load i32, i32* @ATP_LLEVEL_INFO, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DPRINTFN(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %10
  ret void
}

declare dso_local %struct.TYPE_6__* @atp_alloc_stroke(%struct.atp_softc*) #1

declare dso_local i32 @microtime(i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
