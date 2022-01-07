; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_pci.c_bwn_pci_is_core_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_pci.c_bwn_pci_is_core_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_info = type { i32 }
%struct.bwn_pci_softc = type { i32 }

@BWN_QUIRK_WLAN_DUALCORE = common dso_local global i32 0, align 4
@BWN_QUIRK_ENET_HW_UNPOPULATED = common dso_local global i32 0, align 4
@BWN_QUIRK_USBH_UNPOPULATED = common dso_local global i32 0, align 4
@BWN_QUIRK_SOFTMODEM_UNPOPULATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.bhnd_core_info*)* @bwn_pci_is_core_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_pci_is_core_disabled(i32 %0, i32 %1, %struct.bhnd_core_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_core_info*, align 8
  %8 = alloca %struct.bwn_pci_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.bhnd_core_info* %2, %struct.bhnd_core_info** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.bwn_pci_softc* @device_get_softc(i32 %9)
  store %struct.bwn_pci_softc* %10, %struct.bwn_pci_softc** %8, align 8
  %11 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %7, align 8
  %12 = call i32 @bhnd_core_class(%struct.bhnd_core_info* %11)
  switch i32 %12, label %51 [
    i32 128, label %13
    i32 133, label %27
    i32 132, label %27
    i32 131, label %27
    i32 129, label %35
    i32 130, label %43
  ]

13:                                               ; preds = %3
  %14 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %7, align 8
  %15 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.bwn_pci_softc*, %struct.bwn_pci_softc** %8, align 8
  %20 = getelementptr inbounds %struct.bwn_pci_softc, %struct.bwn_pci_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BWN_QUIRK_WLAN_DUALCORE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %52

26:                                               ; preds = %18, %13
  store i32 0, i32* %4, align 4
  br label %52

27:                                               ; preds = %3, %3, %3
  %28 = load %struct.bwn_pci_softc*, %struct.bwn_pci_softc** %8, align 8
  %29 = getelementptr inbounds %struct.bwn_pci_softc, %struct.bwn_pci_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BWN_QUIRK_ENET_HW_UNPOPULATED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %52

35:                                               ; preds = %3
  %36 = load %struct.bwn_pci_softc*, %struct.bwn_pci_softc** %8, align 8
  %37 = getelementptr inbounds %struct.bwn_pci_softc, %struct.bwn_pci_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BWN_QUIRK_USBH_UNPOPULATED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %3
  %44 = load %struct.bwn_pci_softc*, %struct.bwn_pci_softc** %8, align 8
  %45 = getelementptr inbounds %struct.bwn_pci_softc, %struct.bwn_pci_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BWN_QUIRK_SOFTMODEM_UNPOPULATED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %43, %35, %27, %26, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.bwn_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bhnd_core_class(%struct.bhnd_core_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
