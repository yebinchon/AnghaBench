; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i32, i32 }

@PCI_CFG_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@IWM_FLAG_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iwm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.iwm_softc* @device_get_softc(i32 %6)
  store %struct.iwm_softc* %7, %struct.iwm_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PCI_CFG_RETRY_TIMEOUT, align 4
  %10 = call i32 @pci_write_config(i32 %8, i32 %9, i32 0, i32 1)
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %12 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.iwm_softc* @device_get_softc(i32 %17)
  %19 = call i32 @iwm_init_task(%struct.iwm_softc* %18)
  %20 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %21 = call i32 @IWM_LOCK(%struct.iwm_softc* %20)
  %22 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %23 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IWM_FLAG_SCANNING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load i32, i32* @IWM_FLAG_SCANNING, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %32 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %16
  %36 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %37 = call i32 @IWM_UNLOCK(%struct.iwm_softc* %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %42 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %41, i32 0, i32 1
  %43 = call i32 @ieee80211_resume_all(i32* %42)
  br label %44

44:                                               ; preds = %40, %35
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.iwm_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @iwm_init_task(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_LOCK(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_UNLOCK(%struct.iwm_softc*) #1

declare dso_local i32 @ieee80211_resume_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
