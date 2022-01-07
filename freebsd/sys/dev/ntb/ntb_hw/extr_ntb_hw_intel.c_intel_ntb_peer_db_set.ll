; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_peer_db_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_peer_db_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.ntb_pci_bar_info* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ntb_pci_bar_info = type { i32, i32 }

@NTB_SB01BASE_LOCKUP = common dso_local global i32 0, align 4
@XEON_NONLINK_DB_MSIX_BITS = common dso_local global i32 0, align 4
@NTB_SDOORBELL_LOCKUP = common dso_local global i32 0, align 4
@XEON_PDOORBELL_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @intel_ntb_peer_db_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ntb_peer_db_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_softc*, align 8
  %6 = alloca %struct.ntb_pci_bar_info*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ntb_softc* @device_get_softc(i32 %8)
  store %struct.ntb_softc* %9, %struct.ntb_softc** %5, align 8
  %10 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %11 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %12 = call i64 @HAS_FEATURE(%struct.ntb_softc* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %2
  %15 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %15, i32 0, i32 2
  %17 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %16, align 8
  store %struct.ntb_pci_bar_info* %17, %struct.ntb_pci_bar_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %54, %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @XEON_NONLINK_DB_MSIX_BITS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @intel_ntb_db_vector_mask(i32 %24, i32 %25)
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %22
  %30 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %6, align 8
  %31 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %6, align 8
  %34 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %45 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bus_space_write_4(i32 %32, i32 %35, i32 %43, i32 %51)
  br label %53

53:                                               ; preds = %29, %22
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %18

57:                                               ; preds = %18
  br label %76

58:                                               ; preds = %2
  %59 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %60 = load i32, i32* @NTB_SDOORBELL_LOCKUP, align 4
  %61 = call i64 @HAS_FEATURE(%struct.ntb_softc* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @XEON_PDOORBELL_OFFSET, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @intel_ntb_mw_write(i32 2, i32 %64, i32 %65)
  br label %76

67:                                               ; preds = %58
  %68 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %69 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %70 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @db_iowrite(%struct.ntb_softc* %68, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %63, %57
  ret void
}

declare dso_local %struct.ntb_softc* @device_get_softc(i32) #1

declare dso_local i64 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

declare dso_local i32 @intel_ntb_db_vector_mask(i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @intel_ntb_mw_write(i32, i32, i32) #1

declare dso_local i32 @db_iowrite(%struct.ntb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
