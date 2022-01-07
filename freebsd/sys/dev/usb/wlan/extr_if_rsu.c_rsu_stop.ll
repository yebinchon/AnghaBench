; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32*, i32, i32, i32, i32, i64, i64, i64 }

@taskqueue_thread = common dso_local global i32 0, align 4
@RSU_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsu_softc*)* @rsu_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_stop(%struct.rsu_softc* %0) #0 {
  %2 = alloca %struct.rsu_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rsu_softc* %0, %struct.rsu_softc** %2, align 8
  %4 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %5 = call i32 @RSU_LOCK(%struct.rsu_softc* %4)
  %6 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %12 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %11)
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %15 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %19 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @taskqueue_thread, align 4
  %21 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %21, i32 0, i32 4
  %23 = call i32 @taskqueue_cancel_timeout(i32 %20, i32* %22, i32* null)
  %24 = load i32, i32* @taskqueue_thread, align 4
  %25 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %26 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %25, i32 0, i32 3
  %27 = call i32 @taskqueue_cancel(i32 %24, i32* %26, i32* null)
  %28 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %29 = call i32 @rsu_power_off(%struct.rsu_softc* %28)
  %30 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %31 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %35 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memset(i32 %36, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %51, %13
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @RSU_N_TRANSFER, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %44 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usbd_transfer_stop(i32 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %38

54:                                               ; preds = %38
  %55 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %56 = call i32 @rsu_drain_mbufq(%struct.rsu_softc* %55)
  %57 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %58 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %57)
  br label %59

59:                                               ; preds = %54, %10
  ret void
}

declare dso_local i32 @RSU_LOCK(%struct.rsu_softc*) #1

declare dso_local i32 @RSU_UNLOCK(%struct.rsu_softc*) #1

declare dso_local i32 @taskqueue_cancel_timeout(i32, i32*, i32*) #1

declare dso_local i32 @taskqueue_cancel(i32, i32*, i32*) #1

declare dso_local i32 @rsu_power_off(%struct.rsu_softc*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

declare dso_local i32 @rsu_drain_mbufq(%struct.rsu_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
