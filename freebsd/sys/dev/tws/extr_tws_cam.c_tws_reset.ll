; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32, i32 }

@TWS_RESET = common dso_local global i64 0, align 8
@TWS_RESET_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Resetting controller\0A\00", align 1
@TWS_RESET_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tws_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tws_softc*
  store %struct.tws_softc* %5, %struct.tws_softc** %3, align 8
  %6 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %7 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %6, i32 0, i32 1
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %10 = call i64 @tws_get_state(%struct.tws_softc* %9)
  %11 = load i64, i64* @TWS_RESET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %15 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %14, i32 0, i32 1
  %16 = call i32 @mtx_unlock(i32* %15)
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xpt_freeze_simq(i32 %20, i32 1)
  %22 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %23 = load i32, i32* @TWS_RESET_START, align 4
  %24 = call i32 @tws_send_event(%struct.tws_softc* %22, i32 %23)
  %25 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %26 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %30 = call i32 @tws_assert_soft_reset(%struct.tws_softc* %29)
  %31 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %32 = call i32 @tws_turn_off_interrupts(%struct.tws_softc* %31)
  %33 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %34 = bitcast %struct.tws_softc* %33 to i8*
  %35 = call i32 @tws_reset_cb(i8* %34)
  %36 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %37 = bitcast %struct.tws_softc* %36 to i8*
  %38 = call i32 @tws_reinit(i8* %37)
  %39 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %40 = load i32, i32* @TWS_RESET_COMPLETE, align 4
  %41 = call i32 @tws_send_event(%struct.tws_softc* %39, i32 %40)
  %42 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %43 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %42, i32 0, i32 1
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %46 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xpt_release_simq(i32 %47, i32 1)
  br label %49

49:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @tws_get_state(%struct.tws_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @tws_send_event(%struct.tws_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tws_assert_soft_reset(%struct.tws_softc*) #1

declare dso_local i32 @tws_turn_off_interrupts(%struct.tws_softc*) #1

declare dso_local i32 @tws_reset_cb(i8*) #1

declare dso_local i32 @tws_reinit(i8*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
