; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman.c_qman_fqr_register_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman.c_qman_fqr_register_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_softc = type { i32 }

@qman_sc = common dso_local global %struct.qman_softc* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"could not setup QMan portal\0A\00", align 1
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_fqr_register_cb(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qman_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.qman_softc*, %struct.qman_softc** @qman_sc, align 8
  store %struct.qman_softc* %11, %struct.qman_softc** %8, align 8
  %12 = call i32 (...) @sched_pin()
  %13 = load %struct.qman_softc*, %struct.qman_softc** %8, align 8
  %14 = call i32* @qman_portal_setup(%struct.qman_softc* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.qman_softc*, %struct.qman_softc** %8, align 8
  %19 = getelementptr inbounds %struct.qman_softc, %struct.qman_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (...) @sched_unpin()
  %23 = load i32, i32* @E_NOT_SUPPORTED, align 4
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @QM_FQR_RegisterCB(i32* %25, i32* %26, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = call i32 (...) @sched_unpin()
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32* @qman_portal_setup(%struct.qman_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @QM_FQR_RegisterCB(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
