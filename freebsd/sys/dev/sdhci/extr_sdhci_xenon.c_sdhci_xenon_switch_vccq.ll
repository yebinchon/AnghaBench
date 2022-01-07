; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_switch_vccq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_switch_vccq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_xenon_softc = type { i32, i32* }
%struct.sdhci_slot = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cannot set vqmmc to %d<->%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sdhci_xenon_switch_vccq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_xenon_switch_vccq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_xenon_softc*, align 8
  %7 = alloca %struct.sdhci_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.sdhci_xenon_softc* @device_get_softc(i32 %10)
  store %struct.sdhci_xenon_softc* %11, %struct.sdhci_xenon_softc** %6, align 8
  %12 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %13 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %17, i32* %3, align 4
  br label %48

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.sdhci_slot* @device_get_ivars(i32 %19)
  store %struct.sdhci_slot* %20, %struct.sdhci_slot** %7, align 8
  %21 = load %struct.sdhci_slot*, %struct.sdhci_slot** %7, align 8
  %22 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %28 [
    i32 129, label %26
    i32 128, label %27
  ]

26:                                               ; preds = %18
  store i32 1800000, i32* %8, align 4
  br label %30

27:                                               ; preds = %18
  store i32 3300000, i32* %8, align 4
  br label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %48

30:                                               ; preds = %27, %26
  %31 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %32 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @regulator_set_voltage(i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %41 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %39, %28, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.sdhci_xenon_softc* @device_get_softc(i32) #1

declare dso_local %struct.sdhci_slot* @device_get_ivars(i32) #1

declare dso_local i32 @regulator_set_voltage(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
