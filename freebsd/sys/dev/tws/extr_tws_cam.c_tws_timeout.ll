; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_request = type { i64, i64, %struct.tws_softc* }
%struct.tws_softc = type { i32, i32, i32 }

@TWS_REQ_RET_RESET = common dso_local global i64 0, align 8
@TWS_RESET = common dso_local global i64 0, align 8
@TWS_RESET_START = common dso_local global i32 0, align 4
@TWS_REQ_TYPE_SCSI_IO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"I/O Request timed out... Resetting controller\0A\00", align 1
@TWS_REQ_TYPE_PASSTHRU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"IOCTL Request timed out... Resetting controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Internal Request timed out... Resetting controller\0A\00", align 1
@TWS_RESET_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tws_request*, align 8
  %4 = alloca %struct.tws_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.tws_request*
  store %struct.tws_request* %6, %struct.tws_request** %3, align 8
  %7 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %8 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %7, i32 0, i32 2
  %9 = load %struct.tws_softc*, %struct.tws_softc** %8, align 8
  store %struct.tws_softc* %9, %struct.tws_softc** %4, align 8
  %10 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %11 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TWS_REQ_RET_RESET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %94

16:                                               ; preds = %1
  %17 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %18 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %17, i32 0, i32 1
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %21 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TWS_REQ_RET_RESET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %27 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %26, i32 0, i32 1
  %28 = call i32 @mtx_unlock(i32* %27)
  br label %94

29:                                               ; preds = %16
  %30 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %31 = call i64 @tws_get_state(%struct.tws_softc* %30)
  %32 = load i64, i64* @TWS_RESET, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %36 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %35, i32 0, i32 1
  %37 = call i32 @mtx_unlock(i32* %36)
  br label %94

38:                                               ; preds = %29
  %39 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %40 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @xpt_freeze_simq(i32 %41, i32 1)
  %43 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %44 = load i32, i32* @TWS_RESET_START, align 4
  %45 = call i32 @tws_send_event(%struct.tws_softc* %43, i32 %44)
  %46 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %47 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TWS_REQ_TYPE_SCSI_IO, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %53 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %73

56:                                               ; preds = %38
  %57 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %58 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TWS_REQ_TYPE_PASSTHRU, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %64 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %72

67:                                               ; preds = %56
  %68 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %69 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %75 = call i32 @tws_assert_soft_reset(%struct.tws_softc* %74)
  %76 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %77 = call i32 @tws_turn_off_interrupts(%struct.tws_softc* %76)
  %78 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %79 = bitcast %struct.tws_softc* %78 to i8*
  %80 = call i32 @tws_reset_cb(i8* %79)
  %81 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %82 = bitcast %struct.tws_softc* %81 to i8*
  %83 = call i32 @tws_reinit(i8* %82)
  %84 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %85 = load i32, i32* @TWS_RESET_COMPLETE, align 4
  %86 = call i32 @tws_send_event(%struct.tws_softc* %84, i32 %85)
  %87 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %88 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %87, i32 0, i32 1
  %89 = call i32 @mtx_unlock(i32* %88)
  %90 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %91 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @xpt_release_simq(i32 %92, i32 1)
  br label %94

94:                                               ; preds = %73, %34, %25, %15
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @tws_get_state(%struct.tws_softc*) #1

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
