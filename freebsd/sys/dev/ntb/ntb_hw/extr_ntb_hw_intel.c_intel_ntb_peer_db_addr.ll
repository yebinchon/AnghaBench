; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_peer_db_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_peer_db_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, %struct.TYPE_4__*, %struct.ntb_pci_bar_info*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.ntb_pci_bar_info = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"must be non-NULL\00", align 1
@NTB_SDOORBELL_LOCKUP = common dso_local global i32 0, align 4
@NTB_CONFIG_BAR = common dso_local global i64 0, align 8
@B2B_MW_DISABLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid b2b idx\00", align 1
@XEON_PDOORBELL_OFFSET = common dso_local global i64 0, align 8
@X86_BUS_SPACE_IO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"uh oh\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*)* @intel_ntb_peer_db_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_peer_db_addr(i32 %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ntb_softc*, align 8
  %8 = alloca %struct.ntb_pci_bar_info*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.ntb_softc* @device_get_softc(i32 %10)
  store %struct.ntb_softc* %11, %struct.ntb_softc** %7, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ntb_softc*, %struct.ntb_softc** %7, align 8
  %22 = load i32, i32* @NTB_SDOORBELL_LOCKUP, align 4
  %23 = call i32 @HAS_FEATURE(%struct.ntb_softc* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = load %struct.ntb_softc*, %struct.ntb_softc** %7, align 8
  %27 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %26, i32 0, i32 2
  %28 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %27, align 8
  %29 = load i64, i64* @NTB_CONFIG_BAR, align 8
  %30 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %28, i64 %29
  store %struct.ntb_pci_bar_info* %30, %struct.ntb_pci_bar_info** %8, align 8
  %31 = load %struct.ntb_softc*, %struct.ntb_softc** %7, align 8
  %32 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  br label %54

36:                                               ; preds = %17
  %37 = load %struct.ntb_softc*, %struct.ntb_softc** %7, align 8
  %38 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @B2B_MW_DISABLED, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.ntb_softc*, %struct.ntb_softc** %7, align 8
  %45 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %44, i32 0, i32 2
  %46 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %45, align 8
  %47 = load %struct.ntb_softc*, %struct.ntb_softc** %7, align 8
  %48 = load %struct.ntb_softc*, %struct.ntb_softc** %7, align 8
  %49 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @intel_ntb_mw_to_bar(%struct.ntb_softc* %47, i64 %50)
  %52 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %46, i64 %51
  store %struct.ntb_pci_bar_info* %52, %struct.ntb_pci_bar_info** %8, align 8
  %53 = load i64, i64* @XEON_PDOORBELL_OFFSET, align 8
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %36, %25
  %55 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %8, align 8
  %56 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @X86_BUS_SPACE_IO, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %8, align 8
  %63 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64*, i64** %5, align 8
  store i64 %66, i64* %67, align 8
  %68 = load %struct.ntb_softc*, %struct.ntb_softc** %7, align 8
  %69 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  ret i32 0
}

declare dso_local %struct.ntb_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

declare dso_local i64 @intel_ntb_mw_to_bar(%struct.ntb_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
