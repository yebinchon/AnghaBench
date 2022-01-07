; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_start_taskqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_start_taskqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, %struct.vtnet_txq*, %struct.vtnet_rxq*, i32 }
%struct.vtnet_txq = type { i32, i32 }
%struct.vtnet_rxq = type { i32, i32 }

@PI_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s rxq %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to start rx taskq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s txq %d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to start tx taskq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*)* @vtnet_start_taskqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_start_taskqueues(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtnet_rxq*, align 8
  %5 = alloca %struct.vtnet_txq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  %8 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %66, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %14 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %11
  %18 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %19 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %18, i32 0, i32 2
  %20 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %20, i64 %22
  store %struct.vtnet_rxq* %23, %struct.vtnet_rxq** %4, align 8
  %24 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %25 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %24, i32 0, i32 1
  %26 = load i32, i32* @PI_NET, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_nameunit(i32 %27)
  %29 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %30 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @taskqueue_start_threads(i32* %25, i32 1, i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %17
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %4, align 8
  %38 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %17
  %42 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %43 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %42, i32 0, i32 1
  %44 = load %struct.vtnet_txq*, %struct.vtnet_txq** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %44, i64 %46
  store %struct.vtnet_txq* %47, %struct.vtnet_txq** %5, align 8
  %48 = load %struct.vtnet_txq*, %struct.vtnet_txq** %5, align 8
  %49 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %48, i32 0, i32 1
  %50 = load i32, i32* @PI_NET, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_get_nameunit(i32 %51)
  %53 = load %struct.vtnet_txq*, %struct.vtnet_txq** %5, align 8
  %54 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @taskqueue_start_threads(i32* %49, i32 1, i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %41
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.vtnet_txq*, %struct.vtnet_txq** %5, align 8
  %62 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %41
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %11

69:                                               ; preds = %11
  ret void
}

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
