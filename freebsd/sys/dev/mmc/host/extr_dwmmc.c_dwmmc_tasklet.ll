; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_tasklet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i64, i64, i64, i32, %struct.mmc_command* }
%struct.mmc_command = type { i64, i64, i64 }

@MMC_ERR_NONE = common dso_local global i64 0, align 8
@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@MMC_READ_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwmmc_softc*)* @dwmmc_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwmmc_tasklet(%struct.dwmmc_softc* %0) #0 {
  %2 = alloca %struct.dwmmc_softc*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %2, align 8
  %4 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %4, i32 0, i32 4
  %6 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  store %struct.mmc_command* %6, %struct.mmc_command** %3, align 8
  %7 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %8 = icmp eq %struct.mmc_command* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %71

10:                                               ; preds = %1
  %11 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %71

16:                                               ; preds = %10
  %17 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MMC_ERR_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %29 = call i32 @dwmmc_next_operation(%struct.dwmmc_softc* %28)
  br label %71

30:                                               ; preds = %22
  %31 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %30
  %36 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %37 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %35
  %41 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MMC_WRITE_MULTIPLE_BLOCK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %48 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MMC_READ_MULTIPLE_BLOCK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46, %40
  %53 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %54 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %59 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %64 = call i32 @dwmmc_next_operation(%struct.dwmmc_softc* %63)
  br label %65

65:                                               ; preds = %62, %57
  br label %69

66:                                               ; preds = %52, %46
  %67 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %68 = call i32 @dwmmc_next_operation(%struct.dwmmc_softc* %67)
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %35, %30
  br label %71

71:                                               ; preds = %9, %15, %70, %27
  ret void
}

declare dso_local i32 @dwmmc_next_operation(%struct.dwmmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
