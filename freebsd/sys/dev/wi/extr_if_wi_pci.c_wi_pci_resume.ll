; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi_pci.c_wi_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi_pci.c_wi_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i64, %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@WI_BUS_PCI_NATIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wi_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wi_pci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.wi_softc*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.wi_softc* @device_get_softc(i32 %6)
  store %struct.wi_softc* %7, %struct.wi_softc** %4, align 8
  %8 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %9 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %8, i32 0, i32 1
  store %struct.ieee80211com* %9, %struct.ieee80211com** %5, align 8
  %10 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %11 = call i32 @WI_LOCK(%struct.wi_softc* %10)
  %12 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %13 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WI_BUS_PCI_NATIVE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %19 = call i32 @WI_UNLOCK(%struct.wi_softc* %18)
  store i32 0, i32* %2, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %27 = call i32 @wi_init(%struct.wi_softc* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.wi_softc*, %struct.wi_softc** %4, align 8
  %30 = call i32 @WI_UNLOCK(%struct.wi_softc* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.wi_softc* @device_get_softc(i32) #1

declare dso_local i32 @WI_LOCK(%struct.wi_softc*) #1

declare dso_local i32 @WI_UNLOCK(%struct.wi_softc*) #1

declare dso_local i32 @wi_init(%struct.wi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
