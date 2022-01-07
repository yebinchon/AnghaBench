; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_driver_state_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_driver_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32 }

@BGE_MFW_ON_APE = common dso_local global i32 0, align 4
@BGE_APE_HOST_SEG_SIG = common dso_local global i32 0, align 4
@BGE_APE_HOST_SEG_SIG_MAGIC = common dso_local global i32 0, align 4
@BGE_APE_HOST_INIT_COUNT = common dso_local global i32 0, align 4
@BGE_APE_HOST_SEG_LEN = common dso_local global i32 0, align 4
@BGE_APE_HOST_SEG_LEN_MAGIC = common dso_local global i32 0, align 4
@BGE_APE_HOST_DRIVER_ID = common dso_local global i32 0, align 4
@BGE_APE_HOST_BEHAVIOR = common dso_local global i32 0, align 4
@BGE_APE_HOST_BEHAV_NO_PHYLOCK = common dso_local global i32 0, align 4
@BGE_APE_HOST_HEARTBEAT_INT_MS = common dso_local global i32 0, align 4
@BGE_APE_HOST_HEARTBEAT_INT_DISABLE = common dso_local global i32 0, align 4
@BGE_APE_HOST_DRVR_STATE = common dso_local global i32 0, align 4
@BGE_APE_HOST_DRVR_STATE_START = common dso_local global i32 0, align 4
@BGE_APE_EVENT_STATUS_STATE_START = common dso_local global i32 0, align 4
@BGE_APE_HOST_DRVR_STATE_UNLOAD = common dso_local global i32 0, align 4
@BGE_APE_EVENT_STATUS_STATE_UNLOAD = common dso_local global i32 0, align 4
@BGE_APE_EVENT_STATUS_STATE_SUSPEND = common dso_local global i32 0, align 4
@BGE_APE_EVENT_STATUS_DRIVER_EVNT = common dso_local global i32 0, align 4
@BGE_APE_EVENT_STATUS_STATE_CHNGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*, i32)* @bge_ape_driver_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_ape_driver_state_change(%struct.bge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BGE_MFW_ON_APE, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %70 [
    i32 129, label %16
    i32 130, label %62
    i32 128, label %68
  ]

16:                                               ; preds = %14
  %17 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %18 = load i32, i32* @BGE_APE_HOST_SEG_SIG, align 4
  %19 = call i32 @APE_READ_4(%struct.bge_softc* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BGE_APE_HOST_SEG_SIG_MAGIC, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %25 = load i32, i32* @BGE_APE_HOST_INIT_COUNT, align 4
  %26 = call i32 @APE_WRITE_4(%struct.bge_softc* %24, i32 %25, i32 0)
  br label %36

27:                                               ; preds = %16
  %28 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %29 = load i32, i32* @BGE_APE_HOST_INIT_COUNT, align 4
  %30 = call i32 @APE_READ_4(%struct.bge_softc* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %32 = load i32, i32* @BGE_APE_HOST_INIT_COUNT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = call i32 @APE_WRITE_4(%struct.bge_softc* %31, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %27, %23
  %37 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %38 = load i32, i32* @BGE_APE_HOST_SEG_SIG, align 4
  %39 = load i32, i32* @BGE_APE_HOST_SEG_SIG_MAGIC, align 4
  %40 = call i32 @APE_WRITE_4(%struct.bge_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %42 = load i32, i32* @BGE_APE_HOST_SEG_LEN, align 4
  %43 = load i32, i32* @BGE_APE_HOST_SEG_LEN_MAGIC, align 4
  %44 = call i32 @APE_WRITE_4(%struct.bge_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %46 = load i32, i32* @BGE_APE_HOST_DRIVER_ID, align 4
  %47 = call i32 @BGE_APE_HOST_DRIVER_ID_MAGIC(i32 1, i32 0)
  %48 = call i32 @APE_WRITE_4(%struct.bge_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %50 = load i32, i32* @BGE_APE_HOST_BEHAVIOR, align 4
  %51 = load i32, i32* @BGE_APE_HOST_BEHAV_NO_PHYLOCK, align 4
  %52 = call i32 @APE_WRITE_4(%struct.bge_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %54 = load i32, i32* @BGE_APE_HOST_HEARTBEAT_INT_MS, align 4
  %55 = load i32, i32* @BGE_APE_HOST_HEARTBEAT_INT_DISABLE, align 4
  %56 = call i32 @APE_WRITE_4(%struct.bge_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %58 = load i32, i32* @BGE_APE_HOST_DRVR_STATE, align 4
  %59 = load i32, i32* @BGE_APE_HOST_DRVR_STATE_START, align 4
  %60 = call i32 @APE_WRITE_4(%struct.bge_softc* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @BGE_APE_EVENT_STATUS_STATE_START, align 4
  store i32 %61, i32* %6, align 4
  br label %71

62:                                               ; preds = %14
  %63 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %64 = load i32, i32* @BGE_APE_HOST_DRVR_STATE, align 4
  %65 = load i32, i32* @BGE_APE_HOST_DRVR_STATE_UNLOAD, align 4
  %66 = call i32 @APE_WRITE_4(%struct.bge_softc* %63, i32 %64, i32 %65)
  %67 = load i32, i32* @BGE_APE_EVENT_STATUS_STATE_UNLOAD, align 4
  store i32 %67, i32* %6, align 4
  br label %71

68:                                               ; preds = %14
  %69 = load i32, i32* @BGE_APE_EVENT_STATUS_STATE_SUSPEND, align 4
  store i32 %69, i32* %6, align 4
  br label %71

70:                                               ; preds = %14
  br label %79

71:                                               ; preds = %68, %62, %36
  %72 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @BGE_APE_EVENT_STATUS_DRIVER_EVNT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @BGE_APE_EVENT_STATUS_STATE_CHNGE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @bge_ape_send_event(%struct.bge_softc* %72, i32 %77)
  br label %79

79:                                               ; preds = %71, %70, %13
  ret void
}

declare dso_local i32 @APE_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @APE_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @BGE_APE_HOST_DRIVER_ID_MAGIC(i32, i32) #1

declare dso_local i32 @bge_ape_send_event(%struct.bge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
