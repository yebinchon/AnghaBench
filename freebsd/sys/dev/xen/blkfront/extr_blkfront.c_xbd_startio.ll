; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_startio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_startio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i64, i64, i32, i32 }
%struct.xbd_command = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@XBD_STATE_CONNECTED = common dso_local global i64 0, align 8
@XBD_Q_READY = common dso_local global i32 0, align 4
@XBDCF_Q_FREEZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"xbd_queue_request returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbd_softc*)* @xbd_startio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_startio(%struct.xbd_softc* %0) #0 {
  %2 = alloca %struct.xbd_softc*, align 8
  %3 = alloca %struct.xbd_command*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xbd_softc* %0, %struct.xbd_softc** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %7 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %6, i32 0, i32 3
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %11 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XBD_STATE_CONNECTED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %71

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %62, %16
  %18 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %19 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %18, i32 0, i32 2
  %20 = call i32 @RING_FULL(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %65

23:                                               ; preds = %17
  %24 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %25 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %65

29:                                               ; preds = %23
  %30 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %31 = load i32, i32* @XBD_Q_READY, align 4
  %32 = call %struct.xbd_command* @xbd_dequeue_cm(%struct.xbd_softc* %30, i32 %31)
  store %struct.xbd_command* %32, %struct.xbd_command** %3, align 8
  %33 = load %struct.xbd_command*, %struct.xbd_command** %3, align 8
  %34 = icmp eq %struct.xbd_command* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %37 = call %struct.xbd_command* @xbd_bio_command(%struct.xbd_softc* %36)
  store %struct.xbd_command* %37, %struct.xbd_command** %3, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.xbd_command*, %struct.xbd_command** %3, align 8
  %40 = icmp eq %struct.xbd_command* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %65

42:                                               ; preds = %38
  %43 = load %struct.xbd_command*, %struct.xbd_command** %3, align 8
  %44 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @XBDCF_Q_FREEZE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %51 = load %struct.xbd_command*, %struct.xbd_command** %3, align 8
  %52 = load i32, i32* @XBDCF_Q_FREEZE, align 4
  %53 = call i32 @xbd_cm_freeze(%struct.xbd_softc* %50, %struct.xbd_command* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %56 = load %struct.xbd_command*, %struct.xbd_command** %3, align 8
  %57 = call i32 @xbd_queue_request(%struct.xbd_softc* %55, %struct.xbd_command* %56)
  store i32 %57, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %17

65:                                               ; preds = %59, %41, %28, %17
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %70 = call i32 @xbd_flush_requests(%struct.xbd_softc* %69)
  br label %71

71:                                               ; preds = %15, %68, %65
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @RING_FULL(i32*) #1

declare dso_local %struct.xbd_command* @xbd_dequeue_cm(%struct.xbd_softc*, i32) #1

declare dso_local %struct.xbd_command* @xbd_bio_command(%struct.xbd_softc*) #1

declare dso_local i32 @xbd_cm_freeze(%struct.xbd_softc*, %struct.xbd_command*, i32) #1

declare dso_local i32 @xbd_queue_request(%struct.xbd_softc*, %struct.xbd_command*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @xbd_flush_requests(%struct.xbd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
