; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_rx_done_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_rx_done_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32, i32, i32, i32, i32, i32*, %struct.ifnet* }
%struct.ifnet = type { i32 }

@RT_DEBUG_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Rx done task\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Rx done task: scheduling again\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @rt_rx_done_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_rx_done_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.rt_softc*
  store %struct.rt_softc* %9, %struct.rt_softc** %5, align 8
  %10 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %11 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %10, i32 0, i32 6
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %6, align 8
  %13 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %14 = load i32, i32* @RT_DEBUG_RX, align 4
  %15 = call i32 @RT_DPRINTF(%struct.rt_softc* %13, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %73

23:                                               ; preds = %2
  %24 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %25 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %29 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %33 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %34 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %38 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @rt_rx_eof(%struct.rt_softc* %32, i32* %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %42 = call i32 @RT_SOFTC_LOCK(%struct.rt_softc* %41)
  %43 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %44 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %47 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %23
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51, %23
  %55 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %56 = load i32, i32* @RT_DEBUG_RX, align 4
  %57 = call i32 @RT_DPRINTF(%struct.rt_softc* %55, i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %59 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %62 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %61, i32 0, i32 2
  %63 = call i32 @taskqueue_enqueue(i32 %60, i32* %62)
  br label %70

64:                                               ; preds = %51
  %65 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %66 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %67 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rt_intr_enable(%struct.rt_softc* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %54
  %71 = load %struct.rt_softc*, %struct.rt_softc** %5, align 8
  %72 = call i32 @RT_SOFTC_UNLOCK(%struct.rt_softc* %71)
  br label %73

73:                                               ; preds = %70, %22
  ret void
}

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*) #1

declare dso_local i32 @rt_rx_eof(%struct.rt_softc*, i32*, i32) #1

declare dso_local i32 @RT_SOFTC_LOCK(%struct.rt_softc*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @rt_intr_enable(%struct.rt_softc*, i32) #1

declare dso_local i32 @RT_SOFTC_UNLOCK(%struct.rt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
