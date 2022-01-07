; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_cmd_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, i8** }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@SDMMC_RESP0 = common dso_local global i32 0, align 4
@SDMMC_RESP1 = common dso_local global i32 0, align 4
@SDMMC_RESP2 = common dso_local global i32 0, align 4
@SDMMC_RESP3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwmmc_softc*)* @dwmmc_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwmmc_cmd_done(%struct.dwmmc_softc* %0) #0 {
  %2 = alloca %struct.dwmmc_softc*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %2, align 8
  %4 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %4, i32 0, i32 0
  %6 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  store %struct.mmc_command* %6, %struct.mmc_command** %3, align 8
  %7 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %8 = icmp eq %struct.mmc_command* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %74

10:                                               ; preds = %1
  %11 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %10
  %18 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MMC_RSP_136, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %17
  %25 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %26 = load i32, i32* @SDMMC_RESP0, align 4
  %27 = call i8* @READ4(%struct.dwmmc_softc* %25, i32 %26)
  %28 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  store i8* %27, i8** %31, align 8
  %32 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %33 = load i32, i32* @SDMMC_RESP1, align 4
  %34 = call i8* @READ4(%struct.dwmmc_softc* %32, i32 %33)
  %35 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  store i8* %34, i8** %38, align 8
  %39 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %40 = load i32, i32* @SDMMC_RESP2, align 4
  %41 = call i8* @READ4(%struct.dwmmc_softc* %39, i32 %40)
  %42 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %41, i8** %45, align 8
  %46 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %47 = load i32, i32* @SDMMC_RESP3, align 4
  %48 = call i8* @READ4(%struct.dwmmc_softc* %46, i32 %47)
  %49 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %50 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %48, i8** %52, align 8
  br label %73

53:                                               ; preds = %17
  %54 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 3
  store i8* null, i8** %57, align 8
  %58 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  store i8* null, i8** %61, align 8
  %62 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %63 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  store i8* null, i8** %65, align 8
  %66 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %2, align 8
  %67 = load i32, i32* @SDMMC_RESP0, align 4
  %68 = call i8* @READ4(%struct.dwmmc_softc* %66, i32 %67)
  %69 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %70 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %68, i8** %72, align 8
  br label %73

73:                                               ; preds = %53, %24
  br label %74

74:                                               ; preds = %9, %73, %10
  ret void
}

declare dso_local i8* @READ4(%struct.dwmmc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
