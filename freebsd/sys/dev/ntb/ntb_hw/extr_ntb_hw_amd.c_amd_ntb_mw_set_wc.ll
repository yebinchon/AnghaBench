; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_mw_set_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_mw_set_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { %struct.TYPE_2__*, %struct.amd_ntb_pci_bar_info* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.amd_ntb_pci_bar_info = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @amd_ntb_mw_set_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_mw_set_wc(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.amd_ntb_softc*, align 8
  %9 = alloca %struct.amd_ntb_pci_bar_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.amd_ntb_softc* @device_get_softc(i32 %11)
  store %struct.amd_ntb_softc* %12, %struct.amd_ntb_softc** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %8, align 8
  %18 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp uge i32 %16, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15, %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %62

25:                                               ; preds = %15
  %26 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %8, align 8
  %27 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %26, i32 0, i32 1
  %28 = load %struct.amd_ntb_pci_bar_info*, %struct.amd_ntb_pci_bar_info** %27, align 8
  %29 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %8, align 8
  %30 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.amd_ntb_pci_bar_info, %struct.amd_ntb_pci_bar_info* %28, i64 %36
  store %struct.amd_ntb_pci_bar_info* %37, %struct.amd_ntb_pci_bar_info** %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.amd_ntb_pci_bar_info*, %struct.amd_ntb_pci_bar_info** %9, align 8
  %40 = getelementptr inbounds %struct.amd_ntb_pci_bar_info, %struct.amd_ntb_pci_bar_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %62

44:                                               ; preds = %25
  %45 = load %struct.amd_ntb_pci_bar_info*, %struct.amd_ntb_pci_bar_info** %9, align 8
  %46 = getelementptr inbounds %struct.amd_ntb_pci_bar_info, %struct.amd_ntb_pci_bar_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.amd_ntb_pci_bar_info*, %struct.amd_ntb_pci_bar_info** %9, align 8
  %50 = getelementptr inbounds %struct.amd_ntb_pci_bar_info, %struct.amd_ntb_pci_bar_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @pmap_change_attr(i32 %48, i32 %51, i64 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.amd_ntb_pci_bar_info*, %struct.amd_ntb_pci_bar_info** %9, align 8
  %59 = getelementptr inbounds %struct.amd_ntb_pci_bar_info, %struct.amd_ntb_pci_bar_info* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %44
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %43, %23
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.amd_ntb_softc* @device_get_softc(i32) #1

declare dso_local i32 @pmap_change_attr(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
