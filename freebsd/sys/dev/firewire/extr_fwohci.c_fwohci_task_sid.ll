; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_task_sid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_task_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i32, i32, i32, i32, i32*, %struct.firewire_comm }
%struct.firewire_comm = type { i32 }

@OHCI_SID_CNT = common dso_local global i32 0, align 4
@OHCI_SID_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SID Error\0A\00", align 1
@OHCI_SID_CNT_MASK = common dso_local global i32 0, align 4
@OHCI_SIDSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid SID len = %d\0A\00", align 1
@M_FW = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @fwohci_task_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwohci_task_sid(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fwohci_softc*, align 8
  %6 = alloca %struct.firewire_comm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.fwohci_softc*
  store %struct.fwohci_softc* %11, %struct.fwohci_softc** %5, align 8
  %12 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %13 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %12, i32 0, i32 5
  store %struct.firewire_comm* %13, %struct.firewire_comm** %6, align 8
  %14 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %15 = load i32, i32* @OHCI_SID_CNT, align 4
  %16 = call i32 @OREAD(%struct.fwohci_softc* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @OHCI_SID_ERR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.firewire_comm*, %struct.firewire_comm** %6, align 8
  %23 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %106

26:                                               ; preds = %2
  %27 = load i32, i32* @OHCI_SID_CNT_MASK, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @OHCI_SIDSIZE, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %26
  %37 = load %struct.firewire_comm*, %struct.firewire_comm** %6, align 8
  %38 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %106

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @OHCI_SIDSIZE, align 4
  %46 = load i32, i32* @M_FW, align 4
  %47 = load i32, i32* @M_NOWAIT, align 4
  %48 = call i64 @malloc(i32 %45, i32 %46, i32 %47)
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %7, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.firewire_comm*, %struct.firewire_comm** %6, align 8
  %54 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %106

57:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %60, 4
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %65 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @FWOHCI_DMA_READ(i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %82 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %83 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %82, i32 0, i32 3
  %84 = call i32 @fwohci_txd(%struct.fwohci_softc* %81, i32* %83)
  %85 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %86 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %87 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %86, i32 0, i32 2
  %88 = call i32 @fwohci_txd(%struct.fwohci_softc* %85, i32* %87)
  %89 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %90 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %91 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %90, i32 0, i32 1
  %92 = call i32 @fwohci_arcv(%struct.fwohci_softc* %89, i32* %91, i32 -1)
  %93 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %94 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %95 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %94, i32 0, i32 0
  %96 = call i32 @fwohci_arcv(%struct.fwohci_softc* %93, i32* %95, i32 -1)
  %97 = load %struct.firewire_comm*, %struct.firewire_comm** %6, align 8
  %98 = call i32 @fw_drain_txq(%struct.firewire_comm* %97)
  %99 = load %struct.firewire_comm*, %struct.firewire_comm** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @fw_sidrcv(%struct.firewire_comm* %99, i32* %100, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* @M_FW, align 4
  %105 = call i32 @free(i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %80, %52, %36, %21
  ret void
}

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_READ(i32) #1

declare dso_local i32 @fwohci_txd(%struct.fwohci_softc*, i32*) #1

declare dso_local i32 @fwohci_arcv(%struct.fwohci_softc*, i32*, i32) #1

declare dso_local i32 @fw_drain_txq(%struct.firewire_comm*) #1

declare dso_local i32 @fw_sidrcv(%struct.firewire_comm*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
