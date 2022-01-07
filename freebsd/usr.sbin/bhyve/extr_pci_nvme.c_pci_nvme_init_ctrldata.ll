; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_init_ctrldata.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_init_ctrldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_nvme_softc = type { %struct.nvme_controller_data }
%struct.nvme_controller_data = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"bhyve-NVMe\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@NVME_CTRLR_DATA_OACS_FORMAT_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_SQES_MAX_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_SQES_MIN_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_CQES_MAX_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_CQES_MIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_nvme_softc*)* @pci_nvme_init_ctrldata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_nvme_init_ctrldata(%struct.pci_nvme_softc* %0) #0 {
  %2 = alloca %struct.pci_nvme_softc*, align 8
  %3 = alloca %struct.nvme_controller_data*, align 8
  store %struct.pci_nvme_softc* %0, %struct.pci_nvme_softc** %2, align 8
  %4 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %2, align 8
  %5 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %4, i32 0, i32 0
  store %struct.nvme_controller_data* %5, %struct.nvme_controller_data** %3, align 8
  %6 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %6, i32 0, i32 0
  store i32 64349, i32* %7, align 8
  %8 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %10, i32 0, i32 20
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @cpywithpad(i8* %13, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8 signext 32)
  %15 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %15, i32 0, i32 19
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @cpywithpad(i8* %18, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8 signext 32)
  %20 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %20, i32 0, i32 2
  store i32 4, i32* %21, align 8
  %22 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 88, i32* %25, align 4
  %26 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %27 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 156, i32* %29, align 4
  %30 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 252, i32* %33, align 4
  %34 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %34, i32 0, i32 18
  store i64 0, i64* %35, align 8
  %36 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %37 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %36, i32 0, i32 4
  store i32 9, i32* %37, align 8
  %38 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %39 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %38, i32 0, i32 5
  store i32 66304, i32* %39, align 4
  %40 = load i32, i32* @NVME_CTRLR_DATA_OACS_FORMAT_SHIFT, align 4
  %41 = shl i32 1, %40
  %42 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %44, i32 0, i32 7
  store i32 2, i32* %45, align 4
  %46 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %47 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %46, i32 0, i32 8
  store i32 4, i32* %47, align 8
  %48 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %49 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %48, i32 0, i32 17
  store i64 0, i64* %49, align 8
  %50 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %51 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %50, i32 0, i32 16
  store i64 0, i64* %51, align 8
  %52 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %53 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %52, i32 0, i32 9
  store i32 1, i32* %53, align 4
  %54 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %55 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %54, i32 0, i32 10
  store i32 343, i32* %55, align 8
  %56 = load i32, i32* @NVME_CTRLR_DATA_SQES_MAX_SHIFT, align 4
  %57 = shl i32 6, %56
  %58 = load i32, i32* @NVME_CTRLR_DATA_SQES_MIN_SHIFT, align 4
  %59 = shl i32 6, %58
  %60 = or i32 %57, %59
  %61 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %62 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @NVME_CTRLR_DATA_CQES_MAX_SHIFT, align 4
  %64 = shl i32 4, %63
  %65 = load i32, i32* @NVME_CTRLR_DATA_CQES_MIN_SHIFT, align 4
  %66 = shl i32 4, %65
  %67 = or i32 %64, %66
  %68 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %69 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 8
  %70 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %71 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %70, i32 0, i32 13
  store i32 1, i32* %71, align 4
  %72 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %73 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %72, i32 0, i32 14
  store i32 3, i32* %73, align 8
  %74 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %3, align 8
  %75 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %74, i32 0, i32 15
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 10, i32* %78, align 4
  ret void
}

declare dso_local i32 @cpywithpad(i8*, i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
