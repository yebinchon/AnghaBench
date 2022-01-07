; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_next_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_next_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32, i32*, %struct.mmc_request*, i32, i64, i64, i64 }
%struct.mmc_request = type { i32 (%struct.mmc_request*)*, i32, i32 }

@SDMMC_STATUS = common dso_local global i32 0, align 4
@SDMMC_STATUS_DATA_BUSY = common dso_local global i32 0, align 4
@PENDING_CMD = common dso_local global i32 0, align 4
@PENDING_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwmmc_softc*)* @dwmmc_next_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwmmc_next_operation(%struct.dwmmc_softc* %0) #0 {
  %2 = alloca %struct.dwmmc_softc*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %2, align 8
  %4 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %4, i32 0, i32 2
  %6 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  store %struct.mmc_request* %6, %struct.mmc_request** %3, align 8
  %7 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %8 = icmp eq %struct.mmc_request* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %79

10:                                               ; preds = %1
  %11 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %24, %10
  %18 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %19 = load i32, i32* @SDMMC_STATUS, align 4
  %20 = call i32 @READ4(%struct.dwmmc_softc* %18, i32 %19)
  %21 = load i32, i32* @SDMMC_STATUS_DATA_BUSY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %17

25:                                               ; preds = %17
  %26 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %27 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PENDING_CMD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load i32, i32* @PENDING_CMD, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %36 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %40 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dwmmc_start_cmd(%struct.dwmmc_softc* %39, i32 %42)
  br label %79

44:                                               ; preds = %25
  %45 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %46 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PENDING_STOP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %53 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @PENDING_STOP, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %60 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %64 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %65 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dwmmc_start_cmd(%struct.dwmmc_softc* %63, i32 %66)
  br label %79

68:                                               ; preds = %51, %44
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %71 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %70, i32 0, i32 2
  store %struct.mmc_request* null, %struct.mmc_request** %71, align 8
  %72 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %73 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %75 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %74, i32 0, i32 0
  %76 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %75, align 8
  %77 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %78 = call i32 %76(%struct.mmc_request* %77)
  br label %79

79:                                               ; preds = %69, %56, %32, %9
  ret void
}

declare dso_local i32 @READ4(%struct.dwmmc_softc*, i32) #1

declare dso_local i32 @dwmmc_start_cmd(%struct.dwmmc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
